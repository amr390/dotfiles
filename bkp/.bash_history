go-styx 
mvn-build && start-felix 
mvn-build 
stop-felix 
go-styx 
cd styx-runner/
mvn clean install pax:provision -Pstandalone
start-felix 
tail -f logs/felix.log 
less logs/felix.log 
stop-felix && mvn-build && start-felix 
less logs/felix.log 
stop-felix && mvn-build && start-felix 
less logs/felix.log 
stop-felix && mvn-build && start-felix 
less logs/felix.log 
stop-felix && mvn-build && start-felix 
stop-felix 
start-felix 
less logs/felix.log 
go-styx 
svn up
mvn-build 
stop-felix 
go-styx 
cd styx-runner/
mvn clean install pax:provision -Pstandalone 
start-felix 
clear
less logs/felix.log 
go-styx 
svn up
stop-felix 
mvn-build && start-felix 
less logs/felix.log 
stop-felix 
rm -f bundles/*
rm -rf felix/cache/runner/*
mvn-build && start-felix 
less logs/felix.log 
tail -f logs/felix.log 
less logs/felix.log 
tail -f logs/felix.log 
less logs/felix.log 
tail -f logs/felix.log 
less logs/felix.log 
stop-felix && mvn-build && start-felix 
less logs/felix.log 
stop-felix && mvn-build && start-felix 
tail -f logs/felix.log 
stop-felix && mvn-build && start-felix 
mvn-build && start-felix 
tail -f logs/felix.log 
stop-felix && mvn-build && start-felix 
tail -f logs/felix.log 
stop-felix && mvn-build && start-felix 
tail -f logs/felix.log 
stop-felix 
mvn-drop 
mvn-build && start-felix 
tail -f logs/felix.log 
stop-felix && mvn-build && start-felix 
tail -f logs/felix.log 
stop-felix && mvn-build && start-felix 
tail -f logs/felix.log 
go-styx 
svn up
mvn clean install
stop-felix 
mvn-build && start-felix 
tail -f logs/felix.log 
less logs/felix.log 
go-csf-parent 
svn up
mvn clean install -Dmaven.test.skip=true
vim pom.xml 
stop-felix && mvn-build && start-felix 
tail -f logs/felix.log 
go-styx 
svn up
stop-felix; mvn-build && start-felix
tail -f logs/felix.log 
go-styx 
svn up
mvn clean install
cd styx-runner/
mvn clean install pax:provision -Pstandalone && start-felix 
stop-felix && mvn-build && start-felix 
tail -f logs/felix.log 
stop-felix && mvn-build && start-felix 
tail -f logs/felix.log 
stop-felix && mvn-build && start-felix 
mvn-build && start-felix 
tail -f logs/felix.log 
stop-felix && mvn-build && start-felix 
tail -f logs/felix.log 
stop-felix && mvn-build && start-felix 
vim .vimrc
go-styx 
mvn-build && start-felix 
stop-felix 
vim ~/.m2/settings.xml
go-styx 
cd ../../../
cd tmp/
ll
cd styx-parent-osgi/
ll
vim gradle.properties
stop-felix 
go-styx 
cd ..
cd tmp
cd styx-parent-osgi/
ll
cd styx-database/
gradle build
vim ~/.m2/settings.xml
ping central
cd ..
ll
mvn clean install
ll
vim build.gradle 
gradle build
gradle build --debug
vim build.gradle 
gradle build
gradle build --debug
cd styx-address-domain-impl/
ll
vim src/test/resources/jpaDatabaseTest.properties 
cd ..
gradle build --debug
vim styx-address-domain-impl/src/test/resources/jpaDatabaseTest.properties 
gradle build
gradle -Dskip-tests build
gradle build -x test
cd styx-crab-ws
ll
vim build.gradle 
gradle build
gradle build -x test
gradle build -x test :styx-crab-ws
gradle build -x test :styx-crab-ws --debug
vim build.gradle 
gradle build -x test :styx-crab-ws --debug
go-styx 
mvn-build && start-felix 
svn up
mvn-build && start-felix 
stop-felix && mvn-build && start-felix 
tail -f logs/felix.log 
less logs/felix.log 
stop-felix && mvn-build && start-felix 
tail -f logs/felix.log 
stop-felix && mvn-build && start-felix 
tail -f logs/felix.log 
mvn-drop 
stop-felix && mvn-build && start-felix 
tail -f logs/felix.log 
go-styx 
svn up
stop-felix && mvn-build && start-felix 
tail -f logs/felix.log 
stop-felix 
less logs/felix.log 
ps -ef | grep felix
kill 22837
ps -ef | grep felix
ps -ef | grep sqldeveloper
kill 5984
ps -ef | grep sqldeveloper
ll
rm -f default-soapui-workspace.xml 
rm soapui-settings.xml 
rm test-soapui-project.xml 
ll
rm linux_signing_key.pub 
ll htc/
cd Documents/dev/
ll
cd python/django/
ll
cd auth_example/
ll
git status
git pull
git add .
git status
git rm simple.db 
git commit -m "new templates"
git push origin master
ll
workon django1.5
python manage.py runserver
deactivate 
go-styx 

mvn-build 
start-felix 
go-styx 
svn info
svn copy  https://ontw-java-01.int.cipal.be/svn/styx/trunk/  https://ontw-java-01.int.cipal.be/svn/styx/branches/SPRINT-4 -m "Issues with csf admin site version pending"
stop-felix && mvn-build && start-felix 
less logs/felix.log 
cp logs/felix.log logs/felix.bkp.log
go-styx 
mvn version help
mvn version --help
mvn versions:set --help
mvn versions:set
mvn-build 
stop-felix && start-felix 
stop-felix 
go-styx 
mvn versions:set -DnewVersion=1.04.0.01 -DgenerateBackupPom=false
mvn-build
go-styx 
mvn versions:set -DnewVersion=1.05.0.01 -DgenerateBackupPoms=false
mvn-build 
history
cd ..
ll
cd branches
ll
cd ..
cd trunk/
stop-felix 
mvn-build && start-felix 
go-styx 
cd styx-sei-ws/
ll
vim 
fg
ll
vim pom.xml 
mvn clean install 
bg
fg
mvn clean install 
fg
mvn clean install 
stop-felix && mvn-build && start-felix 
sudo service networking restart
sudo iwlist wlan0 scann
top
go-felix 
rm -f logs/felix.log && touch logs/felix.log 
sudo reboot
vim /usr/share/themes/Faience/metacity-1/metacity-theme-1.xml 
ll .local/share/themes/Faience/
ll .local/share/themes/Faience/gnome-shell/
vim /usr/share/themes/Faience/metacity-1/metacity-theme-2.xml 
vim /usr/share/themes/Faience/metacity-1/metacity-theme-3.xml 
top
ps -ef | grep chrome
go-styx 
mvn-build && start-felix 
go-styx 
ll
cd styx-runner/
vim pom.xml
cd ..
vim pom.xml
stop-felix && mvn-build && start-felix 
go-styx 
mvn clean install
vim pom.cml
vim pom.xml
mvn clean install
ll
vim pom.xml
stop-felix && mvn-build && start-felix 
less logs/felix.
less logs/felix.log 
go-styx 
vim styx-runner/pom.xml
stop-felix && mvn-build && start-felix 
less logs/felix.
rm -f logs/felix.bkp.log 
less logs/felix.log 
stop-felix && mvn-build && start-felix 
less logs/felix.log 
stop-felix 
cd .vim
ll
ll bundle/
cd ..
ll
ll .vimamr/
ll
ll -a .vimamr/
ll -a
rm -rf ..vimamr/
ll
la
ll -a
vim
.vim/bundle/ack.vim/
l
cd .vim/bundle/ack.vim/
ll
ll autoload/
vim ~/.vimrc
cd ~/.local/share/applications/
ll
cd ..
ll
locate vim | grep \/home\/amr
cd /home/amr/.gconf/apps/gnome-settings/vim
ll
ll -a
vim %gconf.xml 
go-styx 
mvn-build && start-felix 
vim logs/felix.log 
cd ~/.vim/
ll
cd bundle/
ll
fg
cd ..
ll
cd .vimamr/
ll
ll -a
cd ~/tmp/
ll
ll -a
cd vun
cd vim
ll
./bootstrap.sh 
vim
cd ~/.vim
ll
cd bundle/
ll
ll ack.vim/
fg
cd
clear
gvim
vim
go-styx 
vim
cd ~/Documents/dev/groovy/
ll
cd grails/
ll
vim 
vim ~/.vimrc
vim
vim ~/.vimrc
sudo apt-get install ack-grep 
vim ~/.vimrc.local
go-styx 
cd ..
cd tmp/styx-parent-osgi/
ll
vim build.gradle 
vim ~/.vimrc.local 
vim build.gradle 
go-styx 
go-felix 
./felix.sh status
go-styx 
stop-felix && mvn-build && start-felix 
mvn-build   && start-felix 
less logs/felix.log 
stop-felix && mvn-build && start-felix 
mvn-build && start-felix 
less logs/felix.log 
go-styx 
cd styx-sei-ws/
mvn clean install
stop-felix && mvn-build && start-felix 
mvn-build && start-felix 
stop-felix && mvn-build && start-felix
stop-felix && mvn-build && start-felix 
stop-felix 
go-csf-parent 
svn up
mvn clean install -Dmaven.test.skip=true
mvn dependency:tree | grep 6.08
go-styx 
go-common-parent 
svn up
mvn clean install -Dmaven.test.skip=true
go-styx 
mvn-build
cd ~/Documents/dev/cipal/styx/branches/
svn co https://ontw-java-01.int.cipal.be/svn/styx/branches/SPRINT-4
cd SPRINT-4/styx-parent-osgi/
ll
vim pom.xml 
mvn clean install
vim 
fg
mvn clean install
svn ci . -m "styx-75 fix tests to pass the build process"
cd styx-runner/
mvn clean install pax:provision -Pstandalone && start-felix 
less logs/felix.log 
fg
stop-felix 
cd ../styx/branches/SPRINT-4/styx-parent-osgi/
ll
mvn clean install 
cd styx-runner/
mvn clean install pax:provision -Pstandalone && start-felix 
less logs/felix.log 
ll bundles/
stop-felix && rm -rf bundles/* felix/cache/runner/* && start-felix 
tail -f logs/felix.log 
tail -f logs/felix.log | grep ERROR
stop-felix 
ps -ef | grep felix
kill 25737
ps -ef | grep felix
kill -9 25737
kill 25739
ps -ef | grep felix
rm -rf logs/felix.log && touch logs/felix.log 
start-felix && tail -f logs/felix.log | grep ERROR
go-styx 
cd ../../branches/
cd SPRINT-4/styx-parent-osgi/
vim pom.xml 
cd styx-runner/
ll
mvn clean install pax:provision -Pstandalone
vim 
mvn clean install pax:provision -Pstandalone
mvn clean install pax:provision -Pstandalone > output.log
less output.log 
cd ..
grep 6\.08 -r ./*
rm -f styx-runner/output.log 
grep 6\.08 -r ./*
mvn dependency:tree
mvn dependency:tree > mvn_dependency_tree.log
less mvn_dependency_tree.log 
go-felix 
rm -rf bundles/* felix/cache/runner/*
ll
stop-felix 
rm -rf bundles/* felix/cache/runner/*
start-felix 
less logs/felix.log 
stop-felix 
rm -rf bundles/* felix/cache/runner/*
ll bundles/
start-felix 
less logs/felix.log 
go-styx 
vim pom.xml
mvn-build && start-felix 
less logs/felix.log 
vim ~/.bash_aliases 
go-felix 
rm -f logs/felix.log && touch logs/felix.log 
less logs/felix.log 
ll bundles/
rm -rf bundles/*
ll
stop-felix 
rm -rf felix/cache/runner/*
go-styx 
cd ..
cd styx/branches/SPRINT-4/styx-parent-osgi/
ll
cd styx-runner/
mvn clean install pax:provision -Pstandalone > output.log
ll
cat output.log 
less output.log 
mvn clean install pax:provision -Pstandalone
vim
vim 
vim distribution/pom.xml 
stop-felix 
cd ../styx/branches/SPRINT-4/styx-parent-osgi/
ll
cd styx--ru
cd styx-runner/
ll
cd runner/
ll
ll bundles/
mv bundles/ bundles_old
ll
mkdir bundles
vim 
cd ..
vim pom.xml 
svn diff pom.xml
svn diff --help
svn diff
svn revert pom.xml
vim pom.xml 
mvn clean install 
cd styx-runner/
mvn clean install pax:provision -Pstandalone
start-felix 
tail -f logs/felix.log 
cd ../styx/branches/SPRINT-4/styx-parent-osgi/
vim pom.xml 
mvn clean install && cd styx-runner/ && mvn clean install pax:provision -Pstandalone
cd ..
mvn clean install && cd styx-runner/ && mvn clean install pax:provision -Pstandalone
cd ~/.m2/repository/be/cipal/cipal-docsyncapplet/
ll
cd 0.01.0.02/
ll
stop-felix 
jo
jobs
fg
felix-status 
felix-stop 
ps -ef | grep felix
kill 4724
kill 4706
ps -ef | grep felix
go-dev 
cd python/django/
ll
cd auth_example/
ll
cd ..
mkvirtualenv django1.7
touch requirements.txt
cat auth_example/requirements.txt 
vim requirements.txt 
fg
bg
fg 1
pip install -r requirements.txt 
django-admin --help
django-admin startproject oauth-django17
django-admin startproject oauth_django17
ll
cd oauth_django17/
mv ../requirements.txt .
ll
ll ../auth_example/
python manage.py startapp accounts
python manage.py startapp registration
ll
git init
git remote add origin https://github.com/amr390/oauth_django17.git
git add .
git commit -m "first commit"
git push origin master
git pull
git branch --set-upstream-to=origin/master master
git pull
git status
git push
git status
ll
git status
git commit -a -m "add oauth and cors to installed apps, attach new urls to main urls file"
git status
ll
ll -a
touch scratchpad
vim scratchpad 
git commit -a -m "next steps"
git add .
git commit -m "next steps"
sudo apt-get update && sudo apt-get dist-upgrade 
sudo reboot
ll
go-styx 
svn up
mvn clean install
cd ../../branches/SPRINT-4/styx-parent-osgi/
mvn clean install
cd styx-runner/
mvn clean install pax:provision -Pstandalone
felix-status 
felix-stop 
cd -
cd ..
cd styx/branches/SPRINT-4/styx-parent-osgi/
cd styx-runner/
mvn clean install pax:provision -Pstandalone
felix-start 
less logs/felix.log 
felix-stop 
go-felix 
less logs/felix.log 
cd -
go-styx 
cd ..
cd branches/SPRINT-4/styx-parent-osgi/
mvn clean install && cd styx-runner/ && mvn clean install pax:provision -Pstandalone
felix-start
less logs/felix.log 
cd -
cd ..
svn up
