# GenesisMarkets-MarketMaker

This is a MetaTrader 5 robot to trade at the brokerage [GenesisMarkets](https://genesismarkets.io/?ref=780028). By design this robot is adding liquidity to the exchange (placing Limit orders in the orderbook and waiting for market buy/sells to fill these orders). It is a **passive trading strategy** that waits for market participates to enter and exit the market that use the Order Type **Market Order**.

**GenesisMarkets Account Type:** Base with BTC as the Currency. 

## Performance 
Genesis.Vision Manager [link](https://genesis.vision/investor/managers/hedgebitcoin) 
Retired: [GMTrade ETH](https://genesis.vision/manager/programs/GMTrade-ETH), [GMTrade BTC 133](https://genesis.vision/manager/programs/GMTrade-BTC-133)

# Market Making
Within the  Genesis Markets Brokerage,  we can only buy alt coins and afterwards, sell them at a profit or loss. Market-making is solely buying alt coins and selling them at a profit right after buying them. The duration between buying and selling can be within seconds, minutes, or even hours depending on the trading activity of that altcoin.  

[Why Market Making is essential for crypto currency adoption?](https://medium.com/@fx4btc/why-market-making-is-essential-for-all-crypto-currencies-4fb6f8dba5ab)

## The benefits of being a market maker

1. Short Trading duration, You simply buy and sell coins all day long
2. Add liquidity to the market
3. Decrease spread and in return this attracts more traders
4. Increase daily volume turn over and in return this attracts more traders

# How to buy a license

**To prevent abuse of your personal license, there is a balance restriction. If you reach the balance restriction you will need to buy another license and open another GenesisMarkets trading account. There is no limit to how many robot license you can purchase.**

1. Open a new **BTC-BASE** trading account at GenesisMarkets with a new email address if you already have an account. You must use our Affiliate Link as this pays for ongoing development and support for the robot. [GenesisMarkets](https://genesismarkets.io/?ref=780028)

2. Send CryptoCurrency equivalent of $500 USD to address
* BTC = [1J2Ltc9MUZdYTDt7Dgz8fGuc6XZPMp3tKV](https://www.blockchain.com/btc/address/1J2Ltc9MUZdYTDt7Dgz8fGuc6XZPMp3tKV)
* ETH = [0xDB62488D2986d780D3cbF17DB03DCDf6aDE201cc](https://etherscan.io/address/0xDB62488D2986d780D3cbF17DB03DCDf6aDE201cc)
* GVT = [0x5e3215839d72328f696856ffe878aFa907453921](https://etherscan.io/address/0x5e3215839d72328f696856ffe878aFa907453921)
* USDt = coming soon

[BTC Exchange Rate](https://www.binance.com/en/trade/BTC_USDT)

[ETH Exchange Rate](https://www.binance.com/en/trade/ETH_USDT)

[GVT Exchange Rate](https://www.binance.com/en/trade/GVT_BTC)

3. Fill out the [google sheets](https://docs.google.com/spreadsheets/d/1M5fCzfyjS4eT4gxLzluJA15UeO1ExDcSfrILpST3Aiw) with the following information
* Account Number of your trading account
* Payment Type
* TxHash of your payment
* the first letter of your email address to cross-check with GenesisMarkets affiliate links
* Telegram Username such as [@Hedgebitcoin](t.me/Hedgebitcoin)

4. Robot will be sent via Telegram. Future updates will be available on github for downloading 


# Easy installation
No prior knowledge about trading , robots, or the use of MetaTrader platform are required. Follow the instructions below for an easy installation process. If you are need help, ask in the support [chat](https://t.me/GenesisMarketsTrade)

## Adding the files to your MetaTrader Platform
Download the github zip folder to your desktop , extract the contents and prepare moving the files to the appropriate directories from the directions below.
1. Open Metatrader Platform and locate the Navigation Bar on the Top of platform
2. Click on **File**
3. Click on **Open Data Folder** and this will open the file directory where you place the following files
  * Open the **MQL5** folder
  * Open the **Include** folder and place the files from the github zip folder **include** , Overwrite the files if present
  * Open the **Include/Trade** folder and place the files from the github zip folder **include/trade** , Overwrite the files if present
  * Open the **Experts** folder and place the files from the github zip folder **GenesisMarketsMarketMaker.ex5** 
  * restart the platform (close application and reopen)
  
## Platform Setup Guide
1. Open Metatrader platform and locate the Navigation Bar on the Top of platform
2. Click on **Tools**
3. Click on **Options**
4. Click on **Expert Advisors**
  * Allow automated trading ( checkbox)
  * uncheck the other remaining boxes
5. Click **OK**
6. Locate the Navigation Bar on the Top of platform
7. Click on **View**
8. Click on **Navigator** and you will see Navigator Window embedded into the Platform
9. Double Click on **Expert Advisors** and this will show all your robots
10. Drag and Drop **GenesisMarketsMakerBot** on to any Open Chart (anytime Time-Frame, any Market is ok)
11. You will see a Pop Up Box for figuring the **Inputs** tab, see the Robot Guide below for help
12. Within the Pop Up Box, click on **Common** Tab and checkbox the **Allow Automated Trading**
13. Click the **Auto Trading** Button on the Platform, you want to see a Green Arrow for ON, and Red Arrow for OFF
  * Alternatively you can simply double-click the **GenesisMarketsMarketMaker** to attach the robot to the most recently selected chart that you have open
## Robot Guide 
| Input Variable | Value Description |
| ----------- | ----------- |
|SelectStrategy | Choose from 5 different strategies   |
|RiskExposurePecentage | Select the maximum amount of your balance to risk (expressed in percentage) 0.01 = 1% |
|HowManyPositions | The number of positions/signal entries within your RiskExposurePercentage (Higher number is less aggressive |
|ScaleIn | **True** Enter position with the VolumeLimitOrder size at better than Entry price until reaching VolumeMaxPosition. **False** only enter VolumeLimitOrder for open position size  |
|PositionBuild | **True** Enter position with the VolumeLimitOrder size at worse Entry price until reaching VolumeMaxPosition. **False** only enter VolumeLimitOrder for open position size  |
| MA Period A | How many bars(period) do you want to include to calculate the average price? on **MA1**|
| MA Data Type| Median Price? Close? Open? etc |
| MA DEVIATION| Default is 2, can be 2.1+ acts as Standard Deviation from Moving average price to allow trading in tight ranges|
|OrderComment | This is the name of your strategy setup therefore you can have multiple strategy configurations on the same market|
|CommissionPercentage| Put the Commission fee amount here. If GenesisMarkets fee is 0.15% , place a value of 0.0015 |
|ProfitPercentage|Put the Profit Percentage amount here (Goal for each cycle). If you want a goal of 0.1% , place a value of 0.001 |
|MinimumSpread|Prevent MarketMaking unless the spread is equal to OR greater than the Commission+Profit amount|


## Dollar Cost Averaging (DCA)

Sometimes you can accumulate your Maximum position size very quickly in an active market.  If you reach the **RiskExposurePercentage**, increase the size by two times the original amount and start the robot again. This method is called Dollar-Cost-Averaging and it will gradually help you close your position at a profit sooner than later. Therefore, never become too aggressive on your first **RiskExposurePercentage** deployment.  Only allocate about 1-10% of your Bitcoin on your first deployment of the robot.

## Profits on Average
The Market-Maker robot will exit your positions at your desired profit. The market maker strategy ensures a profit is made before exiting the position and restarting the market-maker cycle again. The **profit percentage** is fully adjustable. Would you like to make 0.05%, 0.1%, or 1% per cycle (entering your position, and exiting the position). 

# Backtesting
The core strategy relies on the OrderBook **volume of the bids/ask** that are available on the exchanges. Since this data changes rapidly we can not have an accurate backtest without the orderbook. 

# Privacy and Security
You own the bot after payment and I don't have any control over the license or any oversight over your trading. The robot does not require any external DLL requirements to operate on your trading account ensuring that this robot operates solely on your behalf. 

# Support, Updates, and Feedback
Join the [GenesisMarketsTrade](https://t.me/GenesisMarketsTrade) telegram chat group for support.  Updates will be released periodically to improve the performance.  Feedback is highly appreciated. 

# Wiki 
Link to github [wiki](https://github.com/fx4btc/GenesisMarkets-MarketMaker/wiki)








  
  


