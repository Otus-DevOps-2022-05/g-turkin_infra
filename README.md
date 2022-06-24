# g-turkin_infra
g-turkin Infra repository

bastion_IP = 51.250.68.182
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
 - sh -i ~/.ssh/appuser -J appuser@51.250.68.182 appuser@10.128.0.27
 - nano ~/.ssh/config
    Host bastion
      HostName 51.250.68.182
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
  
  - Заходим по адресу: https://51.250.68.182.sslip.io
    В настройках вводим имя хоста: 51.250.68.182.sslip.io
    Заходим на сервер по ssh и перезапускаем сервис pritunl
    sudo service pritunl restart

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания
