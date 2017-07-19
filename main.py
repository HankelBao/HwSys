import interface
import database
import handler

if __name__ == '__main__':
    database.test()
    handler.test()

    OriginContent = "eee"
    ReplyContent = handler.GroupOnMessage("1115443660", OriginContent)
    print(ReplyContent)
    #interface.init()
