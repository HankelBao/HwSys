import sqlite3

def GetConnection():
    con = sqlite3.connect("hw.db")
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
        teacherQQ.append(item['QQNumber'])
    return teacherQQ

def AddRecord(TeacherId, SendTime, DueTime, Content):
    cu = GetCursor()
    cu.execute("insert into record values (" +TeacherId+ "," +SendTime+ "," +DueTime+ "," +Content+ ")")

def init():
    return
