FROM fedora:32
RUN dnf install -y python3-pip && dnf clean all
# use 18.0.0 until https://github.com/jaraco/irc/pull/175 is merged
RUN pip install errbot irc==18.0.0
RUN curl https://raw.githubusercontent.com/errbotio/errbot/master/errbot/config-template.py > /etc/config.py
COPY ./errbot.sh /usr/local/bin/
RUN mkdir -p /usr/local/share/plugins/HeyGuys/
COPY heyguys.py heyguys.plug /usr/local/share/plugins/HeyGuys/
CMD ["/usr/local/bin/errbot.sh"]
