import sqlite3

def GetConnection():
    con = sqlite3.connect("database.db")
    con.row_factory = sqlite3.Row
    return con

def GetCursor():
    con = GetConnection()
    cu = con.cursor()
    return cu

#
# Relationship Manage between Teachers and Main Record
def GetTeacherQQ():
    cu = GetCursor()
    cu.execute("select * from rel_teacher")

    teacherQQ = []
    for item in cu.fetchall():
        teacherQQ.append(item['qq'])
    return teacherQQ

def test():
    return
