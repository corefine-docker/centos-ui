from fine/centos
RUN yum groupinstall GNOME Desktop -y
RUN unlink  /etc/systemd/system/default.target
RUN ln -sf  /lib/systemd/system/graphical.target   /etc/systemd/system/default.target
RUN yum -y install tigervnc-server tigervnc-server-module
