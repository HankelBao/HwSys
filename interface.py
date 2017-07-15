from qqbot import QQBotSlot as qqbotslot, RunBot

@qqbotslot
def onQQMessage(bot, contact, member, content):
    if (contact.qq == "494541401"):
       open("record","a").write(content)
       open("record","a").write(member.qq)
       open("record","a").write(contact.nick)
       open("record","a").write(contact.name)
       open("record","a").write("\n")

def init():
    RunBot()
