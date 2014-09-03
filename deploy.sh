#!/bin/sh
bundle exec middleman build
bundle exec middleman s3_sync

# Old sync using aws tools
# aws s3 rm s3://jonlin.es --recursive --region=ap-southeast-1
# aws s3 sync build s3://jonlin.es --acl public-read --cache-control "public, max-age=43200" --region ap-southeast-1
