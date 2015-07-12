# Average Category Share
Business = sum(train$shares[which(train$Category_article=="Business")])/length(which(train$Category_article=="Business"))
Entertainment = sum(train$shares[which(train$Category_article=="Entertainment")])/length(which(train$Category_article=="Entertainment"))
LifeStyle = sum(train$shares[which(train$Category_article=="LifeStyle")])/length(which(train$Category_article=="LifeStyle"))
SocialMedia = sum(train$shares[which(train$Category_article=="Social Media")])/length(which(train$Category_article=="Social Media"))
Technology = sum(train$shares[which(train$Category_article=="Technology")])/length(which(train$Category_article=="Technology"))
World = sum(train$shares[which(train$Category_article=="World")])/length(which(train$Category_article=="World"))
Others = sum(train$shares[which(train$Category_article=="Others")])/length(which(train$Category_article=="Others"))

Dataframe = data.frame(Category=c("Business","Entertainment","LifeStyle","SocialMedia","Technology","World","Others"),shares=c(Business,Entertainment,LifeStyle,SocialMedia,Technology,World,Others))
#Category        shares
#1      Business 3229.029
#2 Entertainment 2896.784
#3     LifeStyle 3676.391
#4   SocialMedia 3471.905
#5    Technology 2992.724
#6         World 2327.418
#7        Others 5934.069

# plotting the above dataframe
ggplot(Dataframe,aes(x=Category,y=shares)) + geom_bar(stat="identity")

# Now compare the above plot with this (Overall Category Share)
ggplot(train,aes(x=Category_article,y=shares)) + geom_bar(stat="identity")

