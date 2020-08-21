Errbot based irc bot reminding to guys that "hey guys" is not exactly including everybody

# Usage

The plugin can be installed from Errbot with !plugin. There is no requirements

# Run the bot with Docker

A Dockerfile is here, that install errbot from pip. The bot is setup just for that
specific task, using environment variable for configuration. There is several others
docker package with more feature for errbot, this one is on purpose streamlined to run
the bundled plugin and just that.

## Configuration

The bot can be configured using environment variables, see config.py for details.

In short, NICK is the IRC nick (and username), SERVER is the server (without port), 
and CHANNELS is a semi colon separated list of IRC chans to join at start. More options
might be added, but the focus is on running a IRC bot on freenode. 
