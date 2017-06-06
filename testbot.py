#coding=gbk
from qqbot import QQBotSlot as qqbotslot, RunBot

@qqbotslot
def onQQMessage(bot, contact, member, content):
    if (contact.qq == "494541401"):
        open('record','a').write(content)

if __name__ == '__main__':
    RunBot()
