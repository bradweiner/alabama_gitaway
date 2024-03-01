import pandas as pd
import numpy as np
import polars as pl

# read in a json file grateful dead setlist.json

df = pd.read_json('setlists.json',)
df.head()
df[1]


df = pl.read_json('data\careerTotals.json')
df.head()


