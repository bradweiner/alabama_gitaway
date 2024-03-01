### Hey Jeff!

I put together a quick prototype to see if it would be possible to extract setlists data
from the giant, messy JSON file. Turns out, that it's a pretty big rat's next,
but with a bit of trial and error, it seems doable.

The kicker, is that it may take a bit to structure the data in a way that
makes sense. Initial thought, if you wanted a rectangle would be to have 
every song represented on a row. So a show with 15 songs would have 15 rows
including all of the appended data.

The way the data are currently structured, is imagine that a single column of data
(say column G in Excel) isn't just a single piece of data, but instead _another_ Excel
spreadsheet with multiple columns. So you have to _deep_ to get the specifics.

Just so you can see what's going on check the code folder and look for

`unpack_json.R`

You can also check out the data folder for a quick look at a specific Denver setlist

`/data/denver_setlist.csv`

This data set has tons of information in it including tour level data, lat, longs
for venues/cities which could be used to geographically visualize shows or tours.

