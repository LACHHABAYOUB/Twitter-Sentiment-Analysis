#Extract tweets. Example-
lachhab.tweets = searchTwitter("LACHHAB", n=10)  

df <- do.call("rbind", lapply(lachhab.tweets, as.data.frame))

df$text <- sapply(df$text,function(row) iconv(row, "latin1", "ASCII", sub="")) #remove emoticon
df$text = gsub("(f|ht)tp(s?)://(.*)[.][a-z]+", "", df$text) #remove URL
sample <- df$text
