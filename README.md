Жиделев Иван

Тестовое задание для DevOps-инженера;



1. **Общие концепции DevOps:**
    - Опишите, что такое DevOps и какие проблемы оно решает в процессе разработки и эксплуатации ПО.
DeVops – это методология взаимодействия разных специалистов, которая помогает сделать программный продукт качественнее.
Какие проблемы оно решает в процессе разработки и эксплуатации ПО : 
•	Разрыв между командами: DevOps способствует более тесному сотрудничеству между разработчиками и операционными командами, что уменьшает недопонимание и конфликты.
•	Скорость поставки: Благодаря автоматизации процессов и непрерывной интеграции/непрерывной доставки (CI/CD), DevOps позволяет быстрее разрабатывать, тестировать и развертывать приложения.
•	Автоматизация процессов: Внедрение инструментов для автоматизации сборки, тестирования и развертывания снижает вероятность человеческой ошибки и ускоряет процессы.
•	Качество ПО: Автоматизированное тестирование и мониторинг позволяют выявлять и устранять ошибки на ранних этапах, что повышает общее качество продукта.
•	Безопасность: Интеграция практик безопасности на всех этапах разработки (DevSecOps) помогает обеспечить защиту приложений и данных.


2. **CI/CD (Continuous Integration and Continuous Deployment):**
    - Объясните, что такое CI/CD и почему оно важно в DevOps.
    - Перечислите основные этапы CI/CD пайплайна.
CI/CD - это методика разработки ПО, которая направлена автоматизировать интеграцию и доставку кода.
CI/CD в DevOps важен для ускорения разработки и развертывания программного обеспечения, улучшения качества продукта, снижения рисков при внесении изменений и повышения гибкости бизнеса. 
Основные этапы CI/CD пайплайна:
1.	Сборка (Build) - компиляция кода, проверка зависимостей, создание артефактов (инструменты: Jenkins, GitLab CI/CD, GitHub Actions);
2.	Тестирование - автоматический запуск юнит, интеграционных, нагрузочных и других тестов	(инструменты: Selenium, JUnit, pytest);
3.	Рассмотрение (Review) - анализ кода на наличие ошибок, проверка стандартов кодирования, оценка безопасности (инструменты: SonarQube, CodeQL);
4.	Развертывание (Deploy) - автоматическое развертывание приложения на тестовых или боевых серверах (инструменты: Kubernetes, Terraform, Ansible) 
5.	Мониторинг - отслеживание метрик производительности и доступности (инструменты: Prometheus, Grafana)


3. **Мониторинг и логирование:**
    - Зачем необходимо мониторинг в DevOps и какие инструменты вы знаете для этого?
    - Объясните различие между мониторингом и логированием.
Мониторинг - отслеживание метрик производительности и доступности (инструменты: Prometheus, Grafana).
Различие между мониторингом и логированием
•	Мониторинг – сообщает в каком приложение статусе, как оно работает, как проходят процессы в каком они состоянии.   
•	Логирование – это данные которые показывают что уже произошло и эти данные еще не обработаны. 
Вывод: мониторинг отвечает за текущее состояние и производительность приложения, позволяя отслеживать его работу в реальном времени. Логирование, в свою очередь, фиксирует произошедшие события и данные, которые еще не были обработаны, предоставляя информацию о прошлых действиях и инцидентах.


4. **Контейнеризация и Docker:**
    - Объясните, что такое контейнеры и чем они отличаются от виртуальных машин.
    - Перечислите основные команды Docker для работы с контейнерами.
Контейнеры — это легкие программные пакеты, содержащие все зависимости, необходимые для запуска автономного программного приложения 
Контейнеры обеспечивают изоляцию приложений друг от друга, но используют общие ядро операционной системы, что делает их легкими и быстрыми в запуске. Виртуальные машины, с другой стороны, эмулируют полную вычислительную систему, включая аппаратное обеспечение, что делает их более тяжелыми и медленными в работе.
Основные команды Docker:
•	docker run - создает и запускает контейнер из образа;
•	docker start - запускает остановленный контейнер;
•	docker stop - останавливает работающий контейнер;
•	docker restart - перезапускает контейнер;
•	docker rm - удаляет один или несколько контейнеров, которые уже остановлены;
•	docker ps - отображает список активных контейнеров в системе;


5. **Сетевые основы:**
    - Объясните, что такое NAT и как оно работает.
    - Что такое DNS и как оно используется в сетях?
NAT (network address translation) — это технология, позволяющая перенаправлять трафик между локальной и глобальной сетями. 
Как он работает: когда пользователь с IP-адресом 192.168.1.3 хочет получить доступ к новостному сайту с IP-адресом 68.1.31.1, его компьютер генерирует пакет с запросом. Поскольку 192.168.1.3 — это частный IP-адрес, он не может отправить пакет напрямую в интернет.
Здесь вступает в действие NAT (Network Address Translation). Пакет проходит через маршрутизатор, который заменяет частный IP-адрес на свой публичный IP-адрес (например, 101.89.101.12) и назначает уникальный порт (8801). Теперь веб-сервер получает пакет и отвечает на адрес 101.89.101.12:8801.
Когда маршрутизатор получает ответ, он использует таблицу NAT, чтобы определить, что этот ответ следует перенаправить на локальный IP-адрес 192.168.1.3 через порт 102. Таким образом, NAT позволяет устройствам в локальной сети использовать один публичный IP-адрес для доступа в интернет, обеспечивая корректную маршрутизацию ответов.

