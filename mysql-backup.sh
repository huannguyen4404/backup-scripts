#!/bin/bash


# where to backup
dest="/home/www/backup_db"

# create backup folder if not exist
mkdir -p $dest

# print start status message
echo "========================== LOG ==============================="
echo ""
echo "Starting script..."
date

# database backup 
mysqldump -u sociosite sociosite | gzip > "$dest/sociosite.$(date +%F.%H%M%S).sql.gz"
mysqldump -u sociosite dotaholic | gzip > "$dest/dotaholic.$(date +%F.%H%M%S).sql.gz"
mysqldump -u sociosite mbtitest | gzip > "$dest/mbtitest.$(date +%F.%H%M%S).sql.gz"
mysqldump -u sociosite gametruyenky | gzip > "$dest/gametruyenky.$(date +%F.%H%M%S).sql.gz"

# print end status message
echo "."
echo "."
echo "."
echo "... Backup SUCCESS!"
date
echo ""
echo "Delete old files !"
find $dest -mtime +14 -type f
find $dest -mtime +14 -type f -delete
echo ""

# echo generated files
echo "Files generated"
ls -lh $dest
