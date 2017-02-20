source("productmm.R")

x <- productmv("tblAkv3x3.csv", "tblxkv3_test.csv", 3, 80)
print(x)

y <- productmm("tblAkv10x10.csv", "tblAkv10x10.csv", 10, 80)
print(y)



