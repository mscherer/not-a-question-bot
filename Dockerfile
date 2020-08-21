FROM fedora:32
RUN dnf install -y python3-pip && dnf clean all
# use 18.0.0 until https://github.com/jaraco/irc/pull/175 is merged
RUN pip install errbot irc==18.0.0

RUN curl https://raw.githubusercontent.com/errbotio/errbot/master/errbot/config-template.py > /etc/config.py.base
COPY config.py /etc/config.py.custom
RUN cat /etc/config.py.base /etc/config.py.custom > /etc/config.py

RUN mkdir -p /usr/local/share/plugins/
COPY HeyGuys/ /usr/local/share/plugins/
CMD ["/usr/local/bin/errbot", "-c", "/etc/config.py"]
