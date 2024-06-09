import datetime

from airflow import DAG
from airflow.operators.empty import EmptyOperator

with DAG(
    dag_id="my_dag_name",
    start_date=datetime.datetime(2024, 1, 1),
    schedule="@daily",
):
    t1 = EmptyOperator(task_id="task1")

    t2 = EmptyOperator(task_id="task2")

[t1 >> t2]