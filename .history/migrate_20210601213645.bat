
echo "migrating..." 

SET str1 = "docker exec samplelaravelreactapp_laravel.test_1 php artisan db:seed"
echo %str1% 
if %1==seed (echo  "seeding..." & %str1 "" ) else (echo %str1%)