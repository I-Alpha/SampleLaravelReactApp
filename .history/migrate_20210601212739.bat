echo "migrating..." 
SET str1 = docker exec samplelaravelreactapp_laravel.test_1


if %1=="seed" ( echo  "seeding..." & ^ sr php artisan db:seed) ^ 
else ( 
docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate)