"migrating..."
if %1=="seed" ^
(
  docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate && ^ 
  echo  "seeding..." docker exec samplelaravelreactapp_laravel.test_1 php artisan db:seed)
ELSE ( 
  docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate)