#!/bin/bash

# For local testing, run:

# echo 'SLACK_API_TOKEN=your_token_here' > .env
foreman start

# For Heroku deployment, run:

# heroku create
# git push heroku master
# heroku config:add SLACK_API_TOKEN=your_token_here
# heroku ps:scale web=1
# heroku open
