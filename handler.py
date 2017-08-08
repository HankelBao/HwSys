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
            return qq_number
    return


def person_on_message(sender_qq, content):
    """
    person_on_message:
    """
    return content
