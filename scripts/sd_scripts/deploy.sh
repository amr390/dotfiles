#!/bin/bash

SERVICE="gunicorn"
PROFILE="production"
SAT_HOME=/home/sat/$ENV_NAME
SAT_CLI_HOME=$SAT_HOME/sat8485/static
STATIC_BUNDLE=/opt/$ENV_NAME/static/assets/bundles
VERBOSE=0
PULL=0

source /home/sat/.virtualenvs/sat/bin/activate


set_env() {
    if [ $1 == 'qa' ]; then
        SERVICE="gunicorn-qa"
        PROFILE="qa"
        SAT_HOME=/home/sat/sat8485-qa
        SAT_CLI_HOME=$SAT_HOME/sat8485/static
        STATIC_BUNDLE=/opt/sat8485-qa/static/assets/bundles
    elif [[ $1 == 'prod' ]]; then
        SERVICE="gunicorn"
        PROFILE="production"
        SAT_HOME=/home/sat/sat8485
        SAT_CLI_HOME=$SAT_HOME/sat8485/static
        STATIC_BUNDLE=/opt/sat8485/static/assets/bundles
    else 
        exit 1
    fi
    
    log "Setting environment \n [Service: $SERVICE, Profile: $PROFILE, project home: $SAT_HOME]"
}

show_help() {
cat << EOF
    Usage: ${0##*/} [-hvp] [-e qa|prod] 

    Packs the client application clening up previous files, moves client to
    the static root and then runs django migrate command and collect static

    -h         displays this help
    -v         shows more information
    -e         Chooses which app to deploy
    -p         Pull master latest changes
EOF
}

pull() {
    if [ $PULL -eq 1 ]; then
        git checkout .
        log "Moving to $SAT_HOME folder"
        cd $SAT_HOME
        log "Getting latest master changes"
        git checkout master
        git pull
    fi
}

client_install() {
    log "Preparing client side files (assets/bundle)"
    rm -f $STATIC_BUNDLE/*
    cd $SAT_CLI_HOME
    npm run build
    rm -f assets/bundles/*
    npm run webpack
    rsync -av assets/bundles/ $STATIC_BUNDLE
}

server_install() {
    log "Applying migrations."
    cd $SAT_HOME
    #./manage.py collectstatic --settings=sat8485.settings.$PROFILE --noinput
    ./manage.py migrate --settings=sat8485.settings.$PROFILE --noinput
}


log() {
    if [ $VERBOSE -eq 1 ]; then
        echo "$@"
    fi
}

if [ $# -lt 1 ]
then
    show_help; exit 0
fi

OPTIND=1
# Resetting OPTIND is necessary if getopts was used previously in the script.
# It is a good idea to make OPTIND local if you process options in a function.
while getopts hvpe: opt; do
    case $opt in
        h) show_help; exit 0
            ;;
        v) VERBOSE=$((verbose+1))
            ;;
        e) set_env $OPTARG
            ;;
        p) PULL=1
            ;;
        *) show_help >&2
            exit 1
            ;;
    esac
done
shift "$((OPTIND-1))" # Shift off the options and optiona --.

pull
client_install
server_install

log "sudo service gunicorn restart"
sudo service $SERVICE restart

exit 0;
