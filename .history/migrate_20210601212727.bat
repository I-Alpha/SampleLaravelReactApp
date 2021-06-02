echo "migrating..." 
SET str1 = 
if %1=="seed" ( echo  "seeding..." & ^ docker exec samplelaravelreactapp_laravel.test_1 php artisan db:seed) ^ 
else ( 
docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate)