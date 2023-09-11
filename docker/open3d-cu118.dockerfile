FROM quay.io/pypa/manylinux2014_x86_64:latest
RUN yum install -y wget xorg-x11-server-devel libxcb-devel python-devel mesa-libGLU-devel glfw-devel
RUN yum install -y SDL2-devel ninja-build libXi-devel
RUN yum install -y mesa-libOSMesa-devel
RUN yum install -y mesa-libGLU-devel mesa-libGLw-devel
RUN yum -y install yum-utils && yum-config-manager --add-repo http://developer.download.nvidia.com/compute/cuda/repos/rhel7/x86_64/cuda-rhel7.repo && yum --enablerepo=epel -y install cuda-11-8
WORKDIR /root
