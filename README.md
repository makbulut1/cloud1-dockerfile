# DevOps Tools Docker Container

Bu Docker container'ı aşağıdaki araçları içerir:
- Make
- Terraform
- Ansible
- AWS CLI

## Kullanım

### Container'ı Build Etme

```bash
docker build -t devops-tools .
```

### Container'ı Çalıştırma

```bash
docker run -it devops-tools
```

### Versiyon Kontrolleri

Container içinde aşağıdaki komutlarla kurulu araçların versiyonlarını kontrol edebilirsiniz:

```bash
make --version
terraform --version
ansible --version
aws --version
```

## Not

AWS CLI kullanımı için, container'ı çalıştırırken AWS kimlik bilgilerinizi mount etmeniz gerekebilir:

```bash
docker run -it -v ~/.aws:/root/.aws devops-tools
``` 