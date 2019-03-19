#language: ru

Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
	Дано Я открыл сеанс TestClient от имени "АдминистраторБрюховецкий" с паролем "" или подключаю уже существующий
	И    Я закрыл все окна клиентского приложения


Сценарий: <описание сценария>

	И В командном интерфейсе я выбираю 'Склад' 'Внутренние потребления товаров'
	Тогда открылось окно 'Внутренние потребления товаров'
	И в таблице "СписокДокументы" я нажимаю на кнопку 'Передачу в эксплуатацию'
	Тогда открылось окно 'Передача в эксплуатацию (создание)'
	И из выпадающего списка "Тип операции эксплуатации" я выбираю точное значение 'Выдача, новый, физ-лицо'
	И из выпадающего списка "Эксплуататор (Физ. лица)" я выбираю по строке 'Андрей'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка "Номенклатура" я выбираю по строке '11-066'
	И в таблице "Товары" из выпадающего списка "Категория эксплуатации" я выбираю по строке '37 месяцев'
	И в таблице "Товары" я завершаю редактирование строки

	И в таблице "Товары" я активизирую поле "Статус указания серий"
	И в таблице "Товары" я выбираю текущую строку
	
	Тогда открылось окно 'Подбор серий по остаткам на складе'
	И в таблице "Серии" я перехожу к строке:
		| 'Качество' |
		| 'Новый'  | 
	И в таблице "Серии" я активизирую поле "К отгрузке, шт"
	И в таблице "Серии" в поле 'К отгрузке, шт' я ввожу текст '1'
	И в таблице "Серии" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ЗавершитьВводСерий'
	Тогда открылось окно 'Передача в эксплуатацию (создание) *'
	И я нажимаю на кнопку 'Записать'
	И я нажимаю на кнопку 'Провести'

	И я нажимаю на кнопку 'Записать'
	И я нажимаю на кнопку 'Провести'
	И я запоминаю значение поля "Номер" как "Номер"
	И я вывожу значение переменной "Номер"
	И Я закрываю окно 'Передача в эксплуатацию * от *'

	И В командном интерфейсе я выбираю 'Склад' 'Внутренние потребления товаров'
	Когда открылось окно 'Внутренние потребления товаров'
	И в таблице "СписокДокументы" я нажимаю на кнопку с именем 'СписокДокументыНайти'

	Тогда открылось окно 'Найти'
	И я нажимаю кнопку выбора у поля "&Где искать"
	И из выпадающего списка "&Где искать" я выбираю по строке 'номер'
	И в поле '&Что искать' я ввожу значение переменной 'Номер'
	И я нажимаю на кнопку '&Найти'
	Тогда открылось окно 'Внутренние потребления товаров'
	И в таблице "СписокДокументы" я активизирую поле "Номер"
	И в таблице "СписокДокументы" я нажимаю на кнопку с именем 'СписокДокументыУстановитьПометкуУдаления'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'Да'


	И я закрываю сеанс TESTCLIENT
	



