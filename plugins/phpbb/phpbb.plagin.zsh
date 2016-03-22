
#phpBB Console version 3.1.8
#if [[ -a ./bin/phpbbcli.php ]]; then
pbbhelp(){
 php bin/phpbbcli.php help }                             # Displays help for a command
pbblist(){
 php bin/phpbbcli.php list }                             # Lists commands
# cache
pbbcp(){
 php bin/phpbbcli.php cache:purge}                     # Очистить кэш
# config
pbbconfdel(){
 php bin/phpbbcli.php config:delete $@ }                 # Удаляет параметр конфигурации
pbbconfget(){
 php bin/phpbbcli.php config:get $@ }                    # Получает значение параметра конфигурации
pbbconfinc(){
 php bin/phpbbcli.php config:increment $@ }             # Увеличивает значение числового параметра конфигурации
pbbconfset(){
 php bin/phpbbcli.php config:set $@ }                   # Устанавливает значение параметра конфигурации
pbbconfseta(){
 php bin/phpbbcli.php config:set-atomic $@ }           # Устанавливает значение параметра конфигурации в случае, если старое значение совпадает с текущим
# cron
pbbcronlist(){
 php bin/phpbbcli.php cron:list }                   # Выводит список готовых и не готовых к выполнению задач планировщика (cron).
pbbcronrun(){
 php bin/phpbbcli.php cron:run $@ }                     # Запускает все готовые к выполнению задачи планировщика (cron).
# db
pbbdbmig(){
 php bin/phpbbcli.php db:migrate $@ }                     # Обновляет базу данных путём применения миграций.
# dev
pbbdevmigtips(){
 php bin/phpbbcli.php dev:migration-tips $@ }        # Находит миграции, не имеющие зависимостей.
# extension
pbbextdis(){
 php bin/phpbbcli.php extension:disable $@ }             # Отключает заданное расширение.
pbbexten(){
 php bin/phpbbcli.php extension:enable $@ }               # Включает заданное расширение.
pbbextpurg(){
 php bin/phpbbcli.php extension:purge $@ }              # Удаляет расширение вместе с данными.
pbbextshow(){
 php bin/phpbbcli.php extension:show $@ }               # Выводит список всех расширений из базы данных и файловой системы.
# fixup
pbbfixreh(){
 php bin/phpbbcli.php fixup:recalculate-email-hash $@ }  # Пересчитывает поле user_email_hash в таблице пользователей.

#fi
