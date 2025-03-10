import psycopg2

# Функции выше являются обязательными, но это не значит, что должны быть только они. При необходимости можете создавать дополнительные функции и классы.

# conn = psycopg2.connect(database="ttt", user="postgres", password="Qwerty12")
with psycopg2.connect(database="ttt", user="postgres", password="Qwerty12") as conn:
    print("Подключение установлено")
cur = conn.cursor()

# Функция, создающая структуру БД (таблицы).
def sozdanie_db(conn):
    # with conn.cursor() as cur:
    cur.execute("""
        drop table telefon;
        drop table klient;
        """)
    cur.execute("""
        create table if not exists klient(
            id serial primary key,
            imya varchar(40) not null,
            familiya varchar(40) not null,
            pochta varchar(60) unique not null
            )
        """)
    
    cur.execute("""
            create table if not exists telefon (
                id serial primary key,
                klient_id integer not null,
                tel_nomer varchar(20),
                foreign key (klient_id) references klient (id) ON DELETE CASCADE
            )
        """)
    print("Таблица успешно созданы.")
    conn.commit()

# Функция, позволяющая добавить нового клиента.
def add_klient(conn, imya, familiya, pochta):
    cur.execute("""
            INSERT INTO klient (imya, familiya, pochta)
            VALUES (%s, %s, %s) RETURNING id
        """, (imya, familiya, pochta))
    print("Клиент добавлен.")
    conn.commit()

# Функция, позволяющая добавить телефон для существующего клиента.
def add_telefon(conn, klient_id, tel_nomer):
    cur.execute("""
        INSERT INTO telefon (klient_id, tel_nomer)
        VALUES (%s, %s)
    """, (klient_id, tel_nomer))

    conn.commit()
    print("Номер телефона добавлен.")

# Функция, позволяющая изменить данные о клиенте.



# Функция, позволяющая удалить телефон для существующего клиента.
def ydali_telefon(conn, klient_id, telefon):
    cur.execute("""
        delete from telefon
        where klient_id = %s and tel_nomer = %s
    """, (klient_id, telefon))


    conn.commit()
    print("Номер телефона удален.")

# Функция, позволяющая удалить существующего клиента.
def delete_client(conn, klient_id):
    cur.execute("""
        DELETE FROM klient
        WHERE id = %s
    """, (klient_id,))

    conn.commit()
    print("Клиент удален.")


# Функция, позволяющая найти клиента по его данным: имени, фамилии, email или телефону.


with conn.cursor() as cur:
    sozdanie_db(conn)
    add_klient(conn, "Боб", "Бобиков", "bobikov@bk.ru")
    add_klient(conn, "Лев", "Толстой", "lvenok@bk.ru")
    add_klient(conn, "Барак", "Обама", "obana@bk.ru")
    add_telefon(conn, 1, 89992223366)
    add_telefon(conn, 2, 88885523434)
    add_telefon(conn, 2, 87772225588)
    add_telefon(conn, 3, 82220003366)
    add_telefon(conn, 3, 89356724910)

    ydali_telefon(conn, 3, '89356724910')
    # delete_client(conn, 2)

conn.close()
print("КОНЕЦ.")
