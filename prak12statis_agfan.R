#Latihan Pertama

df_agfan=read.delim("clipboard")
head(df_agfan)
model_reg=lm(df_agfan$Y~df_agfan$X)
summary(model_reg)

#Latihan Kedua

df_agfan=read.delim("clipboard")
df_agfan$brick_dummy <- ifelse(df_agfan$Brick =="Yes", 1,0)
df_agfan$N_dummy1 <- ifelse(df_agfan$Neighborhood =="West", 1,0)
df_agfan$N_dummy2 <- ifelse(df_agfan$Neighborhood =="North", 1,0)
model=lm(df_agfan$Price~df_agfan$SqFt+df_agfan$Bedrooms+df_agfan$Bathrooms+df_agfan$brick_dummy+df_agfan$N_dummy1+df_agfan$N_dummy2)
summary(model)

by(df_agfan$Price, df_agfan$Neighborhood, mean)
by(df_agfan$Price, df_agfan$Brick, mean)
