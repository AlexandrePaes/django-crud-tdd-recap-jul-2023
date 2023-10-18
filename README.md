# django-crud-tdd-recap-jul-2023
This project is a aim to start simple but get some upgrades like full CI/CD with automated tests also then replicated on Gitlab to learn more about the pros and cons of working with Github or Gitlab for DevOps/DevSecOps purposes. I'm thinking also about dockers and other tools to use in this project but I'm not sure if it will be worthy or not yet


Terminal's commands shot:

1. mkdir .ssh
2. cd .ssh
3. ssh-keygen
4. ls -la
5. cat id_rsa.pub
6. cd path/to/projects/directory
7. eval "$(ssh-agent -s)"
8. ssh-add ~/.ssh/id_rsa or the name given at ssh-key creation
9. git clone git@github.com:AlexandrePaes/django-crud-tdd-recap-jul-2023.git
10. cd django-crud-tdd-recap-jul-2023
11. sudo apt install python3.11-venv
12. python -m venv .venv
13. source .venv/bin/activate
14. pip install django
15. pip freeze > requirements.txt
16. django-admin startproject tddtesting .
17. python manage.py startapp task
18. python manage.py makemigrations
19. python manage.py migrate
20. python manage.py test