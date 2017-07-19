import handler
from qqbot import QQBotSlot as qqbotslot, RunBot

@qqbotslot
def onQQMessage(bot, contact, member, content):
    if (contact.qq == "494541401"):
        ReplyMessage = handler.GroupOnMessage(member.qq, content)
        if ReplyMessage:
            bot.SendTo(contact, ReplyMessage)

def init():
    RunBot()
