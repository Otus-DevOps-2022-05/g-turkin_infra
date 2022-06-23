# g-turkin_infra
g-turkin Infra repository

bastion_IP = 51.250.68.182
someinternalhost_IP = 10.128.0.27

## Самостоятельное задание:

### Исследовать способ подключения к someinternalhost в одну команду из вашего рабочего устройства

ssh -i ~/.ssh/appuser -J appuser@51.250.68.182 appuser@10.128.0.27

## Дополнительное задание:

### Предложить вариант решения для подключения из консоли при помощи команды вида ssh someinternalhost из локальной консоли рабочего устройства, чтобы подключение выполнялось по алиасу someinternalhost

nano ~/.ssh/config
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

### С помощью сервисов sslip.io/xip.io и Let’s Encrypt реализуйте использование валидного сертификата для панели управления VPN-сервера

Заходим по адресу: https://51.250.68.182.sslip.io
В настройках вводим имя хоста: 51.250.68.182.sslip.io
Заходим на сервер по ssh и перезапускаем сервис pritunl
sudo service pritunl restart
