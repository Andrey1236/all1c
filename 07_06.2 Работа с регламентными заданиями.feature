#language: ru

Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
	Дано Я открыл сеанс TestClient от имени "АдминистраторБрюховецкий" с паролем "" или подключаю уже существующий
	И    Я закрыл все окна клиентского приложения


Сценарий: <описание сценария>

	Дано Я открываю навигационную ссылку "e1cib/app/Обработка.РегламентныеИФоновыеЗадания"
	И     Пауза 10
	Когда открылось окно 'Регламентные и фоновые задания'
	И в таблице "ТаблицаРегламентныеЗадания" я перехожу к строке:
		| 'Наименование'                         |
		| 'Очистка устаревших соединений амдокс' |
	И в таблице "ТаблицаРегламентныеЗадания" я нажимаю на кнопку 'Выполнить сейчас'
	И     Пауза 10

	Когда открылось окно 'Регламентные и фоновые задания'
	
	И в таблице "ТаблицаРегламентныеЗадания" я перехожу к строке:
		| 'Наименование'                                                                  | 'Состояние'         |
		| 'Очистка устаревших соединений амдокс'                                     | 'Задание выполнено' | 

		И я закрываю сеанс TESTCLIENT
	



