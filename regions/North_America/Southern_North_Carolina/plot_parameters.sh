#! /bin/bash


###############################################################
# parameters for the regional map plots
###############################################################

# center point for US based Lambert azimuthal projection (EPSG 2163)
center_longitude=-100
center_latitude=45

# corners of the main plot with the locations of the data
bottom_long=-79.5
bottom_lat=33
top_long=-74
top_lat=35.57

R_main="-R${bottom_long}/${bottom_lat}/${top_long}/${top_lat}r"
J_main="-JA${center_longitude}/${center_latitude}/${width}c"


# corners for the inset map
small_west_latitude=30
small_west_longitude=-88
small_east_latitude=40
small_east_longitude=-68

R_insert="-R${small_west_longitude}/${small_west_latitude}/${small_east_longitude}/${small_east_latitude}r"
J_insert="-JA${center_longitude}/${center_latitude}/${insert_width}c"

# location of where the scale bar is plotted. Takes some trial and error to get it in the right spot.
scale_bar_lat=35.4
scale_bar_long=-74.7
# this is the latitude where it measures the width of the scale bar. Remember, the width will change depending on latitude!
scale_bar_reference_lat=34.6
# width is in km
scale_bar_width=100


# shift where the insert map should go. 
insert_position="br" # can be tr or br
