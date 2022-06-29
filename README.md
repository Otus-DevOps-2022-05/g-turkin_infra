# g-turkin_infra
g-turkin Infra repository

# Выполнено ДЗ № 5 Подготовка базового образа VM при помощи Packer.

 - [Х] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
 - Установка VPN для установки packet
 - Создание сервисного аккаунта через yc
 - Создан файл-шаблон packer
 - Собран baked-образ при помощи packer
 - Скопировано в директорию packer скрипта из прошлого задания
 - Был запущен процесс сборки
 - Исправлены ошибки

## Как запустить проект:
 - Например, запустить команду X в директории Y

## Как проверить работоспособность:
 - Например, перейти по ссылке http://localhost:8080

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания


testapp_IP = 51.250.13.103
testapp_port = 9292

# Выполнено ДЗ № 4 "Практика управления ресурсамиyandex cloud через yc"

 - [X] Основное ДЗ
 - [X] Задание со *

## В процессе сделано:
 - Установлен и настроен профель yc cli
 - Создан новый инстанс при помощи yc cli
 - Созданы и изучены баш скрипты
 - Скрипты сделаны исполняемыми +х
'''
yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --ssh-key ~/.ssh/appuser.pub \
  --metadata-from-file user-data=startup_script.sh
'''

## Как запустить проект:
 - Проект уже запущен

## Как проверить работоспособность:
 - Перейти по ссылке http://51.250.13.103:9292

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания


bastion_IP = 51.250.70.124
someinternalhost_IP = 10.128.0.27

# Выполнено ДЗ № 2

 - [X] Основное ДЗ
 - [X] Задание со *

## В процессе сделано:
 - Знакомство с yandex cloud
 - Генерация пара ключей ssh
 - Запуск двух BM
 - Подключение к серверам по ssh разными способами
 - Развлечение с файлом setupvpn.sh и mongodb
 - Настройка, запуск и подключение к OpenVPN серверу для удаленного доступа к VPC
 - Настроен валидный ssl сертификат


## Как запустить проект:
 - Проект временный )))

## Как проверить работоспособность:
 - ssh -i ~/.ssh/appuser -J appuser@51.250.70.124 appuser@10.128.0.27
 - nano ~/.ssh/config
    Host bastion
      HostName 51.250.70.124
      User appuser
      Port 22
      ForwardAgent yes
      AddKeysToAgent yes
      IdentityFile ~/.ssh/appuser
    Host someinternalhost
      User appuser
      Hostname 10.128.0.27
      Port 22
      ProxyJump bastion
      ForwardAgent Yes
  
  - Заходим по адресу: https://51.250.70.124.sslip.io
    В настройках вводим имя хоста: 51.250.70.124.sslip.io
    Заходим на сервер по ssh и перезапускаем сервис pritunl
    sudo service pritunl restart

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания
