## Aston - Config Server
Часть микросервисного приложения [aston-project](https://github.com/gedfalk/aston-project). 

Централизованный хаб для конфигурации сервисов. Подгружает конфиги из [aston-configRepo](https://github.com/gedfalk/aston-configRepo
)
### 🚀 Быстрый старт
```shell
# 1. Поднимаем докер из aston-project
# 2. Запускаем aston-discoveryServer

# 3.
git clone https://github.com/gedfalk/aston-configServer
cd aston-configServer

mvn spring-boot:run

# 4. Запускаем aston-apiGateway
# 5. Запускаем aston-project (user-service)
# 6. Запускаем aston-notificationProject (notification-service)
```
---

### 📡 Проверка

 - http://localhost:8888/user-service/default
 - http://localhost:8888/notification-service/default

