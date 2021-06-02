
echo "migrating..." 

SET str1 = "docker exec samplelaravelreactapp_laravel.test_1 php artisan"
echo %str1% 
if %1==seed (echo  "seeding..." & %str1 "'d"b:seed' ) else (echo %str1%)