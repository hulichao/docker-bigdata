FROM centos:7
MAINTAINER hulichao <whu_hlc@163.com>
LABEL jdk.version="1.8" \
      contains.ssh="true"
# root password
RUN echo 'root:123456' | chpasswd
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# 为解决Header V3 RSA/SHA256 Signature, key ID f4a80eb5: NOKEY问题
RUN rpm --import /etc/pki/rpm-gpg/RPM*

RUN \
    yum -y install \
        openssh openssh-server openssh-clients \
        sudo passwd wget &&\
        sudo yum -y install rsync &&\
        yum clean all

RUN ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -q -N "" -t rsa -f /root/.ssh/id_rsa
RUN cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys

ADD scripts/rsync-script /usr/local/bin
RUN chmod 777 /usr/local/bin/rsync-script

# 设置sshd
#RUN sshd-keygen和容器内ip免密登录
RUN sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && \
sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config && \
sed -i "s/#PermitEmptyPasswords/PermitEmptyPasswords/g" /etc/ssh/sshd_config && \
sed -i "s/#PermitRootLogin/PermitRootLogin/g" /etc/ssh/sshd_config && \
echo " StrictHostKeyChecking no" >> /etc/ssh/ssh_config && \
echo " UserKnownHostsFile /dev/null" >> /etc/ssh/ssh_config

RUN mkdir /var/run/sshd
RUN mkdir -p /opt/hoult/servers && \
    mkdir -p /opt/hoult/software
RUN wget https://repo.huaweicloud.com/java/jdk/8u151-b12/jdk-8u151-linux-x64.tar.gz && \
       tar -zxvf jdk-8u151-linux-x64.tar.gz -C /opt/hoult/servers/ && \
       mv jdk-8u151-linux-x64.tar.gz /opt/hoult/software/

#ADD ./jdk-8u151-linux-x64.tar.gz /usr/local/

ENV JAVA_HOME /opt/hoult/servers/jdk1.8.0_151
ENV PATH $JAVA_HOME/bin:$PATH

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
