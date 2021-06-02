@echo off 
echo "migrating..." 
docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate & ^
if "%1"==s"eed (echo "seeding..."  docker exec samplelaravelreactapp_laravel.test_1 php artisan db:seed)