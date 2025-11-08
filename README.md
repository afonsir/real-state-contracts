# README

### Docker
* Comando para listar containers:
```bash
docker container ls --all
```
* Comando para parar containers:
```bash
docker container stop <container_name>
```
* Comando para remover containers:
```bash
docker container rm <container_name>
```
* Comando para remover todos containers parados:
```bash
docker container prune
```
* Comando para listar volumes:
```bash
docker volume ls
```
* Comando para remover volumes:
```bash
docker volume rm <volume_name>
```
* Comando para remover todos volumes não utilizados:
```bash
docker volume prune
```

### Início do projeto
* Comando para criar o banco de dados:
```bash
bin/rails db:create
```
* Comando para rodar migrações pendentes:
```bash
bin/rails db:migrate
```
* Comando para subir o servidor:
```bash
bin/rails server
```

### Gems
* Comando para instalar gems:
```bash
bundle install
```

### Migrações
* Comando para criar uma nova migração:
```bash
bin/rails generate migration CreateBuyers
```
* Comando para verificar as migrações pendentes:
```bash
bin/rails db:migrate:status
```
* Comando para rodar uma migração específica:
```bash
bin/rails db:migrate:<up||down> VERSION=<timestamp>
```
* Comando para rodar todas as migrações pendentes:
```bash
bin/rails db:migrate
```

### Linting
* Comando para rodar **rubocop**:
```bash
rubocop <filepath>
```
