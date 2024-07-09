FROM maven:3.9.8
RUN adduser -s /bin/sh -h /home/jenkins jenkins
RUN mkdir -p /home/jenkins/.m2 && chown -R jenkins:jenkins /home/jenkins/.m2
USER jenkins
ENV HOME /home/jenkins