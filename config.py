import os
# this file is added at the end of the default file, so contain
# only difference from the default

BACKEND = 'IRC'
BOT_IDENTITY = {
    'nickname' : os.getenv('NICK', default='tariste'),
    # 'username' : 'err-chatbot',    # optional, defaults to nickname if omitted
    # 'password' : None,             # optional
    'server' : os.getenv('SERVER', default='chat.freenode.net'),
    # 'port': 6667,                  # optional
    # 'ssl': False,                  # optional
    # 'ipv6': False,                 # optional
    # 'nickserv_password': None,     # optional
}
CHATROOM_PRESENCE = os.getenv('CHANNELS',default='#test-misc-bot').split(';') 
BOT_DATA_DIR = '/tmp'
BOT_ADMINS = ('misc',)
BOT_LOG_FILE = BOT_DATA_DIR + '/bot.log'
BOT_EXTRA_PLUGIN_DIR = '/usr/local/share/plugins/'

