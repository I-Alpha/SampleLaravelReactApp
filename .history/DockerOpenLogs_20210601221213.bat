docker exec echo echo "test log1" >> /proc/1/fd/1 -f test |tee %1