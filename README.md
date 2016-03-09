# hubot-adventuretime

Who doesn't need more Adventure Time in their lives?!
This hubot script listens to ~76 key words and responds with an appropriate Adventure Time gif!

See [`src/adventuretime.coffee`](src/adventuretime.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-adventuretime --save`

Then add **hubot-adventuretime** to your `external-scripts.json`:

```json
["hubot-adventuretime"]
```

## Sample Interaction

```
user1>> Anyone want to get lunch?
hubot>> https://media.giphy.com/media/fVQkNYbtn49mo/giphy.gif
```

```
user1>> There's some cake in the kitchen!
hubot>>	https://media.giphy.com/media/mqlCGU6h3xUvm/giphy.gif
```
## Want to configure how often Hubot responds?
Drop an ```adventuretime.config``` into your root hubot directory and add a "messageThreshold" property. ```messageThreshold``` is the number of times hubot must "hear" an AdventureTime triggering message before actually responding.

Example ```adventuretime.config``` for only responding once for every 5 "triggering" messages:
```
{
  "messageThreshold" : 5
}
```
## Know any good GIFs?

This project is hosted on gitub!
You can contribute prompt-response pairs here: https://github.com/christinakayastha/hubot-adventuretime/blob/master/src/data.json
