#!/bin/sh
# Program created by Josef Anhede
# Allows easy lookup of geolocation of IPs
# iplook <IP> [-g|--gmaps]

function ipgeo(){
	# Loop through arguments and process them
	unset GOOGLE_MAPS
        for arg in "$@"
        do
                case $arg in
                        -g|--gmaps)
                        GOOGLE_MAPS=1
                        shift # Remove --internal from processing
                        ;;
                esac
        done
	IP=$1

	# Query API for data
	XML=$(curl "http://api.geoiplookup.net/?query=$IP" -s)

	# Keyword Extraction
	COUNTRY=$(echo $XML | xmllint --nowarning --format --xpath '/ip/results/result/countryname/text()' -)
	LATITUDE=$(echo $XML | xmllint --nowarning --format --xpath '/ip/results/result/latitude/text()' -)
	LONGITUDE=$(echo $XML | xmllint --nowarning --format --xpath '/ip/results/result/longitude/text()' -)

	echo "$COUNTRY ($LATITUDE, $LONGITUDE)"
	if [ "$GOOGLE_MAPS" = "1" ]; then
		echo "http://www.google.com/maps/place/$LATITUDE,$LONGITUDE"
	fi
	unset IP XML COUNTRY LATITUDE LONGITUDE GOOGLE_MAPS
}
