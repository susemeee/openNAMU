from .tool.func import *

def func_title_random_2(conn):
    curs = conn.cursor()

    curs.execute("" + \
        "select title from data " + \
        "where title not like 'user:%' and title not like 'category:%' and title not like 'file:%'" + \
        "order by random() limit 1" + \
    "")
    data = curs.fetchall()
    if data:
        return redirect('/w/' + url_pas(data[0][0]))
    else:
        return redirect()