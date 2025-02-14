
1.
su <- read.delim("Su_raw_matrix.txt")

mean(su$Liver_2.CEL)
sd(su$Liver_2.CEL)

colMeans(su)
colSums(su)

2. 
hist(rnorm(10000, mean=0, sd=0.2), xlin=c(-5,5))
hist(rnorm(10000, mean=0, sd=0.5), xlim=c(-5,5))

3.
a) dat <- data.frame(cond = factor(rep(c("A", "B"), each=200)), 
    rating = c(rnorm(200), rnorm(200, mean=0.8)))

b) ggplot(dat, aes(x=rating, fill=cond)) + 
  geom_histogram(binwidth=.5, alpha=.5, position="identity")

c) ggplot(dat, aes(x=rating, fill=cond)) + 
  geom_histogram(binwidth=.5, position="dodge")

d) ggplot(dat, aes(x=rating, colour=cond)) + 
  geom_density()

e) ggplot(dat, aes(x=rating, fill=cond)) + 
  geom_density(alpha=.3)\

f) diabetes <- read.csv("diabetes_train.csv")
    b) ggplot(diabetes, aes(x=mass, fill=class)) + 
  geom_histogram(binwidth=.5, alpha=.5, position="identity")

    c) ggplot(diabetes, aes(x=mass, fill=class)) + 
  geom_histogram(binwidth=.5, position="dodge")

    d) ggplot(diabetes, aes(x=mass, colour=class)) + 
  geom_density()

    e) ggplot(diabetes, aes(x=mass, fill=class)) + 
  geom_density(alpha=.3)

4. passengers <- read.csv("titanic.csv")
        # removes na values and summarizes passengers
    a) passengers %>% drop_na() %>% summary()
        # filters for only male passengers
    b) passengers %>% filter(Sex == "male")
        # sorts passengers by their fare in descending
    c) passengers %>% arrange(desc(Fare))
        # create a new col FamSize (parch+SibSp)
    d) passengers %>% mutate(FamSize = Parch + SibSp)
        # group passengers by sex and summarize their mean fare and num survived
    e) passengers %>% group_by(Sex) %>%
  summarise(meanFare = mean(Fare), numSurv = sum(Survived))

5. 
quantile(diabetes$skin, probs = c(0.1, 0.3, 0.5, 0.6))