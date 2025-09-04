FROM rockylinux:9
LABEL "Project"="DeployFrontend"

RUN dnf -y install epel-release 
RUN dnf -y install nginx 
RUN dnf clean all

WORKDIR /usr/share/nginx/html

ADD ../app/app.tar.gz .

EXPOSE 80

# start nginx in background
CMD ["nginx", "-g", "daemon off;"]
