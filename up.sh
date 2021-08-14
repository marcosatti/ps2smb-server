# By name
# RUN_USER=user
# RUN_GROUP=public_readwrite
# export RUN_UID=$(id -u $RUN_USER)
# export RUN_GID=$(getent group $RUN_GROUP | cut -d: -f3)

# By ID
export RUN_UID=1000
export RUN_GID=1001

export RUN_PORT=1011
export RUN_MOUNT=/mnt/sdx1

#####################################################

echo "UID is $RUN_UID"
echo "GID is $RUN_GID"
echo "PORT is $RUN_PORT"
echo "MOUNT is $RUN_MOUNT"

echo "Starting"
podman-compose up -d
