FROM quay.io/fedora/fedora:38
MAINTAINER Leif Madsen (lmadsen@redhat.com)

RUN dnf install -y net-snmp
ADD snmptrapd.conf /etc/snmp/snmptrapd.conf
EXPOSE 162
CMD ["snmptrapd","-f","-C","-c","/etc/snmp/snmptrapd.conf","-Lo","-OT","-d"]
