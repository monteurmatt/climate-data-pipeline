#Used to include ID Column

#<bash> pip install pandas

#<use python on bash and paste:>
import pandas as pd
df = pd.read_csv("./data/city_temperature.csv")
df.insert(0, "id", range(1, len(df) + 1))
df.to_csv("./data/city_temperature2.csv", index=False)
