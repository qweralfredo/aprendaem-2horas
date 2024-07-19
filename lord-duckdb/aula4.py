import pandas as pd
from pyarrow import dataset as ds
import duckdb

acsv = ds.dataset('/workspaces/aprendaem-2horas/lord-duckdb/data/aula4/yellow_tripdata_2017-01.parquet')
working_columns = ["VendorID","tpep_pickup_datetime","tpep_dropoff_datetime","passenger_count","trip_distance","RatecodeID","store_and_fwd_flag","PULocationID","DOLocationID","payment_type","fare_amount","extra","mta_tax","tip_amount","tolls_amount","improvement_surcharge","total_amount","congestion_surcharge","airport_fee"]
dataset_scanner = acsv.scanner(columns=working_columns)
nyc_table = dataset_scanner.to_table()
con = duckdb.connect(database='lord-duckdb/data/aula4.duckdb', read_only=False)
con.execute("SET threads = 4;")
con.execute("PRAGMA enable_optimizer;")
con.execute("SET memory_limit = '1GB';")
con.execute("SET temp_directory = '/workspaces/aprendaem-2horas/lord-duckdb/data/tmp/';")
df = con.execute("SELECT * FROM nyc_table limit 10 ").df()
print(df)
