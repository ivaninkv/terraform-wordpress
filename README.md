# Тестовое от мастера Цы

## Задача

* облако на выбор - aws, yandex, gcp
* терраформом развернуть инфру - мэнеджет база, менеджет еластик + (виртуалки или менеджет кубер)

В случае виртуалок:
* ансиблом развернуть вордпресс, настроить мониторинг на промстеке, собирать логи в еластик

В случае кубера:
* развернуть вордпресс в кубер, туда же промстэк, логи в еластик

То есть по факту, результат работы - это репозиторий с манифестами в github/gitlab с нормально описанным README по которому я спокойно  смогу запустить 2-3 команды и развернуть работающий проект в облаке под своим аккоунтом

## Общие действия

* Посмотреть список облаков и каталогов можно командами:
```shell
# список облаков
yc resource-manager cloud list

# список каталогов
yc resource-manager folder list
```

## Вариант с виртуалками

* Создать файл `terraform.tfvars` в каталоге [vm](vm), в качестве примера можно взять файл [terraform.tfvars_example](vm/terraform.tfvars_example) и заполнить в нем настройки для подключения к yandex cloud. 
```shell
cd vm
mv terraform.tfvars_example terraform.tfvars
# заполняем переменные для подключения к yandex cloud
terraform init
terraform apply -auto-approve
```

## Вариант с кубером