mysql -u root -p < drop_create.sql

python manage.py makemigrations
python manage.py migrate
