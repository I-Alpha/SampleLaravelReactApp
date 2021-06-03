@echo off 
echo "migrating..." 
sail artisan migrate && ^
if "%1"=="seed" (echo "seeding..." && docker exec samplelaravelreactapp_laravel.test_1 php artisan db:seed)