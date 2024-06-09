# dio-docker-projeto1

## Descrição do Desafio

O objetivo desse projeto é para executar uma aplicação web utilizando o Docker Compose.

## Escopo da Solução Proposta

Será implementado o Apache Airflow com um banco de dados PostgreSQL e o Redis, que será utilizado para encaminhar mensagens do Scheduler para os Workers.

### Pré-requisitos

- Ter o [Docker](https://docs.docker.com/engine/install/) instalado.

## Instalação

1. Clonar o repositório:
    ```bash
    git clone <URL-do-repositório>
    cd dio-docker-projeto1
    ```
2. Inicialize o ambiente do Airflow::
    ```bash
    mkdir -p ./logs ./configs ./dags ./data/postgres ./data/redis
    echo -e "AIRFLOW_UID=$(id -u)" > .env
    ```
3. Execute o Docker Compose:
    ```bash
    docker compose up -d
    ```

## Uso

1. Acesse a interface web do Airflow no navegador:
    ```bash
    http://localhost:8080
    ```
    - Usuário: definido no arquivo .env `$__AIRFLOW_WWW_USER_USERNAME_`
    - Senha: definido no arquivo .env `$__AIRFLOW_WWW_USER_PASSWORD_`

2. Adicione suas DAGs no diretório `dags`.

3. Monitore e gerencie seus workflows através da interface web.

## Estrutura do Projeto

```
├── configs
│   ├── airflow.cfg
│   └── webserver_config.py
├── dags
│   └── exemplo_dag.py
├── data
│   ├── postgres/
│   └── redis/
├── logs
├── .env
├── docker-compose.yaml
├── Dockerfile
├── README.md
└── requirements.txt
```

## Referências

- [Documentação Oficial do Apache Airflow](https://airflow.apache.org/docs/apache-airflow/stable/index.html)
- [Docker Compose para Apache Airflow](https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html)
