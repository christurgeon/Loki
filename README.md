# Greetings from Loki

## Personal Configuration 
Create a file called ```settings.json``` and place it in the root directory of the application. You will need to initialize it with Alpaca, AlphaVantage, and Slack API keys. 

We recommend using the default ```12000``` milliseonds for ```requested_interval_millis``` because this is the minimum time allowed between contiuous requests to the AlphaVantage market data servers. Additionally, ```default_channel``` is the name of the Slack channel where you want the market data to be sent by the bot.

```
{
    "config": {
        "alpha_vantage_key": "xxx-xxx-xxx",
        "requests_interval_millis": "12000",
        "alpaca_key_id": "xxx-xxx-xxx",
        "alpaca_private_key": "xxx-xxx-xxx",
        "yahoo_finance_key": "xxx-xxx-xxx"
    },
    "slack": {
        "slack_private_key": "xxx-xxx-xxx",
        "default_channel": "market-watcher"
    },
    "stats": {
        "delta": "5.0"
    }
}
```

## Build
The current build utilizes a totally independent Python anc C++ backend. Run ```run-cpp.sh``` to boot up the C++ backend and run ```run-python.sh``` to boot up the Python backend.

Current Features:
1. Periodic polling of market data, sends data to slack channel
2. Alpaca hook up with account information
3. Extract news article links for a certain ticker
4. Scrape each ARK fund holdings

Goals:
Deprecate some C++ and allow Python as main driver.
1. Poll investments made by senators / gov't staff
2. Undervalued / overvalued calculations 
3. Check short interest (top float) warn if it gets over certain value for watchlist
4. Earnings dates for companies
5. Alpaca hookup for trading

Look into financialmodelingprep.com
