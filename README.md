# Stackbot

> A bot for Slack that can search StackOverflow questions and display [UNIX fortunes](https://en.wikipedia.org/wiki/Fortune_(Unix)).

![screenshot](screenshots/screenshot1.png)

![screenshot](screenshots/screenshot2.png)

## Built With

- Ruby 2.6.5p114 
- Rubocop 0.80.1
- RSpec 3.9
- Visual Studio Code 1.42.1

## Live Demo

[Live Demo Link](https://livedemo.com)


## Getting Started

It is possible to test Stackbot locally as well as remotely by deploying it to Heroku. You will need both a [Slack](https://www.slack.com) and a [Heroku](https://www.heroku.com) account for this. To get a local copy up and running follow these simple example steps.

### Prerequisites

Make sure you have the following packages installed before continuing:

```
$ sudo apt install ruby-full heorku
$ gem install bundler rspec
```

### Setup

In order to test Stackbot you will need to [create a Slack APP](https://api.slack.com/apps/new). Once you've created the app, [configure it as a bot](https://api.slack.com/bot-users) and install it to your preferred Slack workspace. Don't forget to [save it's API token](https://api.slack.com/authentication/token-types#bot) somewhere. You will need the token in order to test the bot.

### Install

To test Stackbot locally, clone the repository, navigate to it's containing directory, and run:

```
$ bundle install
$ echo 'SLACK_API_TOKEN=your_token_here' > .env
$ foreman start
```

This should install all ruby gems, generate an `.env` file containing the API token from the Setup, and start a local server where Stackbot lives.

### Usage

Once Slackbot is running either locally or remotely in Heroku, you can log into the Slack workspace where you installed it and invite it to your channel by typing `/invite @Stackbot`.

Typing `@Stackbot help` will display the following message:

>Give me commands by typing _*@Stackbot command [arguments]*_
>
>Here's a complete list of my available commands:
>
>*help* Display this help message.
>*search* _your search terms_ Search StackOverflow for relevant questions
>*fortune* Tell a fortune from the classic UNIX game `fortune`
>*hi* Say _"hi"_ to me!
>*about* Display links to more details about me.
>
>Example: *@Stackbot search HTML api*

You may try any such commands on Slack.

### Run tests

### Deployment

You may deploy Stackbot on Heroku by running the following commands in the repo directory:

```
$ heroku create
$ git push heroku master
$ heroku config:add SLACK_API_TOKEN=your_token_here
$ heroku ps:scale web=1
$ heroku open
```

This should keep Stackbot alive in your Heroku app for a while. However, if you want to keep running Stackbot for longer, you'll have to pay for a [premium plan](https://www.heroku.com/pricing).


## Authors

**Oscar Mier**
- Github: [@voscarmv](https://github.com/voscarmv)
- Twitter: [@voscarmv](https://twitter.com/voscarmv)
- Linkedin: [Oscar Mier](https://www.linkedin.com/in/oscar-mier-072984196/) 

👤 **Author2**

- Github: [@githubhandle](https://github.com/githubhandle)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- Linkedin: [linkedin](https://linkedin.com/linkedinhandle)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is MIT licensed.
