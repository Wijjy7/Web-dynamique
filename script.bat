cd Framework/src
javac -d . annotation/*.java
javac -d . etu1815/framework/*.java
javac -d . etu1815/framework/servlet/*.java
javac -d . helper_classes/*.java
cd ../../
jar cvf Framework.jar  -C Framework/src/ .
copy "Framework.jar" "Test framework/WEB-INF/lib/"

cd "Test framework/WEB-INF/classes/"
javac -cp "../lib/Framework.jar" -d . connection/*.java
javac -cp "../lib/Framework.jar" -d . model/*.java
cd ../../../

cd "Test framework"
jar cvf TestFramework.war *
copy "TestFramework.war" "E:\Nouveau dossier (3)\webapps"
cd ../