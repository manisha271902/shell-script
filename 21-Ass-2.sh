#develop a backup script that takes a source direcory  and a destination direcotory as input
#and creates a compressed archive (,tar.gz) of the source directory in the destination folder with a timestamp

#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%S)
SOURCE_DIR=/home/ec2-user/ex1
DEST_DIR=/home/ec2-user/ex2
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

SOURCE_DIR=$1
DEST_DIR=$2

if [ $# -ne 2 ]
then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1


# # Check if source directory exists
# if [ ! -d "$SOURCE_DIR" ]; then
#     echo "Source directory $SOURCE_DIR does not exist."
#     exit 1
# fi

# # Check if destination directory exists, create if it does not
# if [ ! -d "$DEST_DIR" ]; then
#     mkdir -p "$DEST_DIR"
# fi

BACKUP_FILE_NAME="backup_SC_${TIMESTAMP}.tar.gz"
BACKUP_FILE_PATH="${DEST_DIR}/${BACKUP_FILE_NAME}"

#tar [option] [archive-filename] [file-or-folder-to-be-archived]
# tar --create --file="$BACKUP_FULE_PATH" "$SRC_DIR" &>>$LOG_FILE
tar -czf "$BACKUP_FILE_PATH" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"
 

# Print success message
if [ $? -eq 0 ]; then
    echo "Backup created successfully at $BACKUP_FILE_PATH"
else
    echo "Backup failed"
    exit 1
fi



