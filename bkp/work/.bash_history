git status 
git flow feature publish ET-2781
git status
git checkout feature/ET-2079
git pull
git checkout feature/ET-2781
git pull
git status
git add etendering-web/src/main/webapp/WEB-INF/views/award_procedure/awarding_process/awardingProcess.jsp
git commit -m "awarding with menu sliding"
git status
git checkout feature/ET-2079
git pull
git checkout ET-2781
git branch
git checkout feature/ET-2781
git pull
git checkout feature/ET-2079
git pull
git status
git revert etendering-web/src/main/webapp/resources/css/menus/side-menu.css
git stash
git status
git checkout feature/ET-2781
git stash apply
git status
git pull
git merge
git add .
git status
git commit -m "side menu transform"
git status
ll
cd ..
ll
vim common-ui/
cd common-ui/
git checkout develop
git pull
vim .
go-dev 
cd js/
ll
cd angularjs/
l
ll
git clone https://github.com/ThomasBurleson/angularjs-Quizzler.git
ll
cd angularjs-Quizzler/
ll
ll tools/
ll tools/webserver/
gnome-open tools/webserver/Configure\ NodeJS\ Server.jpg 
ll
ll build/
ll build/requirejs/
ll client/
ll client/assets/
l
vim
vim /etc/mysql/
sudo apt-get update && sudo apt-get dist-upgrade -y
sudo reboot
alias flow-finish
cd Apps/
ll
tar xf ~/Downloads/Software-sync/ideaIC-15.0.tar.gz 
ll
rm -f idea
ln -s idea-IC-143.381.42/
ln -s idea-IC-143.381.42/ idea
ll
idea/bin/idea.sh 
git status
cd ~/Documents/Cipal/etendering/
ll
mysql -u root -proot etendering_test < test_dump.sql 
pwd
mysql -u root -proot 
pwd
go-eten 
ll
cd etendering
ll
git status
git push 
go-dev 
cd cipal/etend_ws/etendering/
ll
git status
git checkout etendering-web/src/main/webapp/resources/css/menus/side-menu.css
git status
git add .
git commit -m "side menu collapsible"
cd ..
ll
cd common-ui/
ll
vim
alias mvn-version
cat ~/.bash_aliases 
mvn versions:set -DnewVersion=0.119-SNAPSHOT -DgenerateBackupPoms=false
git status
git add .
git commit -m "add side menu styles"
git status
mvn clean install
cd ..
cd etendering/etendering-web/
vim pom.cml
vim pom.xml
~/Documents/dev/scripts/mysql_speedup.sh 
cd /etc/init/
ll
cd -
cd /etc/init.d/
ll
vim mysql 
sudo ln -s ~/Documents/dev/scripts/mysql_speedup.sh mysql_speedup
vim ~/Documents/dev/scripts/mysql_speedup.sh 
cd -
mysql -u root -proot 
ll
cd ~/Documents/Cipal/etendering/tmp/
ll
cd ..
ll
mysql -u root -proot etendering_test < test_dump.sql 
git status
ll
go-eten 
ll
cd common-ui/
ll
vim pom.xml 
git status
git reset --soft HEAD~1
git status
git pull
git status
git config branch.autosetuprebase always
git config --list
git pull
cd ..
cd etendering/
git pull
git status
git rebase origin/develop
git stash
git rebase origin/develop
git push -f
git stash apply
cd ..
cd common-ui/
ll
git status
git checkout origin/master
git status
git checkout master
git status
mvn clean install
mvn install
git pull
git status
git stash
git pull
git stash apply
mvn install
mvn install -X
git status
git stash
mvn install
git apply stash
git stash apply
mvn install
mvn clean install
mvn install
git status
git add .
git status
git commit -m "side menus, organize custom less files imports within theme.less
"
git rm src/main/webapp/resources/css/etendering.css
git status
git commit -m "not required etendering.css"
git status
mvn install
git status
git push 
mvn jgitflow:release-start
mvn jgitflow:release-finish
cd ..
cd etendering/
ll
git status
git add .
git status
git add .
git status
git commit -m "remove test css, js fixes"
git status
git pull
git rebase origin/develop
git push 
git pull
git status
git add .
git commit -m "js fixes"
git status
git push 
git flow feature finish ET-2781
git pull
git rebase origin/develop
git status
git add .
git commit -m "fixes js"
git commit -a -m "fixes js"
git status
git rebase --continue
git status
git push
git push origin develop
git flow feature finish ET-2781
git status
git checkout develop
git pull
git status
git checkout feature/ET-2781
git status
git rebase --continue
git status
git rebase --abort
git status
git flow feature finish ET-2781
git status
git pull
git status
git push
git status
ll
cd etendering-
cd etendering-web/
mvn install
mysql -u root -proot
cd ~/Documents/Cipal/etendering/
ll
mysql -u root -proot etendering_test < test_dump.sql 
pwd
git status
go-eten 
cd etendering/
git status
git stash
git branch -a | grep 2717
git branch -a 
git status
git flow feature start feature/ET-2717
git status
git stash apply
git status
git commit -a -m "add new address without country"
git status
git checkout develop
git pull
git status
git checkout feature/feature/ET-2717
git status
git pull
cd ..
ll
cd common-ui/
mvn install
cd ..
cd etendering/
ll
cd etendering-web/
mvn install
cd ..
mvn install
git status
git checkout develop
git pull
mvn install
mysql -u root -proot
ll
cd ..
cd common-ui/
ll
git status
git add .
cd ..
cd etendering/
git status
git pull
mvn clean install
git status
git checkout feature/feature/ET-2717
git pull
git status
git add .
git status
git commit -m "update models"
git push -f
git status
git flow feature publish feature/ET-2717
git checkout develop
git pull
git checkout feature/ET-2717
git checkout feature/feature/ET-2717
git rebase develop
git status
git push -f
git status
sudo service mysql start
go-dev 
cd cipal/etend_ws/etendering
mvn clean install
git status
vim
go-eten 
sudo service mysql start
../../scripts/mysql_speedup.sh 
vim ../../scripts/mysql_speedup.sh 
../../scripts/mysql_speedup.sh 
cd etendering/
git status
git checkout develop
vim pom.xml 
git status
git stash
git flow feature start ET-2782
git stash apply
cd ..
cd common-ui/
l
ll
git status
git stash 
git checkout master
git pull
git status
git stash apply
git add .
git status
vim pom.xml
mvn install
git status
git add .
git status
git commit -m "fix side menu classes"
git push 
mvn jgitflow:release-start

