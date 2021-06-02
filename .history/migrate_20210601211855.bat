if %1=="seed" ^
docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate && ^ 
docker exec samplelaravelreactapp_laravel.test_1 php artisan db:seed)
ELSE
  docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate