echo "migrating..." 
SET str1 = docker exec samplelaravelreactapp_laravel.test_1


if %1=="seed" ( echo  "seeding..." & ^ str1  php artisan db:seed) ^ 
else ( 
docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate)