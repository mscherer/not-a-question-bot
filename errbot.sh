#!/bin/sh
echo "
BACKEND = 'IRC'
BOT_IDENTITY = {
    'nickname' : '${NICK:-tariste}',
    # 'username' : 'err-chatbot',    # optional, defaults to nickname if omitted
    # 'password' : None,             # optional
    'server' : '${SERVER:-chat.freenode.net}',
    'port': ${PORT:-6667},                  # optional
    # 'ssl': False,                  # optional
    # 'ipv6': False,                 # optional
    # 'nickserv_password': None,     # optional
}
CHATROOM_PRESENCE = ('#test-misc-bot',) 
BOT_DATA_DIR = '/tmp'
BOT_ADMINS = ('misc',)
BOT_LOG_FILE = BOT_DATA_DIR + '/bot.log'
BOT_EXTRA_PLUGIN_DIR = '/usr/local/share/plugins/'
" >> /etc/config.py
errbot -c /etc/config.py
