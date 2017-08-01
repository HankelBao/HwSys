import database

def GroupOnMessage(SenderQQ, Content):
    for qq in database.GetTeacherQQ():
        if qq == SenderQQ:
            print(Content)
            return Content
    return
#           open("record","a").write(SenderQQ)
#           open("record","a").write(Content)
#           open("record","a").write("\n")

# def BuddyOnMessage(SenderQQ, Content):


def init():
#    print("Hello World")
    return
