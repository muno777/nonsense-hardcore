export ORIG_PATH=$PATH

# use Java 21 instead of Java 25
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

# build it
./gradlew build

# TODO: copy it
cp /home/muno/Files/Apps/nonsense-hardcore/build/libs/NonsenseHardcore-1.0.0-all.jar /home/muno/Files/Apps/PaperMC/plugins/NonsenseHardcore-1.0.0-all.jar

# switch back to Java 25
export PATH=$ORIG_PATH

# run the server
cd /home/muno/Files/Apps/PaperMC
./run-server.sh