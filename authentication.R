library(ROAuth)
library(twitteR)

consumer_key <-  #Consumer key
"o62HdxiML5udFNQSDp6EdYosl"
consumer_secret <- #Consumer secret
"kGfz0GsZjnwsSvrQZukndXoRKFw2WFfq2qsm3A9WKqYH0aZX8U"
access_token <- #Access token
"1021967098774347777-PbuuaVXb587hzNMWlUbKVnNh5YKLrb"
access_secret <- #Access secret
"1yogPrNJSveejG3rDgvHmgo5fAshjvhplpirFOF3IhGZ8"

download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile="cacert.pem") #downloads the certificate

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

cred <- OAuthFactory$new(consumerKey=consumer_key, 
	consumerSecret=consumer_secret,
	requestURL='https://api.twitter.com/oauth/request_token',
	accessURL='https://api.twitter.com/oauth/access_token',
	authURL='https://api.twitter.com/oauth/authorize')

cred$handshake(cainfo="cacert.pem")

