FROM java:8
COPY src /home/root/javahelloworld2/src
WORKDIR /home/root/javahelloworld2
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
