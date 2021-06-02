
if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)
docker attach samplelaravelreactapp_laravel.test_1  >> DockerLogs/Attached_logfile.txt