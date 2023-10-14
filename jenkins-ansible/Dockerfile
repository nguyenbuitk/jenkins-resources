FROM jenkins/jenkins

USER root

# RUN apt-get update && apt-get install python3-pip -y && \
#   apt install ansible -y 

RUN apt-get update && apt-get install -y python3-venv

RUN python3 -m venv /opt/ansible-venv
ENV PATH="/opt/ansible-venv/bin:$PATH"
RUN pip install --upgrade pip ansible

RUN usermod -u 1001 jenkins && \
  groupmod -g 1001 jenkins && \
  usermod -aG 1001 jenkins

USER jenkins
