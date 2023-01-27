FROM jenkins/jenkins:lts

# skip the setup wizard
ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false"

# install plugins
# copy the list of plugins we want to install
COPY plugins.txt /usr/share/jenkins/plugins.txt
# run the install-plugins script to install the plugins
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt
