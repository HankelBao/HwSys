# coding=gbk
from qqbot import QQBotSlot as qqbotslot, RunBot

@qqbotslot
def onQQMessage(bot, contact, member, content):
    bot.SendTo(contact, contact.ctype)

if __name__ == '__main__':
    RunBot()
