
echo "migrating..." 

SET str1 = "docker exec samplelaravelreactapp_laravel.test_1 php artisan"
echo %str1%
@echo off
if %1=="seed"
(echo  "seeding..." & %str1% db:seed ) else (echo %str1%)