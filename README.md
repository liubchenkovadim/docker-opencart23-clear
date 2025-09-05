    docker volume ls
    docker volume  rm name
  
  Перевірка стану
  
    docker ps -a
    docker images
    docker volume ls

Опційно: повне прибирання Docker (ГЛОБАЛЬНО — видалить усе невикористовуване)
   
     docker system prune -a --volumes -f
    docker rmi $(docker images -q)
    docker system prune -a --volumes

Виключити

    docker compose  down -v

Запустити 

    docker compose up -d


Після запуска контейнера потрібно

    sudo chmod 777 -R www/

 Кожен проект находиться  в окремій папці  і запускаеться  окремо  з потрібної папки.
  переходимо  в папку  наприклад
 
    cd   open30/

запускаем зборку 

    docker compose up -d --build

При першому запуску в бд загрузиться  дамп чистой CMS (в даній папці opencart 2.3)

 проекти створюют свої компоненти і різні cms не будут перезаписувати  друг друга.

 Після запуску проекта  можут бути проблеми  з редагування файлів  в  папці www  
 Потрібно  виконати команду

    sudo chmod 777 -R www/

 Після  запуску проекта  

 сайт доступний http://localhost:8081/index.php

 Для запуска phpmyadmin http://localhost:8082/


Для зміни  портов  можно редагувати файл .env 

Также  в файлі .env находяться  логин і пароль в админку (ADMIN_LOGIN,ADMIN_PASSWORD)

Також ADMIN_URL  - посилання для переходу  в админку
 
