import interface
import database
import handler

if __name__ == '__main__':
    database.init()
    handler.init()

    #OriginContent = "eee"
    #ReplyContent = handler.GroupOnMessage("2531878373", OriginContent)
    #print(ReplyContent)
    interface.init()
