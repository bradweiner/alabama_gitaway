library(tidyverse)
library(janitor)
library(magrittr)

# read in setlists.json
setlists <- jsonlite::fromJSON("data/gratefulSetlist.json")
head(setlists)

# create a vector of event dates
event_dates <- setlists$setlists$eventDate
head(event_dates)

#create a vector for venues
venues <- setlists$setlists$venue$name

# create a vector for eventids
eventids <- setlists$setlists$id

# create a vector for city
city <- setlists$setlists$venue$city$name


df <- data.frame(eventids, event_dates, venues, city)
head(df)
df <- janitor::clean_names(df)

denver <- filter(df, city == "Denver")
head(denver)

# id I am looking ofr is
#33d60015

# filter the setlist json file to grab eventid 33d60015
denver_setlist <- filter(setlists$setlists, id == "33d60015")
denver_setlist <- c(denver_setlist[[1]][["song"]][[1]][["name"]],
                    denver_setlist[[1]][["song"]][[2]][["name"]],
                    denver_setlist[[1]][["song"]][[3]][["name"]])

write.csv(denver_setlist, "data/denver_setlist.csv",row.names = FALSE)
