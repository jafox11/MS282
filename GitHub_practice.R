## This is a sample R file for practicing using GitHub for collaboration. ##

# Read in and clean the Office ratings data set:

office_ratings <- readr::read_csv('https://raw.githubusercontent.com/jafox11/MS282/main/office_ratings.csv')
office_ratings$season <- as.character(office_ratings$season)
office_ratings$air_date <- as.Date(office_ratings$air_date, "%m/%d/%Y")

office_ratings

ggplot(office_ratings) +
  geom_point(aes(viewers, imdb_rating))

