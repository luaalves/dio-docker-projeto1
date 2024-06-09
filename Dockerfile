# Apontar para a imagem oficial do Airflow
FROM apache/airflow:slim-2.9.1-python3.11
# Copiando o arquivo com as dependências para dentro do container
ADD requirements.txt .
# Copiando o arquivo de configuração do Servidor Web para dentro do container
ADD ./configs/webserver_config.py .
# Copiando o arquivo de configuração do Airflow para dentro do container
ADD ./configs/airflow.cfg .
# Apagando arquivo do SQLite
RUN rm -f airflow.db
# Atualizando o Pip
RUN python -m pip install --upgrade pip
# Instalando as dependências
RUN pip install -r requirements.txt --no-cache-dir
# Atualizando estrutura das tabelas de metadados se necessário
RUN airflow db migrate
