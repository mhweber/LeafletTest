library(leaflet)
library(rgdal)

m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=-123.269010, lat=44.565396, popup="Start/Finish")
m

Route10K <- geojsonio::geojson_read("FallFestival10K.geojson", what = "sp")

m <- leaflet(Route10K) %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addPolylines(color = "red") %>%
  addLabelOnlyMarkers(lng=-123.269010, lat=44.565396,label='Start/Finish',
             labelOptions = labelOptions(noHide = T, textsize = "10px")) %>%
  addLabelOnlyMarkers(lng=-123.284609, lat=44.569645,label='1 mi.',
                      labelOptions = labelOptions(noHide = T, textsize = "10px")) %>%
  addLabelOnlyMarkers(lng=-123.284609, lat=44.569645,label='2 mi.',
                      labelOptions = labelOptions(noHide = T, textsize = "10px")) %>%
  addLabelOnlyMarkers(lng= -123.284609, lat=44.569645,label='3 mi.',
                      labelOptions = labelOptions(noHide = T, textsize = "10px")) %>%
  addLabelOnlyMarkers(lng= -123.288290, lat=44.566780,label='4 mi.',
                      labelOptions = labelOptions(noHide = T, textsize = "10px")) %>%
  addLabelOnlyMarkers(lng= -123.281531, lat=44.557087,label='5 mi.',
                      labelOptions = labelOptions(noHide = T, textsize = "10px")) %>%
  addLabelOnlyMarkers(lng= -123.273752, lat=44.566069,label='5 mi.',
                      labelOptions = labelOptions(noHide = T, textsize = "10px")) %>%
  addLabelOnlyMarkers(lng=-123.295010, lat=44.579396,label='10K Route',
             labelOptions = labelOptions(noHide = T, textsize = "16px"))
m

