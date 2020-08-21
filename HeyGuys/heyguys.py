from errbot import BotPlugin, re_botcmd
import re

class HeyGuys(BotPlugin):
    """ Plugin for Errbot to remind that not everybody is a guy """

    @re_botcmd(pattern=r"^h(ey|i|llo)\s+guys", prefixed=False, flags=re.IGNORECASE)
    def remind_guys(self, msg, args):
        """Remind folks"""
        return "https://heyguys.cc/"

