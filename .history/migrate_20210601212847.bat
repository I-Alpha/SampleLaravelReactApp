@echo off
echo "migrating..." 
SET str1 = "docker exec samplelaravelreactapp_laravel.test_1 php artisan"


%str1% migrate)