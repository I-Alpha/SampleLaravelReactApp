
if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)
docker l samplelaravelreactapp_laravel.test_1  >> DockerLogs/Attached_logfile.txt