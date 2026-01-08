# Лабораторная работа №1

## Студент: Панайотов Андрей Александрович

## Описание проекта
Spring Boot приложение с использованием:
- PostgreSQL (в Docker контейнере)
- Spring Data JPA
- Liquibase для миграций базы данных
- Swagger/OpenAPI для документации API

## Требования
- Java 17
- Maven 3.8+
- Docker Desktop
- Git

## Установка и запуск

### 1. Клонирование репозитория
```
git clone <ваш-репозиторий>
cd panayotov
```

### 2. Запуск базы данных
```
docker-compose up -d
```

### 3. Сборка и запуск приложения
```
mvn clean install
mvn spring-boot:run
```

### 4. Проверка работы
Приложение: http://localhost:8080

Swagger UI: http://localhost:8080/swagger-ui.html

API Docs: http://localhost:8080/api-docs


## 5. Необходимые программы для установки

### **1. Java Development Kit (JDK) 17**
- Скачать: https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html
- Или OpenJDK: https://adoptium.net/temurin/releases/?version=17

### **2. Apache Maven**
- Скачать: https://maven.apache.org/download.cgi
- Инструкция по установке: https://maven.apache.org/install.html

### **3. Docker Desktop**
- Скачать: https://www.docker.com/products/docker-desktop/
- Для Windows требуется WSL2: https://docs.microsoft.com/ru-ru/windows/wsl/install

### **4. IntelliJ IDEA (Community Edition)**
- Скачать: https://www.jetbrains.com/idea/download/

### **5. DBeaver (для работы с БД)**
- Скачать: https://dbeaver.io/download/

### **6. Git**
- Скачать: https://git-scm.com/downloads

## 6. Пошаговая инструкция по запуску

### **Шаг 1: Установите все программы**
1. Установите JDK 17
2. Установите Maven
3. Установите Docker Desktop
4. Установите IntelliJ IDEA
5. Установите DBeaver
6. Установите Git

### **Шаг 2: Настройте переменные окружения**
```
# Проверьте установку
java -version
mvn -v
docker --version
git --version
```

### **Шаг 3: Клонируйте или создайте проект**
```
# Создайте новую папку
mkdir panayotov
cd panayotov

# Инициализируйте Git
git init

# Создайте все файлы как указано выше
```

### **Шаг 4: Запустите базу данных**
```
# Убедитесь, что Docker Desktop запущен
docker-compose up -d

# Проверьте контейнер
docker ps

# Подключитесь к базе через DBeaver:
# Host: localhost
# Port: 5432
# Database: postgres
# Username: postgres
# Password: postgres
```

### **Шаг 5: Запустите приложение**
```
# Соберите проект
mvn clean install

# Запустите приложение
mvn spring-boot:run
```

### **Шаг 6: Проверьте работу**
1. Откройте браузер
2. Перейдите на http://localhost:8080/swagger-ui.html
3. Вы должны увидеть Swagger UI
4. Протестируйте эндпоинты

### 7. Команды для работы с Git
# Добавить все файлы
git add .

# Сделать коммит
git commit -m "Initial commit: Spring Boot project setup"

# Добавить удаленный репозиторий (создайте на GitHub сначала)
git remote add origin https://github.com/ваш-username/panayotov.git

# Отправить изменения
git push -u origin main

### 8. Полезные команды для отладки
### Проверка базы данных:
```
# Проверить контейнер
docker ps

# Посмотреть логи контейнера
docker-compose logs postgres

# Войти в контейнер
docker exec -it postgres_db bash

# Подключиться к PostgreSQL из контейнера
psql -U postgres -d postgres

# Проверить таблицы в базе
\dt utmn.*
```

### Проверка приложения:
```
# С очисткой кэша
mvn clean spring-boot:run

# С отладкой
mvn spring-boot:run -Dspring-boot.run.jvmArguments="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5005"
```

