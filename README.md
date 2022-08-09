# g-turkin_infra
g-turkin Infra repository
# Выполнено ДЗ № 10 Написание Ansible ролей для управления конфигурацией сервисов и настройками хостов.

 - [X] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
 - Созданы отдельные роли app и db из плейбуков
 - Добавлены два окружения env: stage и ptod
 - Добавлена роль jdauphant.nginx при помощи ansible-galaxy
 - Использовал ansible-vault для шифрования данных пользователя

## Как запустить проект:
 - запустить команду "ansible-playbook playbooks/site.yml" в директории ansible

## Как проверить работоспособность:
 - перейти по ссылке http://localhost:80

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

# Выполнено ДЗ № 9 Управление настройками хостов и деплой приложения при помощи Ansible.

 - [X] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
 - один playbook, один сценарий
 - один playbook, нескольео сценариев
 - несколько playbook
 - провижининг в Packer на основе плейбук
 - пересозадвл образы с использованием ногого провидининга

## Как запустить проект:
 - запустить packer build app.json в директории packer
 - запустить packer build db.json в директории packer
 - запустить terraform apply в директории terraform
 - запустить ansible-playbook site.yml в директории ansible

## Как проверить работоспособность:
 - перейти по ссылке http://localhost:9292

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания


# Выполнено ДЗ № 8 Написание Ansible плейбуков на основе имеющихся bash скриптов

 - [X] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
 - установлен ansible 
 - изучены базовые функции ansible
 - выполненние модулей ping,command,git,systemd,service
 - написал простой плейбук
 - ansible app -m command -a 'rm -rf ~/reddit' && ansible-playbook clone.yml
 - возвращает changed=1, это значит что на хосте appserver один модуль(git) был выполнен с изминениями 

## Как запустить проект:
 - выполнить ansible-playbook clone.yml в директории ansible

## Как проверить работоспособность:
 - посмотреть вывод команды после запуска проекта

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

# Выполнено ДЗ № 7 Создание Terraform модулей для управления компонентами инфраструктуры.

 - [X] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
 - вынес в отдельныйи инстанс БД и app
 - создал два отделныз образа через packer
 - были созданы отдельные модули app, db, vpc

## Как запустить проект:
 - Запустить команду "terraform apply" в директории terraform/prod
 - Запустить команду "terraform apply" в директории terraform/stage

## Как проверить работоспособность:
 - запуск проектов должен быть без ошибок

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания


# Выполнено ДЗ № 6 Декларативное описание в виде кода инфраструктуры YC, требуемой для запуска тестового приложения, при помощи Terraform.

 - [X] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
 - установил terraform v0.13.7, так как yc работает только с v0.13
 - установил модуль yandex при помощи terraform init и магии документации яндекс
 - пересоздал образ из прошлого ДЗ, убрал оттуда puma и puma.service
 - при помощи terraform создал виртуальную машину из образа предыдущего ДЗ
 - добавил output переменные
 - добавил файл с входными переменными

## Как запустить проект:
 - Запустить команду "terraform apply"  в директории terraform

## Как проверить работоспособность:
 - Перейти по ссылке http://localhost:9292

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания


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
 - Добавлен .gitignore
 - Добавлен variables.json

## Как запустить проект:
 - Например, запустить команду X в директории Y

## Как проверить работоспособность:
 - Перейти по ссылке http://51.250.88.238:9292

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания


testapp_IP = 51.250.88.238
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
