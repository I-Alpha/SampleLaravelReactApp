@echo off 
echo "migrating..." 
set str1 = "docker exec samplelaravelreactapp_laravel.test_1 php artisan"
echo %str1%
if %1=="seed" (echo "seeding..."  docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate "db:seed" ) else (docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate)