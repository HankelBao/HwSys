""" The sqlite3 module """
import sqlite3

def get_connection():
    """Get connection from the database"""
    con = sqlite3.connect("hw.db")
    con.row_factory = sqlite3.Row
    return con


def get_cursor(connection_tmp):
    """Get cursor used to exec commmand"""
    cu_tmp = connection_tmp.cursor()
    return cu_tmp


def get_teacher_qq():
    """get the qq number of all the teachers"""
    co_tmp = get_connection()
    cu_tmp = get_cursor(co_tmp)
    cu_tmp.execute("select * from rel_teacher")
    teacher_qq = []
    for item in cu_tmp.fetchall():
        teacher_qq.append(item['QQNumber'])
    return teacher_qq

def add_record(teacher_id, send_time, due_time, content):
    """Add a main record to the central database"""
    co_tmp = get_connection()
    cu_tmp = get_cursor(co_tmp)
    cu_tmp.execute("insert into record values (?, ?, ?, ?)",
                   teacher_id, send_time, due_time, content)
    co_tmp.commit()
    