DNS — это распределённая система, которая помогает браузерам находить адреса сайтов по их именам.
Например: нам нужно зайти на какой-нибудь сайт и просим браузер подключить нас к нему. Он обращается к серверу, а тот — к своей базе адресов, чтобы найти похожее название. Если находит — возвращает браузеру IP-адрес, а браузер, в свою очередь, использует его, чтобы запросить главную страницу и показать её нам. 


6. **Git и управление версиями:**
    - Объясните, что такое ветвление (branching) в Git и зачем оно нужно.
    - Как создать новую ветку и переключиться на нее в Git?
Ветвление в Git - это создание новых веток c целью отклонения от основной линии разработки. 
Ветвление (branching) в Git нужно чтобы добавлять новые ветки, перечислять и переименовывать существующие и удалять их.
git checkout -b <имя_ветки> «создать новую ветку и переключиться на нее».


7. **Безопасность:**
    - Какие основные методы обеспечения безопасности вы знаете для серверов и сервисов?
    - Что такое SSH и как его используют для безопасного доступа к серверам?
Методы по обеспечению безопасности сервера: 
•	SSH (криптографические ключи);
•	Фаервол (фильтрует сетевой трафик и контролирует доступ к сети);
•	VPN (способ создать защищенное соединение между удаленными компьютерами и текущим соединением);
•	PKI и SSL/TLS шифрование (совокупность систем, которые предназначены для создания, управления и проверки сертификатов для идентификации лиц и шифрования передаваемых данных);
•	Аудит файлов и система обнаружения вторжений (процесс сравнения состояния текущей системы с записями файлов и характеристиками вашей системы. Часть программного обеспечения, которая контролирует систему или сеть на несанкционированные действия);
•	Изолированная среда выполнения (способ запуска компонентов системы в их собственном выделенном пространстве);
Методы по обеспечению безопасности сервисов: 
•	Аутентификация и авторизация (сильные пароли, двухфакторная аутентификация (2FA))
•	Шифрование данных при передаче (HTTPS-протокол защиты данных)
•	Мониторинг и логирование (журналирование событий, мониторинг в реальном времени)
•	Web Application Firewall (WAF) (установка WAF для защиты от распространенных веб-угроз (например, SQL-инъекций, XSS)
•	Контейнеризация (использование контейнеров «Docker» для изоляции приложений и их зависимостей)
•	Политики доступа (определение четких правил доступа к данным и ресурсам)
SSH - это защищенный сетевой протокол для удалённого управления сервером через интернет.
Используют в паре криптографических ключей, которые служат для проверки подлинности в качестве альтернативы аутентификации с помощью пароля. Система входа использует закрытый и открытый ключи, которые создают до аутентификации. Закрытый ключ хранится в тайне надежным пользователем, в то время как открытый ключ может раздаваться с любого сервера SHH, к которому нужно подключиться.


8. **Оркестрация:**
    - Что такое оркестрация контейнеров и зачем она нужна?
    - Какие оркестраторы контейнеров вы знаете и используете?
Оркестрация контейнеров - это системы которые организуют расположение и координируют взаимосвязь инструментов в одном проекте, распределяют задачи между ними и контролируют их выполнение.
Оркестрация контейнеров необходима для автоматизации развертывания, управления и масштабирования контейнеризованных приложений. Она упрощает управление сложными системами, обеспечивая высокую доступность, балансировку нагрузки и автоматическое восстановление в случае сбоев. Кроме того, оркестраторы позволяют эффективно использовать ресурсы и упрощают процесс обновления и развертывания новых версий приложений.
Оркестраторы контейнеров:
•	Docker Swarm
•	Nomad
•	Kubernetes


9. **Docker-compose**
- Объясните, что делает docker-compose.yml файл выше.
- Опишите шаги, как запустить этот проект с помощью Docker Compose.
- Как можно изменить файл, чтобы добавить том для хранения данных PostgreSQL?
Что делает docker-compose.yml - определяет конфигурацию для запуска двух контейнеров (служб) с помощью Docker Compose.
Этапы запуска: 
1.	Запустить Docker Compose
•	Через командную строку 
•	Перейти в каталог, где находится ваш файл docker-compose.yml (cd /…/…);
2.	Запустить команду:
•	   docker-compose up (эта команда загрузит необходимые образы (если они еще не загружены) и запустит контейнеры, определенные в docker-compose.yml.);
3.	Проверить, что контейнеры запущены:
•	docker ps
4.	Проверить доступность Nginx:
•	Откройте веб-браузер и перейдите по адресу: http://localhost:8080
5.	Остановите проект (по завершении работы):
•	Чтобы остановить и удалить контейнеры, выполните команду: docker-compose down
Как можно изменить файл, чтобы добавить том для хранения данных PostgreSQL?
Для начала создаем секцию «volumes» в сервисе «db». Добавляем том и куда будет сохраняться в каталог «- pgdata:/var/lib/postgresql/data» внутри контейнера. Останавливаем текущий контейнер (если он запущен) «docker-compose down». Запускаем снова «docker-compose up». Проверить что том с именем «pgdata» создан: «docker volume ls» И проверить изменения «docker ps». 
version: '3'
services:
  web:
    image: nginx:latest
    ports:
      - "8080:80"
  
  db:
    image: postgres:latest
    environment:
      POSTGRES_USER: exampleuser
      POSTGRES_PASSWORD: examplepass
    volumes:
      - pgdata:/var/lib/postgresql/data

volumes:
  pgdata:

