# Handler.py
# Handle all kinds of requests from different person
# Rememeber the info inside and answer them if required
import database


def group_on_message(sender_qq, content):
    """
    gorup_on_message:
        When the official group is on message, this function will be called
    """
    for qq_number in database.get_teacher_qq():
        if qq_number == sender_qq:
            print(content)
            return content
    return
#           open("record","a").write(SenderQQ)
#           open("record","a").write(Content)
#           open("record","a").write("\n")
# def BuddyOnMessage(SenderQQ, Content):


def init():
    """ Init the handler """
    return
