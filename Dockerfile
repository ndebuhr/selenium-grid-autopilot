FROM codercom/code-server:4.89.1

RUN sudo apt-get update && \
    sudo apt-get install -y python3 python3-pip && \
    sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/*

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && \
    rm kubectl
