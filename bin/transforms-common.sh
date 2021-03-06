#!/bin/bash
# 
# transforms-common.sh
# 
# author: opensource@tacc.cloud
#
# URL filter for transforms services
#

filter_service_url() {
	if [[ -z $hosturl ]]; then
		if ((development)); then 
			hosturl="$devurl/transforms/"
		else
			hosturl="$baseurl/transforms/$version/"
		fi
	fi
}