git status
git push
git checkout develop
git checkout master
git push
cd ..
cd etendering/
ll
git status
git add .
git commit -m "Add fixes to abstract side menu handling to a single javascript"
git status
git flow feature publish ET-2782
vim pom.xml 
git status
git add .
git commit -m "increase ui version"
git push
branch -a | grep ET-2782
git branch -a | grep ET-2782
cd ..
cd common-ui/
ll
cd src/main/webapp/resources/less/
ll
git log menu.less
git diff ^934a1c610f9cc85270665d3dba0bc83fed6bc662
cd -
cd ../etendering/
git status
cd ..
cd common-ui/
git status
cd ~/.m2/repository/com/greenvalley/common-ui/0.119/
ll
mkdir tmp
cd tmp/
ll
pwd
cd ..
nautilus .
cd 
go-eten 
ll
cd common-ui/
ll
git status
ll
cd src/main/webapp/resources/css/
ll
git log
git status
git rm -r *.css
git rm ./*
ll
rm -rf *.css
git status
cd ..
ll
mvn install
cd /home/amr/.m2/repository/com/greenvalley/common-ui/0.119/common-ui-0.119.pom
cd /home/amr/.m2/repository/com/greenvalley/common-ui/0.119/
ll
cd tmp/
ll
cd ..
rm -rf tmp/
nautilus .
cd -
go-eten 
cd common-
cd common-ui/
ll
mvn jgitflow:release-start
git status
git checkout .
git status
mvn jgitflow:release-start
mvn jgitflow:release-finish
git status
git diff
git diff origin/develop
git push
git checkout master
git push
head 20 pom.xml
cd ../etendering/
vim pom.xml
cd ~/.m2/repository/com/greenvalley/common-ui/0.120/
ll
nautilus .
go-eten 
cd etendering/
git status
git commit -a -m "update version for ui"
git push
git status
git checkout develop
git pull
git checkout ET-2782
git status
git checkout feature/ET-2782
git rebase develop
git status
git push -f
git status
git flow feature finish
git checkout feature/feature/ET_2717
git status
git diff origin/develop
git push
git branch -a | grep 2717
git checkout feature/ET-2717
git checkout feature/feature/ET-2717
git rebase develop
git status
git push -f
git flow feature finish feature/ET-2717
git push
git status
git branch
sudo service mysql start
Documents/dev/scripts/mysql_speedup.sh 
cat Documents/dev/scripts/mysql_speedup.sh
go-eten 
ll
cd etendering/
cd etendering-
cd etendering-web/
ll
cd ..
git status
git add etendering-web/src/main/resources/i18n/messages_en.properties etendering-web/src/main/webapp/WEB-INF/views/award_procedure/awarding_process/awardingProcess.jsp etendering-web/src/main/webapp/WEB-INF/views/draft_specifications/correction_notification/correctionNotification.jsp
git status
git commit -m "fix mistakes from code review"
git status
git push
git pull
git status
git diff origin/develop
ll
git status
git push
cd /var/log/
cd .ssh/
ll /media/amr/Joeri/
mkdir tmp
cd tmp/
unzip /media/amr/Joeri/ssh-keys.zip 
ll
cp /media/amr/Joeri/ssh-keys.zip .
ll
cat ~/Documents/dev/scripts/mysql_speedup.sh 
sudo service mysql start
Documents/dev/scripts/mysql_speedup.sh 
cat ~/Documents/dev/scripts/mysql_speedup.sh 
go-eten 
cd etendering/
ll
git status
git stash
git flow feature start ET-2826
git pull
git stash apply
git status
git checkout feature/ET-2768
git status
git checkout feature/ET-2826
git status
git checkout etendering-web/src/main/java/com/greenvalley/etendering/web/controller/long_polling/ModificationPageHandler.java
git status
git checkout feature/ET-2768
git diff origin/develop
sudo apt-get update && sudo apt-get dist-upgrade -y
sudo apt-get install mysql-workbench
sudo reboot
ll
git status
git commit -a -m "remove comments"
git push
git commit -a -m "remove comments" && git push
git checkout feature/ET-2768
git pull
git status
git reset etendering-web/src/main/webapp/WEB-INF/views/common/procurementNameAndStatus.jsp
git status
git checkout .
git status
git checkout develop
git pull
git flow feature create ET-2826
git flow feature start ET-2826
git checkout ET-2826
git checkout feature/ET-2826
git pull
git branch --set-upstream-to=origin/feature/ET-2826 feature/ET-2826
git branch --set-upstream-to=origin feature/ET-2826
git pull
git status
git checkout .
git status
git reset .
git status
git checkout .
git status
git merge --abort
git status
git log
git status
git pull -force
git pull --force
git status
git reset .
git checkout .
git status
git branch -a | grep ET-2826
git branc -d feature/ET-2826
git branch -d feature/ET-2826
git checkout develop
git branch -d feature/ET-2826
git branch -D feature/ET-2826
git pull
git checkout feature/ET-2768
gie checkout -b feature/ET-2826 feature/ET-2768
git checkout -b feature/ET-2826 feature/ET-2768
git status
git pull
git push feature/ET-2826
git push
git push --set-upstream origin feature/ET-2826
git checkout develop
git flow feature start ET-2817
git status
git branc -d feature/ET-2768
git branch -d feature/ET-2768
git push origin :feature/ET-2768
LL
ll
ll ..
rm -f ../ModificationPageHandler.java 
ll
mvn clean install
git push
git push --set-upstream origin feature/ET-2817
git status
git add .
git commit -m "ET-2817 replace text in liquibase csv RFQ doc section 5.8"
git push
git commit -m "ET-2816 replace text in liquibase csv RFQ doc section 5.7"
git commit -a -m "ET-2816 replace text in liquibase csv RFQ doc section 5.7"
git push
git commit -a -m "ET-2799 replace text in liquibase csv RFQ doc section 2.7"
git push
git commit -a -m "ET-2806 replace section 3.5 fixed text "
git push
git commit -a -m "ET-2812 replace section 4.7 fixed text "
git push
git commit -a -m "ET-2819 replace section 6.8 fixed text "
git push
git commit -a -m "ET-2813 replace section 4.9 fixed text "
git push
cd ~/Documents/dev/
ll
cd groovy/
cd grails/
ll
mkdir playground
cd playground/
mkdir plugins
cd plugins
grails create-plugin manning-core
ll
cd manning-core
ll
grails --version
cd /opt/
ll
sudo rm -f grails
sudo ln -s grails-2.4.4 grails
cd -
cd ..
grails --version
grails create-plugin core-vb
cd core-vb/
ll
cd grails-app/
ll
ll views/
ll conf/
ll
go-eten 
cd etendering/
git status
git commit -a -m "ModificationPageHandler refactor"
git status
git checkout develop
cp etendering-web/src/main/java/com/greenvalley/etendering/web/controller/long_polling/ModificationPageHandler.java ..
git checkout feature/ET-2768
sudo service mysql start
~/Documents/dev/scripts/mysql_speedup.sh 
git status
git add .
git status
git commit -m "Refactor in ModificationPage handler"
ll
mvn clean install
git status
git checkout develop
git pull
git checkout feature 
git status
git checkout feature/ET-2826
git status
git add .
git commit -m "ET-2826 Unit tests on LongPollingService"
killall java
ps -ef | grep java
go-eten 
git status
cd etendering/
git status
git stash
git checkout feature/ET-2817
git checkout feature/ET-2826
git stash apply
git commit -a -m "ET-2826 add some tests"
git push
git checkout develop
git pull
git flow feature start ET-2797
git checkout feature/ET-2817
git status
svn status
git status
git commit -a -m "Encode html text"
git commit -a -m "ET-2806 Encode html text"
git rebase develop 
git status
git push -f
git flow feature finish ET-2817
git status
git pull
git status
mvn clean install
git push
git branch -a
git status
git checkout feature/ET-2079
git checkout develop
sudo service mysql start
~/Documents/dev/scripts/mysql_speedup.sh 
git status
git pull
git checkout feature/ET-2079
git rebase develop
git status
git rebase --continue
git status
git push -f
git status
git log
git diff 456b91dbec814b63c60838f1c788255af847e515
git diff b172a83426fb67b6fc4ea8f09583e5d192b41926
git status
git diff etendering-web/src/main/java/com/greenvalley/etendering/document/specific/prebid_meeting/mapper/PrebidMeetingConverter.java
git commit -a -m "change notice to get text"
git status
git push
git checkout develop
git pull
git status
git commit -a -m "change language code for en and fr, and add prebidMeeting message in fr messages"
git push
git status
git commit -a -m "change prebid meeting messages"
git push
git checkout 2079
git checkout feature/ET-2079
git pull
git rebase develop
git rebase --continue
git status
git push -f
git flow feature finish ET-2079
git status
git push
git status
git commit -a -m "remove fixed locale en el message helper"
git push
git status
git commit -a -m "refresh serializedModel"
git push
cd ~/.sh
cd ~/.ssh/
ll
vim id_rsa.pub 
go-eten 
cd etendering/
ll
git status
git pull
git flow feature create ET-2726
git flow feature start ET-2726
git branch -d feature/ET-2726
git checkout develop
git branch -d feature/ET-2726
git pull
git feature start ET-2819
git flow feature start ET-2819
git status
git commit -a -m "ET-2819 change french reference text in services_responsibilities"
git push
git push --set-upstream origin feature/ET-2819
git commit -a -m "ET-2817 change french reference text in deliveries_responsibilities"
git push
git commit -a -m "ET-2806 change french reference text in execution_insurance"
git push
git rebase develop
git feature finish ET-2819
git flow feature finish ET-2819
git status
git push
git pull 
git feature start ET-2735
git flow feature start ET-2735
git status
git commit -a -m "ET-2735 change nl comments"
git push 
git push --set-upstream origin feature/ET-2735
git status
git checkout develop
git flow feature start ET-2785
git rebase develop
git status
git stash
git checkout feature/ET-2735
git stash apply
git commit -a -m "Changes offer submission document domain"
git status
git push
cd Documents/dev/playground/liquibase/
ll
vim changeset.xml 
which groovy
go-dev 
ll
cd cipal/styx/trunk/styx-parent-osgi/styx-database/src/main/resources/be/cipal/database/2.00.0.01/STYX-154/
ll
vim styx-154.xml 
mysql -u root -proot
locate liquibase.jar
cp ~/Documents/dev/playground/liquibase/
cp /home/amr/Documents/dev/cipal/styx/trunk/styx-deployment/lib/liquibase.jar ~/Documents/dev/playground/liquibase/
ll
cd -
cd playground/liquibase/
ll
touch prepare-row.groovy
vim prepare-row.groovy 
rm -f changelog.xml 
mv changeset.xml changelog.xml
vim changelog.xml
ll
java -jar liquibase.jar \
touch liquibase.properties
ll
vim liquibase.properties 
mysql -u root -proot test
go-eten 
cd etendering/
ll
git status
git flow feature start ET-2847
git checkout develop
git pull
git branch -d feature/ET-2847
git branch
git flow feature start ET-2847
git status
git commit -a -m "update notification view, set menu collapse button in the top actions bar"
git push
git push --set-upstream origin feature/ET-2847
cd ..
cd common-ui/
ll
git status
git commit -a -m "add common components sheet, add margin to Tables_Wrapper"
ll
mvn jgitflow:release:start
mvn jgitflow:release-start
git checkout develop
git pull
git checkout master
git push
mvn jgitflow:release-start
git status
cd ../etendering/
git status
vim pom.xml 
git commit -a -m "update ui version"
git status
git push 
git checkout develop
git pull
git checkout feature/ET-2847
git rebase develop
git status
git flow feature finish ET-2847
git status
git push
git status
vim pom.xml
git commit -a -m "update ui version" 
git push
cd Documents/dev/ll
cd Documents/dev/
ll
mkdir playground
cd playground/
ll
mkdir liquibase
cd liquibase/
ll
touch changelog.xml
vim changelog.xml 
locate mysql | grep jar
ll
cp /home/amr/.IdeaIC14/config/plugins/DBNavigator/lib/ext/mysql-connector-java-5.1.35-bin.jar .
ll
java -jar liquibase.jar migrate
ll
vim prepare-row.groovy 
java -jar liquibase.jar migrate
mysql -u root -proot test
cat insert-row.sql 
cat prepare-row.groovy 
cd 
cd ~/Documents/dev/cipal/etend_ws/common-ui/
ll
mvn clean install
git pull
mvn clean install
head 20 pom.xml 
cd ../etendering/
head 100 pom.xml 
head -100 pom.xml 
cd ../common-ui/
mvn clean install
git status
mvn jgitflow:release-finish
git status
git push 
git checkout master
git push
mvn jgitflow:release-start
mvn clean install
git status
mvn jgitflow:release-start
mvn jgitflow:release-finish
git status
git push
git checkout master
git push
go-eten 
cd etendering/
ll
git status
git branch
git branch -a | grep 2689
git status
git pull
git status
git stash
git flow feature start ET-2689
git stash apply
git commit -a -m "ET-2689 changes in the previous and next buttons"
git checkout develop
git status
git checkout feature/ET-2689
git status
git commit -a -m "add behavior to top navigation buttons"
git status
git push
git push --set-upstream origin feature/ET-2689
git status
go-eten 
cd etendering/
ll
git status
git commit -a -m "add tooltip to negotiated procedure"
git push
sudo apt-get update && sudo apt-get dist-upgrade -y
go-eten 
cd etendering/
git status
sudo service mysql start
~/Documents/dev/scripts/mysql_speedup.sh 
git log
git show 7d94e5199ffe11f284f9ae90e19fb58832aa0261
go-eten
cd etendering/
git stsatus
git status
git commit -a -m "ET-Unkown add tool tip to tender procedure negotiatedMotivation"
git push
git status
git commit -a -m "ET-2689 update checking before stepping forward without saving changes"
git checkout develop
git pull
git checkout feature/ET-2869
git checkout feature/ET-2689
git push
git checkout develop
git pull
git flow feature start ET-2858
git commit -a -m "replace instead of appending in app info"
git push
git push --set-upstream origin feature/ET-2858
git status
git checkout develop
git flow feature start ET-2365
git checkout feature/ET-2365
git pull
git log
git checkout develop
git brand -D feature/ET-2365
git branch -D feature/ET-2365
git push origin :feature/ET-2365
git status
git flow feature start ET-2365
mvn clean install
cd etendering-db
mvn clean install
git status
cd ..
git commit -a -m "ET-2365 Add refactor on public tendering, not showing services when no prior publication"
git push
git push --set-upstream origin feature/ET-2365
go-eten 
cd etendering/
ll
git status
git commit -a -m "add -- to non selection messages"
git push
git branch
git status
git checkout feature/ET-2689
git push
git checkout feature/ET-2735
git checkout feature/ET-2365
git status
git checkout feature/ET-2689
git rebase develop
git rebase --abort
git checkout develop
git pull
git checkout feature/ET-2689
git rebase develop
git status
git rebase --abort
git status
git rebase --abort
git rebase develop
git rebase --continue
git status
git push -f
git checkout feature/ET-2365
git status
git checkout develop
git pull
git checkout feature/ET-2689
GIT STATUS
git status
git rebase develop
git status
git push -f
git checkout feature/ET-2365
ping google.es
git status
git commit -a -m "ET-2689 add change in the view to add remove empty value to qualificationSubType"
git push
git status
git commit -a -m "update controller to allow procedures with empty qualification subtypes"
git push
git status
git commit -a -m "ET-2757 negotiatedMotivation is not required anymore"
git push 
git status
git commit -a -m "add empty option if there is no qualification subtype"
git push
git checkout develop
git status
git commit -a -m "ET-2689 add empty option if there is no qualification subtype"
git push
git checkout develop
git pull
git checkout 2365
git checkout feature/ET-2365
git status
git rebase develop
git rebase --continue
git status
git push -f
cd etendering-db/
mvn clean install
cd ..
git status
git branch
git checkout feature/ET-2735
git statu
git checkout feature/ET-2689
git status
git commit -a -m "ET-2689 changes from code review"
git push
git status
git pull
git status
git commit -a -m "ET-2689 changes from code review"
git push
go-eten 
cd etendering/
git rebase develop
git commit -a -m " fix js errors"
git push
git checkout develop
git pull
git checkout feature/ET-2689
git rebase develop
git rebase --continue
git status
git push
git pull
git status
git push -f
git status
git commit 
git push
git status
git checkout develop
git checkout feature/ET-2735
git status
git pull
git checkout develop
git checkout feature/ET-2365
git pull
git rebase develop
git status
git push -f
git checkout feature/ET-2689
git commit -a -m "overriding merge errors, fix js"
git push
git checkout develop
git branch
git checkout feature/ET-2858
git rebase develop
git status
git push
git push -f
git diff develop
git flow feature finish ET-2858
git push
git branch
git status
git checkout feature/ET-2826
GIT PULL
git pull
git commit -a -m "ET-2826 fix review comments"
git push 
git rebase develop
git flow feature finish ET-2826
cd etendering-web/
mvn test-compile
git status
cd ..
git flow feature finish ET-2826
git status
git checkout develop
git pull
git checkout feature/ET-2826
git rebase develop
git push -f
git flow feature finish ET-2826
git push
git checkout feature/ET-2365
git rebase develop
cd etendering-db/
mvn clean install
cd ..
git status
git stash
git checkout develop
git pull
git checkout feature/ET-2365
git stash apply
git stash
git rebase develop
git stash apply
cd etendering-web/
mvn test-compile
mvn clean test-compile
git status
git commit -a -m "ET-2365 updating acc tests to match modified pages"
git push
git pull
git status
git push
git checkout feature/ET-2689
git pull
git checkout feature/ET-2365
cd ..
git status
git rebase develop
git rebase --continue
git status
git rebase --continue
git rebase --abort
git pull
git status
git checkout develop
git pull
git checkout feature/ET-2365
git rebase develop
git rebase --continue
git status
git add .
git status
git rebase --continue
git merge
git status
git rebase --continue
git push
git status
git rebase develop
git rebase --abort
git status
git checkout develop
git pull
git checkout feature/ET-2365
git pull
git push
git rebase develop
git rebase --continue
git rebase --skip
git status
git rebase --continue
git rebase --skip
git status
git commit -a -m "ET-2365 merge from develop"
git rebase --continue
git commit -a -m "ET-2365 merge from develop"
git rebase --continue
git rebase --abort
git status
git flow feature finish ET-2365
git push
git pull
git push
git branch
git checkout feature/ET-2689
git status
git rebase develop
git rebase --continue
git status
git rebase --continue
git status
git rebase --continue
git rebase --skip
git rebase --continue
git rebase --skip
git rebase --continue
git rebase --skip
git rebase --continue
git rebase --skip
git rebase --continue
git rebase --skip
git rebase --continue
git rebase --skip
git status
git pull
git status
git push -f
cd etendering-web/
mvn test-compile
git status
git checkout develop
git status
git pull
git status
git commit -a -m "[FIX] disable long polling to avoid user session issues."
git push
cd ..
git branch
git checkout feature/ET-2689
git status
git commit -a -m "ET-2689 fix tenderProcurement merge errors"
git push
git branch
git status
git checkout develop
git pull
cd 
ll
cd .ssh/
ll
cd tmp/
ll
ssh -i key_gv_staging.pem ubuntu@54.194.232.247
sudo apt-get update && sudo apt-get dist-upgrade -y
go-eten 
cd etendering/
git status
git pull
git checkout feature/ET-2689
git rebase develop
git status
git push -f
git flow feature finish ET-2689
git status
sudo service mysql status
cd /etc/
ll rc.local
vim rc.local 
cd rcS.d
ll
cd ..
ll
~/Documents/dev/scripts/mysql_speedup.sh 
go-eten 
cd etendering/
git status
git stash
git checkout feature/ET-2689
git checkout -b feature/ET-2689 develop
git stash apply
git status
git commit -a -m "refactor navigation bar ays option"
git push
git push --set-upstream origin feature/ET-2689
cd /etc/init.d/
ll
sudo ln -s ~/Documents/dev/scripts/mysql_speedup.sh mysql_speedup
ll
go-eten 
ll
cd etendering/
git status
git branch
git checkout feature/ET-2735
git rebase develop
git rebase --continue
git status
git rebase --continue
git rebase --skip
git rebase --continue
git rebase develop
git status
git checkout develop
git reset .
git status
git revert .
git checkout .
git status
git reset --hard .
git reset --hard
git status
git fetch 
git status
git pull
git status
git revert ...
git status
git clean -f
git status
git checkout .
git status
git checkout .
git status
git fetch origin
git status
git reset --hard origin/develop
git status
git checkout feature/ET-2735
git fetch origin
git reset --hard origin/feature/ET-2735
git status
git rebase develop
git rebase --continue
git rebase --skip
git status
git push -f
git checkout feature/ET-2689
git status
git revert etendering-web/src/main/java/com/greenvalley/etendering/document/specific/request_for_quotation/contractual_provision/offer_submission/mapper/OfferSubmissionConverter.java
git status
git checkout feature/ET-2689
git status
git checkout develop
git status
git pull
git status
git branch
git checkout feature/ET-2735
ll
git status
git diff /home/amr/Documents/dev/cipal/etend_ws/etendering/etendering-web/src/main/java/com/greenvalley/etendering/document/specific/request_for_quotation/contractual_provision/offer_submission/mapper/OfferSubmissionConverter.java develop
git diff /home/amr/Documents/dev/cipal/etend_ws/etendering/etendering-web/src/main/java/com/greenvalley/etendering/document/specific/request_for_quotation/contractual_provision/offer_submission/mapper/OfferSubmissionConverter.java ~develop
git status
git commit -a -m "updating reference text values"
git push
git commit -a -m "update submission offer document domain and converter"
git push
git checkout feature/ET-2689
git status
git commit -a -m "change classname to no button"
git push
git rebase develop
git status
git flow feature finish ET-2689
git push -f
git status
git flow feature finish ET-2689
git push
git pull
git status
git push
git status
git pull
git flow feature start ET-2826
git commit -a -m "when watch expires, instead of return null, remove old watcher and create a new one"
git push 
git push --set-upstream origin feature/ET-2826
git checkout feature/ET-2735
cd .m2/
ll
mv settings.xml settings.xml.ciprocure
mv settings.xml.styx settings.xml
ll
cd /opt/
ll
sudo tar xf ~/Downloads/Software-sync/apache-tomcat-7.0.65.tar.gz 
ll
cd apache-tomcat-7.0.65/bin/
ll
vim catalina.sh 
cd ..
ll
cd webapps/
ll
chown root:root etendering.war 
sudo chown root:root etendering.war 
ll
cd ..
cd bin/
ll
./startup.sh 
sudo ./startup.sh 
netstat -ntpa
less ../logs/catalina.out 
sudo ./shutdown.sh 
ps -ef | grep tomct
ps -ef | grep tomcat
ll
sudo ./startup.sh 
tail -f ../logs/catalina.out 
ll
ll ../webapps/
sudo rm -f ../webapps/etendering.war 
./startup.sh 
sudo ./startup.sh 
tail -f ../logs/catalina.out 
locate lstore.credentialStore
sudo vim /etc/init.d/tomcat
vim /etc/init.d/tomcat
sudo chmod 755 /etc/init.d/tomcat
sudo chkconfig --add tomcat
sudo service -l
sudo service
sudo help service
sudo service -h
man service
service -h
sudo service -h
sudo service --status_all
sudo service tomcat start
cd ..
ll
cd ..
rm -rf apache-tomcat-7.0.65/
sudo rm -rf apache-tomcat-7.0.65/
sudo rm -f /etc/init.d/tomcat 
sudo apt-get install tomcat7
cd /var/lib/tomcat7/webapps/
ll
cp ~/Documents/dev/cipal/etend_ws/etendering/etendering-web/target/etendering.war .
sudo cp ~/Documents/dev/cipal/etend_ws/etendering/etendering-web/target/etendering.war .
ll
sudo service tomcat start
sudo service tomcat7 stop
sudo service tomcat7 start
sudo service tomcat7 status
ll /var/log/tomcat7/
sudo tail -f /var/log/tomcat7/catalina.out
sudo less /var/log/tomcat7/catalina.out
sudo service tomcat7 stop
go-eten 
cd etendering/etendering-web/
mvn clean install -Dmaven.test.skip=true
cd ../etendering-db/
vim pom.xml 
mvn clean install -Pinit-db-geel
mvn clean install -Pinit-db-hasselt
go-eten 
cd etendering/etendering-web/
mvn clean install -Dmaven.test.skip=true
cd target/
ll
sudo mv etendering.war /opt/apache-tomcat-7.0.65/webapps/
cd ..
ll
mvn clean install -Dmaven.test.skip=true
scp -i ~/.ssh/tmp/key_gv_et_dev.pem target/etendering.war ubuntu@54.194.232.247:/home/ubuntu/
-i ~/.ssh/tmp/key_gv_et_dev.pem ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com
scp -i ~/.ssh/tmp/key_gv_et_dev.pem target/etendering.war ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com:/home/ubuntu/
mvn clean install -Dmaven.test.skip=true
~/Documents/dev/scripts/mysql_speedup.sh 
scp -i ~/.ssh/tmp/key_gv_et_dev.pem target/etendering.war ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com:/home/ubuntu/
mvn clean install -Dmaven.test.skip=true
scp -i ~/.ssh/tmp/key_gv_et_dev.pem target/etendering.war ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com:/home/ubuntu/
mvn clean install -Dmaven.test.skip=true
scp -i ~/.ssh/tmp/key_gv_et_dev.pem target/etendering.war ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com:/home/ubuntu/
mvn clean install -Dmaven.test.skip=true
scp -i ~/.ssh/tmp/key_gv_et_dev.pem target/etendering.war ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com:/home/ubuntu/
git status
git add -a -m "[FIX] quick fix until long polling is fixed, disabling long polling requests"
git commit -a -m "ET-2826 [FIX] quick fix until long polling is fixed, disabling long polling requests"
git pull
git status
git push
ping 54.194.12.163
scp -i ~/.ssh/tmp/key_gv_et_dev.pem target/etendering.war ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com:/home/ubuntu/
mysql -u root -proot
sudo service tomcat7 stop
sudo service tomcat7 status
sudo service tomcat7 start
sudo service tomcat7 status
ps -ef | grep tomcat
jconsole 
vim /var/lib/tomcat7/conf/context.xml 
mysql -u root -proot
sudo tail -f /var/log/tomcat7/catalina.out
sudo less -f /var/log/tomcat7/catalina.out
vim /usr/share/tomcat7/bin/catalina.sh 
sudo mkdir /opt/credentialstore/
sudo touch /opt/credentialstore/credentialStore.xml
fg
sudo service tomcat7 start 
sudo systemctl status tomcat7.service
sudo less /var/log/tomcat7/catalina.out
sudo service tomcat7 stop
sudo service tomcat7 status
sudo service tomcat7 start
sudo journalctl -xe
vim /usr/share/tomcat7/bin/catalina.sh 
sudo service tomcat7 start
sudo tail -100f /var/log/tomcat7/catalina.out
cd /var/lib/tomcat7/conf/
ll
vim context.xml 
fg
sudo service tomcat7 stop
sudo service tomcat7 start
sudo tail -100f /var/log/tomcat7/catalina.out
ll
vim server.xml 
ll
fg
sudo tail -100f /var/log/tomcat7/catalina.out
ssh -i ~/.ssh/tmp/key_gv_et_dev.pem ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com
alsamixer
cd Apps/
ll
tar xf ~/Downloads/Software-sync/ideaIU-14.1.5.tar.gz 
ll
cd idea-IU-141.2735.5/
ll
cd bin/
ll
./idea.sh 
go-eten 
cd etendering/
git status
git stash
git status
git flow feature start ET-2880
~/Documents/dev/scripts/mysql_speedup.sh 
sudo service mysql status
git flow feature publish ET-2880
git commit -a -m "ET-2880 add updatePublication within the init exported method. Take disabling to a function"
git flow feature publish ET-2880
git status
sudo service tomcat7 status
sudo service tomcat7 stop
git status
git add etendering-web/src/main/webapp/resources/js/app/public_procurements/tendering/tenderProcedure.js
git commit -a -m "remove anonymous wrapping functions in event listeners"
git push
cd ~/Downloads/tmp/
ll
java -jar keygen14.jar 
go-eten 
cd etendering/
git status
git add .
git commit -a -m "ET-2139 fix tooltips in basic details"
git push 
locate intellig
git status
git commit -a -m "ET-2139 add tooltip comments and dinamyc handling"
git push
locate -i intellig
locate -i idea | grep desktop
cd /usr/local/share/applications/
vim jetbrains-idea-ce.desktop 
sudo apt-get update && sudo apt-get dist-upgrade -y
cd
vim .bash_aliases 
mv .ssh/tmp/*.pem .ssh/
ll
ll .ssh/tmp/
ll .ssh/
source ~/.bashrc
ssh -i ~/.ssh/key_gv_et_dev.pem ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com
vim ~/.bashrc 
fg
cd Documents/dev/feli
cd Documents/dev/cipal/felix
ll
vim felix.sh 
cd Documents/dev/cipal/styx/trunk/
ll
cd styx-parent-osgi/
ll
vim 
go-eten 
cd etendering/
ll
git info
git config
git conffig --global --add branch.autosetuprebase=always
git config --global --add branch.autosetuprebase=always
git config --global branch.autosetuprebase=always
git config --global branch.autosetuprebase = always
git config -l
git config --global branch.autosetuprebase always
git config -l
git config --global user.main=antonio@asaitec.eu
git config --global user.mail=antonio@asaitec.eu
git status
git config -l
git config --global user.mail antonio@asaitec.eu
git config --global user.main antonio@asaitec.eu
git config -l
git config --global user.email antonio@asaitec.eu
git config -l
git --unset user.mail
vim ~/.gitconfig
git statys
git status
git checkout develop
git pull
git branch develop ET-2826
git branch feature/ET-2826 develop
git status
git branch
git checkout feature/ET-2826
git status
vim pom.xml
cat /usr/share/tomcat7/bin/catalina.sh 
head 20 /usr/share/tomcat7/bin/catalina.sh 
head -20 /usr/share/tomcat7/bin/catalina.sh 
head -60 /usr/share/tomcat7/bin/catalina.sh 
head -100 /usr/share/tomcat7/bin/catalina.sh 
cd /opt/
ll
sudo chown amr:amr -R credentialstore/
sudo service tomcat7 stop
~/Documents/dev/scripts/mysql_speedup.sh 
sudo service tomcat7 start && sudo tail -f /var/log/tomcat7/catalina.out
sudo service tomcat7 stop
cd /var/lib/tomcat7/webapps/
ll
rm -rf etendering*
sudo rm -rf etendering*
ll
cd -
sudo service tomcat7 start && sudo tail -f /var/log/tomcat7/catalina.out
sudo service tomcat7 stop
sudo service tomcat7 start && sudo tail -f /var/log/tomcat7/catalina.out
sudo service tomcat7 restart && sudo tail -f /var/log/tomcat7/catalina.out
sudo service tomcat7 stop
cd -
go-eten 
ll
cd etendering/etendering-web/
mvn clean install
mvn clean install -Dmaven.test.skip=true
sudo rm -rf /var/lib/tomcat7/webapps/etendering*
sudo mv target/etendering.war /var/lib/tomcat7/webapps/
sudo chown -R tomcat7:tomcat7 /var/lib/tomcat7/webapps/
sudo rm -rf /var/lib/tomcat7/webapps/etendering*
ll /var/lib/tomcat7/webapps/
sudo mv target/etendering.war /var/lib/tomcat7/webapps/
source ~/.bashrc
deploy-etendering 
source ~/.bashrc
deploy-etendering 
source ~/.bashrc
deploy-etendering 
ll target/
mvn clean install -Dmaven.test.skip=true
sudo mv target/etendering.war /var/lib/tomcat7/webapps/
sudo chown root:root /var/lib/tomcat7/webapps/etendering.war 
sudo service tomcat7 status
sudo service tomcat7 stop
sudo service tomcat7 start
source ~/.bashrc 
deploy-etendering 
sudo tail -f /var/log/tomcat7/catalina.out
sudo service tomcat7 stop
git branch
git status
git stash
git checkout feature/ET-2880
git log
cd ..
sudo service tomcat7 start
git status
git push
git status
git checkout develop
git pull
git checkout feature/ET-2880
git rebase develop
git status
git push -f
git flow feature finish ET-2880
git status
git push 
sudo service tomcat7 stop
cd 
cd /var/lib/tomcat7/conf/
ll
vim context.xml 
ll
cd ..
ll
scp -i ~/.ssh/key_gv_et_dev.pem ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com:/var/lib/tomcat7/lib .
mkdir lib
sudo mkdir lib
cd lib/
scp -i ~/.ssh/key_gv_et_dev.pem ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com:/var/lib/tomcat7/lib/* .
scp -i ~/.ssh/key_gv_et_dev.pem ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com:/home/ubuntu/libs.tar.gz .
sudo scp -i ~/.ssh/key_gv_et_dev.pem ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com:/home/ubuntu/libs.tar.gz .
ll
tar xf libs.tar.gz 
sudo tar xf libs.tar.gz 
LL
ll
rm -rf libs.tar.gz 
sudo rm -rf libs.tar.gz 
ll
cd ..
ll
cd webapps/
ll
sudo cp ~/Documents/dev/cipal/etend_ws/etendering/etendering-web/target/etendering.war .
ll
go-eten 
ll
cd etendering/etendering-db/
vim pom.xml 
sudo service tomcat7 stop
source ~/.bashrc
sudo provision-etendering 
provision-etendering 
ll /var/lib/tomcat7/webapps/
sudo chown root:root /var/lib/tomcat7/webapps/etendering.war 
ll /var/lib/tomcat7/webapps/
sudo service tomcat7 start
sudo tail -f /var/log/tomcat7/catalina.out
vim ~/.bash_aliases 
sudo tail -f /var/log/tomcat7/catalina.out
cd 
ll
cd .vimamr/
ll
la
ll
la
mv .vimrc vimrc
ll
cp vimrc .vimrc
ll
sudo apt-get update && sudo apt-get dist-upgrade -y
sudo apt-get autoremove 
sudo service tomcat7 start
deploy-etendering 
sudo /var/log/tomcat7/catalina.out
sudo tail -f /var/log/tomcat7/catalina.out
cd ..
git status
git stash
git pull
git checkout feature/ET-2826
git stash apply
deploy-etendering 
sudo tail -f /var/log/tomcat7/catalina.out
deploy-etendering 
sudo service tomcat7 stop
Documents/dev/scripts/mysql_speedup.sh 
deploy-etendering 
go-eten 
cd etendering/
git status
git add .
git commit -m "ET-2826 add a custom deferredResult holding the user id+procurement+step+tenant"
git push
git push --set-upstream
git push --set-upstream origin feature/ET-2826
top
ll
git checkout develop
git pull
git flow feature start ET-2813
git commit -a -m "ET-2813 update french reference text"
git push
git push --set-upstream origin feature/ET-2813
git rebase develop
git flow feature finish ET-2813
git push
git flow feature start ET-2799
git commit -a -m "ET-2799 change text to french for rfq"
git push
git push --set-upstream origin feature/ET-2799
git rebase develop
git feature finish ET-2799
git flow feature finish ET-2799
git push 
git flow feature start ET-2084
~/Documents/dev/scripts/mysql_speedup.sh 

sudo scp -i ~/.ssh/key_gv_et_dev.pem ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com:/home/ubuntu/libs.tar.gz .
ssh -i ~/.ssh/key_gv_et_dev.pem ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com
cd ..
git checkout feature/ET-2826
git status
rm -f etendering-web/libs.tar.gz 
deploy-etendering 
git status
deploy-etendering 
git status
git add .
git checkout src/main/java/com/greenvalley/etendering/security/impl/AjaxAwareAuthenticationEntryPoint.java
git status
git revert src/main/java/com/greenvalley/etendering/security/impl/AjaxAwareAuthenticationEntryPoint.java
git reset src/main/java/com/greenvalley/etendering/security/impl/AjaxAwareAuthenticationEntryPoint.java
git status
git revert src/main/java/com/greenvalley/etendering/security/impl/AjaxAwareAuthenticationEntryPoint.java
git status
git commit -m "ET-2826 update deferredResult to not be marked as failed."
git push 
git checkout develop
git pull
git status
git flow feature start ET-2084
git checkout 2084
cd ..
git checkout feature/ET-2084
git status
git rebase develop
git status
git stash
git checkout feature/ET-2826
deploy-etendering 
sudo service tomcat7 stop
sudo apt-get install docker
man docker
sudo man docker
sudo docker --help
sudo docker
nmap ec2-52-23-89-146.compute-1.amazonaws.com
sudo nmap -Pn ec2-52-23-89-146.compute-1.amazonaws.com
sudo nmap -Pn ec2-52-90-222-247.compute-1.amazonaws.com
vim .bash_aliases 
ssh-it-dev 
top
Documents/dev/scripts/mysql_speedup.sh 
deploy-etendering 
git status
git stash
git checkout feature/ET-2826 feature/ET-2826-rollback
git checkout feature/ET-2826-rollback feature/ET-2826 
git checkout -b feature/ET-2826-rollback feature/ET-2826 
git stash apply
git commit -a -m "ET-2826 rollback to previous version, apply tenant filter to watch list key"
git checkout ET-2826
git checkout feature/ET-2826
git status
git checkout feature/ET-2826-rollback
git status
deploy-etendering 
git status
git commit -a -m "ET-2826 move logic to service "
git push
git push --set-upstream origin feature/ET-2826-rollback
git status
git commit -a -m "ET-2826 remove old unuseful service test"
git push
deploy-etendering 
git status
git commit -a -m "ET-2826 remove comments"
git push
mvn clean install -Dmaven.test.skip=true
scp -i ~/.ssh/tmp/key_gv_et_dev.pem target/etendering.war ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com:/home/ubuntu/
scp -i ~/.ssh/key_gv_et_dev.pem target/etendering.war ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com:/home/ubuntu/
git status
git commit -a -m "ET-2826 use tenanthash and username as key for observers instead of just username"
git status
git push
mvn clean install -Dmaven.test.skip=true
scp -i ~/.ssh/key_gv_et_dev.pem target/etendering.war ubuntu@ec2-54-229-189-139.eu-west-1.compute.amazonaws.com:/home/ubuntu/
go-eten 
cd etendering/
branch
git branch
git rebase develop
git rebase --abort
git checkout develop
git pull
git checkout feature/ET-2826-rollback
git status
git pull
git rebase develop
git rebase --abort
cd ..
ll
cp -rf etendering/etendering-web/src/main/java/com/greenvalley/etendering/web/ .
ll
cd etendering/
git rebase develop
git rebase --abort
git rebase feature/ET-2826
git rebase feature/ET-2826-rollback
git rebase develop
git rebase --abort
cd ..
ll
rm -rf web
cp rf etendering/etendering-web/src/main/java/com/greenvalley/etendering/ .
cp -rf etendering/etendering-web/src/main/java/com/greenvalley/etendering/ .
ll
ll etendering/
cd etendering/
git status
git reset .
git status
rm -rf annotation/ aspect/ comparator/ component/ document/ domain/ exceptions/ facade/ factory/ repository/ security/ service/ support/ web/
git status
ll
git status
cd ..
ll
cd ..
cp -rf etend_ws/etendering/etendering-web/src/main/java/com/greenvalley/etendering/ .
ll
cd etend_ws/etendering/
git rebase develop
git status
git add .
git status
git rm etendering-web/src/main/java/com/greenvalley/etendering/service/longPolling/DeferredNotify.java
git status
git rm etendering-web/src/main/java/com/greenvalley/etendering/service/longPolling/DeferredNotify.java
git reset etendering-web/src/main/java/com/greenvalley/etendering/service/longPolling/DeferredNotify.java
git status
rm -rf etendering-web/src/main/java/com/greenvalley/etendering/service/longPolling/DeferredNotify.java
git status
git commit -a -m "ET-2826 refactor from previous version to avoid being banned from session"
git push
git status
git rebase --continue
git rebase --skip
git rebase --continue
git rebase --abort
git rebase develop
git rebase --continue
pwd
git status
git rebase --continue
git status
deploy-etendering 
git status
git push 
git push -f
git flow feature finish ET-2826-rollback
git status
cd ..
git status
git push
git pull
git push
git status
git branch
git branch -D feature/ET-2826
git push origin :feature/ET-2826
git status
git checkout feature/ET-2084
git help
git stash help
git stash list
git stash clear
git branch
~/Documents/dev/scripts/mysql_speedup.sh 
ll
cd ..
ll
cd ..
ll
rm -rf etendering/
cd Documents/dev/c/exercises/
ll
cd scanf_multiple
mkdir scanf_multiple
cd scanf_multiple/
ll
touch read_5_ints.c
vim read_5_ints.c 
gcc -o read5 read_5_ints.c 
ll
./read5 
vim read_5_ints.c 
gcc -o read5 read_5_ints.c 
vim read_5_ints.c 
gcc -o read5 read_5_ints.c 
./read5 
sudo apt-get update && sudo apt-get dist-upgrade -y 
sudo reboot
