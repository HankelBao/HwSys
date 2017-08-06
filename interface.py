# Interface.py:
# All about interaction with qqbot package
# the base of the whole system
import handler
from qqbot import QQBotSlot as qqbotslot, RunBot


@qqbotslot
def onQQMessage(bot, contact, member, content):
    """
    black box, it will be called when on message
    """
    if (contact.qq == "494541401"):
        reply_message = handler.group_on_message(member.qq, content)
        if reply_message:
            bot.SendTo(contact, reply_message)


def init():
    """Init the whole system"""
    RunBot()
