import pandas as pd

df = pd.read_csv("data.csv", header=None, names=["day", "length"])

# dataframe is separated by negative values in first column vertically actually this should be 3 datasets

split_index = df[df["day"] < 0].index.tolist()

df1 = df.iloc[:split_index[0]]
df2 = df.iloc[split_index[0] + 1:split_index[1]] if len(split_index) > 1 else df.iloc[split_index[0] + 1:]
df3 = df.iloc[split_index[1] + 1:] if len(split_index) > 1 else pd.DataFrame()

# plottting

def plot_data(df, title):
    import matplotlib.pyplot as plt

    plt.figure(figsize=(10, 5))
    plt.scatter(df["day"], df["length"], marker='o')
    plt.title(title)
    plt.xlabel("Day")
    plt.ylabel("Length")
    plt.grid()
    plt.show()

# df1 is data on 15°C
# df2 is data on 11°C
# df3 is data on 13°C

# round length to 2 decimal places
df1["length"] = df1["length"].round(2)/10
df2["length"] = df2["length"].round(2)/10
df3["length"] = df3["length"].round(2)/10

# set days as integers
df1["day"] = df1["day"].astype(int)
df2["day"] = df2["day"].astype(int)
df3["day"] = df3["day"].astype(int)

# plot the data
plot_data(df1, "Data at 15°C")
plot_data(df2, "Data at 13°C")
plot_data(df3, "Data at 11°C")

# save the dataframes to csv files
df1.to_csv("huang2024_data_15C.csv", index=False)
df2.to_csv("huang2024_data_13C.csv", index=False)
df3.to_csv("huang2024_data_11C.csv", index=False)

# same thing for the other datasets
df = pd.read_csv("data_WeltonClarkA.csv", header=None, names=["day", "length"])

# this dataset is not separated by negative values
df["day"] = df["day"].astype(int)
df["length"] = df["length"].round(2)

# plot the data
plot_data(df, "Welton Clark A Data")

# save the dataframe to csv file
df.to_csv("welton_clark_a_data.csv", index=False)


# do the same for data_WeltonClarkB.csv
df = pd.read_csv("data_WeltonClarkB.csv", header=None, names=["day", "length"])
# this dataset is not separated by negative values
df["day"] = df["day"].astype(int)
df["length"] = df["length"].round(2)/10
# plot the data
plot_data(df, "Welton Clark B Data")
# save the dataframe to csv file
df.to_csv("welton_clark_b_data.csv", index=False)
# do the same for data_WeltonClarkC.csv
df = pd.read_csv("data_WeltonClarkC.csv", header=None, names=["day", "length"])
# this dataset is not separated by negative values
df["day"] = df["day"].astype(int)
df["length"] = df["length"].round(2)/10
# plot the data
plot_data(df, "Welton Clark C Data")
# save the dataframe to csv file
df.to_csv("welton_clark_c_data.csv", index=False)
# do the same for data_WeltonClarkD.csv
df = pd.read_csv("data_WeltonClarkD.csv", header=None, names=["day", "length"])
# this dataset is not separated by negative values
df["day"] = df["day"].astype(int)
df["length"] = df["length"].round(2)/10
# plot the data
plot_data(df, "Welton Clark D Data")
# save the dataframe to csv file
df.to_csv("welton_clark_d_data.csv", index=False)
