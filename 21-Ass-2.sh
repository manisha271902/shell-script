#develop a backup script that takes a source direcory  and a destination direcotory as input
#and creates a compressed archive (,tar.gz) of the source directory in the destination folder with a timestamp

#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%S)
SRC_DIR=/home/ec2-user/ex1
DEST_DIR=/home/ec2-user/ex2
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


BACKUP_FILE_NAME="backup_SC_${TIMESTAMP}.tar.gz"
BACKUP_FILE_PATH="${DEST_DIR}/${BACKUP_FILE_NAME}"

#tar [option] [archive-filename] [file-or-folder-to-be-archived]
tar --create --file="$BACKUP_FULE_PATH" "$SRC_DIR" &>>$LOG_FILE
VALIDATE $? 

# Print success message
if [ $? -eq 0 ]; then
    echo "Backup created successfully at $BACKUP_FILE_PATH"
else
    echo "Backup failed"
    exit 1
fi



