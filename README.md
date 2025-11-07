# README

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
