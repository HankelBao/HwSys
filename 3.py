# coding=gbk
from qqbot import QQBotSlot as qqbotslot, RunBot, QQBot

myqq = QQBot()
myqq.Login()
myqq.SendTo("金骁", '你好 我是QQ机器人')
