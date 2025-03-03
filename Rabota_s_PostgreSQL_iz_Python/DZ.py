import psycopg2

# Требуется хранить персональную информацию о клиентах:
# имя,
# фамилия,
# email,
# телефон.
# Сложность в том, что телефон у клиента может быть не один, а два, три и даже больше. А может и вообще не быть телефона, например, он не захотел его оставлять.

# Вам необходимо разработать структуру БД для хранения информации и несколько функций на Python для управления данными.
# Функция, создающая структуру БД (таблицы).
# Функция, позволяющая добавить нового клиента.
# Функция, позволяющая добавить телефон для существующего клиента.
# Функция, позволяющая изменить данные о клиенте.
# Функция, позволяющая удалить телефон для существующего клиента.
# Функция, позволяющая удалить существующего клиента.
# Функция, позволяющая найти клиента по его данным: имени, фамилии, email или телефону.
# Функции выше являются обязательными, но это не значит, что должны быть только они. При необходимости можете создавать дополнительные функции и классы.

# conn = psycopg2.connect(database="ttt", user="postgres", password="Qwerty12")
# with conn.cursor() as cur:
    # cur.execute("""
    #     drop table telefon;
    #     drop table klient;
    #     """)
# Baza = 'database="ttt", user="postgres", password="Qwerty12"'

def sozdanie_db():
    conn = psycopg2.connect(database="ttt", user="postgres", password="Qwerty12")
    with conn.cursor() as cur:
        # cur.execute("""
        # drop table telefon;
        # drop table klient;
        # """)
        cur.execute("""
            create table if not exists klient(
                id integer primary key,
                imya varchar(40) not null,
                familiya varchar(40) not null,
                pochta varchar(60) unique not null
                )
            """)

        cur.execute("""
            create table if not exists telefon (
                id integer primary key,
                klient_id integer not null,
                tel_nomer integer,
                foreign key (klient_id) references klient (id)
            )
        """)

        conn.commit()
        conn.close()

        
    # return sozdanie_db()
