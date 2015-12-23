#GO TO LOCATIONS CIPAL
#alias go-csf-parent="cd /home/amr/Documents/dev/cipal/csf/csf-parent-osgi/"
#alias go-styx="cd /home/amr/Documents/dev/cipal/styx/trunk/styx-parent-osgi/"
#alias go-branch="cd /home/amr/Documents/dev/cipal/styx/branches/1.01.0.13/styx-parent-osgi/"
#alias go-common-parent="cd /home/amr/Documents/dev/cipal/cipalcommon3/cipal-common-parent/"
#alias go-felix="cd /home/amr/Documents/dev/cipal/felix/"
alias go-dev="cd /home/amr/dev/"
alias go-eten="cd /home/amr/dev/cipal/etend_ws/"
alias go-vatbook="cd /home/amr/dev/python/django/vatbook/"
alias go-sat="cd /home/amr/dev/groovy/grails/sat-grails/"

alias flow-create="git flow feature start $1"
alias flow-publish="git flow feature publish $1"
alias flow-finish="git flow feature finish $1"

alias ssh-it-acc="ssh -i ~/.ssh/key_gv_eTenderingTest01.pem ubuntu@54.194.154.245"
alias ssh-it-dev="ssh -i ~/.ssh/key_gv_et_dev.pem ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com"

alias deploy-etendering="sudo service tomcat7 stop && sudo rm -rf /var/lib/tomcat7/webapps/etendering* && 
                        cd /home/amr/Documents/dev/cipal/etend_ws/etendering/etendering-web && mvn clean install -Dmaven.test.skip=true  && 
                        sudo mv /home/amr/Documents/dev/cipal/etend_ws/etendering/etendering-web/target/etendering.war /var/lib/tomcat7/webapps/ && 
                        sudo service tomcat7 start"

#RUN MAVEN TASKS
#alias mvn-csf="go-csf-parent && mvn clean install -Dmaven.test.skip=true"
#alias mvn-styx="go-csf-parent && mvn clean install -Dbuild.type=styx"
#alias mvn-verify-styx="go-styx && mvn verify -Dbuild.type=styx -Dmaven.integration-test.skip=false"
#alias styx-build-notest="go-styx && mvn clean install -Dmaven.test.skip=true && cd styx-runner/ && mvn clean install pax:provision -Pstandalone"
#alias styx-build-branch="go-branch && mvn clean install -Dmaven.test.skip=true && cd styx-runner/ && mvn clean install pax:provision -Pstandalone"
#alias styx-build="go-styx && mvn clean install && cd styx-runner/ && mvn clean install pax:provision -Pstandalone"
#alias styx-drop="go-styx && cd styx-database && mvn sql:execute liquibase:dropAll && mvn clean install" 
#alias styx-deploy="go-felix && rm -f bundles/* && rm -rf felix/cache/runner/* && styx-drop && styx-build-notest && felix-start"
#alias styx-version="go-styx && mvn versions:set -DnewVersion=$1 -DgenerateBackupPoms=false"
#alias mvn-common="go-common-parent && mvn clean install -Dmaven.test.skip=true"

#FELIX TASKS
#alias felix-stop="go-felix && ./felix.sh stop"
#alias felix-start="go-felix && ./felix.sh start"
#alias felix-status="go-felix && ./felix.sh status"

#SUBVERSION TASKS
alias svn-status="svn status | grep -v .settings | grep -v .classpath | grep -v .project | grep -v target"
alias svn-switch-dev="go-styx && svn switch ^/branches/crab-from-file-dev/styx-parent-osgi"
alias svn-switch-trunk="go-styx && svn switch ^/trunk/styx-parent-osgi"

alias remove-old-kernels="sudo apt-get remove $(dpkg -l|egrep '^ii  linux-(im|he)'|awk '{print $2}'|grep -v `uname -r`)"
#alias proxy-up="export http_proxy=http://geapproxy01.vm.cipal.net:3128 && export https_proxy=http://geapproxy01.vm.cipal.net:3128"
#alias proxy-down="unset $http_proxy && unset $https_proxy"
alias curl-poc="curl --header \"content-type: text/xml\" -d @request.xml http://localhost:8080/addressbook"

alias suspend="dbus-send --system --print-reply --dest='org.freedesktop.login1' org/freedesktop/login1 org.freedesktop.login1.Manager.Suspend boolean:true"
alias hibernate="dbus-send --print-reply --system --dest='org.freedesktop.login1' org/freedesktop/login1 org.freedesktop.login1.Manager.Hibernate boolean:true"
alias shutdown="dbus-send --print-reply --system --dest='org.freedesktop.login1' org/freedesktop/login1 org.freedesktop.login1.Manager.PowerOff boolean:true"
alias reboot="dbus-send --print-reply --system --dest='org.freedesktop.login1' org/freedesktop/login1 org.freedesktop.login1.Manager.Reboot boolean:true"

alias ll="ls -lrt --color"
alias ...="cd ../../"
alias ..="cd ../"
