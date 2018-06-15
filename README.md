# GenesisMarkets-MarketMaker

This is a MetaTrader 5 robot to trade at the brokerage GenesisMarkets
## MetaTrader5 Platform

MetaTrader Expert Advisor market-maker strategy to make money on GenesisMarkets Brokerage. The cost is **32 GVT Tokens** for a lifetime license for One of your Live GenesisMarkets MetaTrader5 accounts. The license is locked to your account number and can not be changed. If you are trading with one BTC account and one ETH account ( account currency of deposits), this will require two separate license. **The number of GVT tokens required to purchase a lifetime license will never increase or decrease.** I would like to create some demand for the GVT token during the alpha phase while we wait for the official release and global adoption.

1. To pay for your license send **only GVT Tokens** to this address 0x0EeAb63bEa8c998ac05b0B2BDaB1526CA03bC298
2. Send your GenesisMarkets Account number with your transaction ID to telegram user @Hedgebitcoin
3. Download the GenesisMarketsWhaleBot.ex5 file from github. 
4. Follow the setup guide below. 

# Adding the files to your MetaTrader Platform
Download the github zip folder to your desktop , extract the contents and prepare moving the files to the appropiate directories from the directions below.
1. Open Metatrader Platform and locate the Navigation Bar on the Top of platform
2. Click on **File**
3. Click on **Open Data Folder** and this will open the file directory where you place the following files
  * Open the **MQL5** folder
  * Open the **Include** folder and place the files from the github zip folder **include** , Overwrite the files if present.
 * Open the **Experts** folder and place the files from the github zip folder **GenesisMarketsMakerBot.ex5** 
  * restart the platform ( close application and reopen)
  
# Platform Setup Guide
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
10. Drag and Drop **GenesisMarketsMakerBot** on to any Open Chart ( anytime Time-Frame, any Market is ok)
11. You will see a Pop Up Box for figuring the **Inputs** tab, see the Robot Guide below for help.
12. Within the Pop Up Box, click on **Common** Tab and checkbox the **Allow Automated Trading**
13. Click the **Auto Trading** Button on the Platform, you want to see a Green Arrow for ON, and Red Arrow for OFF.
  * Alternatively you can simply double-click the **GenesisMarketsMakerBot** to attach the robot to the most recently selected chart that you have open. 
# Robot Guide 
| Input Variable | Value Description |
| ----------- | ----------- |
|PlaceBuyFirst | **True** to trade Altcoins, **False** to trade on BTCUSDT |
|VolumeMarketOrder | Insert the volume size that you want to submit to the market  |
|VolumeMaxPosition | Insert the maximum volume(number of coins) that you want to accummulate |
|PumpBotFrequencyInSeconds | How quickly do you want to accumulate the market? A value of **60** equals every minute  |
|OrderComment | This is the name of your strategy setup therefore you can have multiple strategy configurations on the same market|
| CommissionPercentage| It cost money to open and close a trade. Put the Percentage fee amount here(times 2)  |
| MA Period A | How many bars(period) do you want to include to calculate the average price? on **MA1**|
| MA Period B | How many bars(period) do you want to include to calculate the average price? on **MA2**|
| MA Period C| How many bars(period) do you want to include to calculate the average price? on **MA3** |
| MA Type | what type of moving average interests you? |
| MA Data Type| Median Price? Close? Open? etc |

# Market Making
In genesismarkets we can only buy alt coins and afterwards, sell them at a profit or loss. Market-making is solely buying alt coins and selling them at a profit right after buying them. The duration between buying and selling can be within seconds, minutes, or even hours depending on the trading activity of that altcon.  

[Why Market Making is essential for crypto currency adoption?](https://medium.com/@fx4btc/why-market-making-is-essential-for-all-crypto-currencies-4fb6f8dba5ab)

## The benefits of being a market maker.

1. Short Trading duration, You simply buy and sell coins all day long. 
2. Add liquidity to the market.
3. Decrease spread and in return this attracts more traders.
4. Increase daily volume turn over and in return this attracts more traders. 


# Profits on Average
Strategy caclulate the positions profit 24/7 and only exit your positions when you have a profit. The market maker strategy ensures a profit is made before exiting the position and restarting. 

# Backtesting
The core strategy relies on the OrderBook **volume of the bids/ask** that are available on the exchanges. Since this data changes rapidly we can not have an accurate backtest without the orderbook. 

# Referral Program
GenesisMarkets has an affiliate program where you earn commission for every trade that another trader makes under your affiliate link. If you want to promote the software to your group, have your friends sign up under your affiliate link so you can share the commission while they use the software. 

# Parameters and Setting
The strategies work as they are designed to. The user only needs to select what volume they wish to trade with, the Altcoin that they wish to trade on , and the Chart time-frame they wish to use for the moving average calculations. You also have the ability to change the moving average periods to suit your own view on the market. **The default values are only an example.**

# Momentum Change
The market will always have swings of Up and down. If you want to filter out the noise ( small momentum changes) you simply adjust the moving average values ( increase the value). If you want to focus on every market swing to maximize trading activity, you decrease the moving average values. 





  
  


