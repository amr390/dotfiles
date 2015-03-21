#GO TO LOCATIONS CIPAL
alias go-csf-parent="cd /home/amr/Documents/dev/cipal/csf/csf-parent-osgi/"
alias go-styx="cd /home/amr/Documents/dev/cipal/styx/trunk/styx-parent-osgi/"
alias go-common-parent="cd /home/amr/Documents/dev/cipal/cipalcommon3/cipal-common-parent/"
alias go-felix="cd /home/amr/Documents/dev/cipal/felix/"
alias go-dev="cd /home/amr/Documents/dev/"
alias go-vatbook="cd /home/amr/Documents/dev/python/django/vatbook/"
alias go-sat="cd /home/amr/Documents/dev/groovy/grails/sat-grails/"

#RUN MAVEN TASKS
#alias mvn-csf="go-csf-parent && mvn clean install -Dmaven.test.skip=true"
#alias mvn-styx="go-csf-parent && mvn clean install -Dbuild.type=styx"
alias mvn-verify-styx="go-styx && mvn verify -Dbuild.type=styx -Dmaven.integration-test.skip=false"
alias mvn-build-notest="go-styx && mvn clean install -Dmaven.test.skip=true && cd styx-runner/ && mvn clean install pax:provision -Pstandalone"
alias mvn-build="go-styx && mvn clean install && cd styx-runner/ && mvn clean install pax:provision -Pstandalone"
alias mvn-drop="go-styx && cd styx-database && mvn sql:execute liquibase:dropAll && mvn clean install" 
alias mvn-deploy="go-felix && rm -f bundles/* && rm -rf felix/cache/runner/* && mvn-drop && mvn-build-notest && felix-start"
alias mvn-version="mvn versions:set -DnewVersion=$1 -DgenerateBackupPoms=false"
#alias mvn-common="go-common-parent && mvn clean install -Dmaven.test.skip=true"

#FELIX TASKS
alias felix-stop="go-felix && ./felix.sh stop"
alias felix-start="go-felix && ./felix.sh start"
alias felix-status="go-felix && ./felix.sh start"

#SUBVERSION TASKS
alias svn-status="svn status | grep -v .settings | grep -v .classpath | grep -v .project | grep -v target"
alias svn-switch-dev="go-styx && svn switch ^/branches/crab-from-file-dev/styx-parent-osgi"
alias svn-switch-trunk="go-styx && svn switch ^/trunk/styx-parent-osgi"

alias remove-old-kernels="sudo apt-get remove $(dpkg -l|egrep '^ii  linux-(im|he)'|awk '{print $2}'|grep -v `uname -r`)"
