FROM python:3.9-slim

# Install required system packages
RUN apt-get update && apt-get install -y \
    make \
    curl \
    unzip \
    git \
    gnupg \
    lsb-release \
    && rm -rf /var/lib/apt/lists/*

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf aws awscliv2.zip

# Install Terraform
RUN curl -fsSL https://releases.hashicorp.com/terraform/1.7.4/terraform_1.7.4_linux_amd64.zip -o terraform.zip \
    && unzip terraform.zip \
    && mv terraform /usr/local/bin/ \
    && rm terraform.zip

# Install Ansible
RUN pip install --no-cache-dir ansible

# Set working directory
WORKDIR /workspace

# Default command
CMD ["/bin/bash"] 
