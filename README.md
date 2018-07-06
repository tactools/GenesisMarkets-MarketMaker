# GenesisMarkets-MarketMaker

This is a MetaTrader 5 robot to trade at the brokerage [GenesisMarkets](https://genesismarkets.io/?ref=780028). By design this robot is adding liquidity to the exchange (placing Limit orders in the orderbook and waiting for market buy/sells to fill these orders). It is a **passive trading strategy** that waits for market participates to enter and exit the market that use the Order Type **Market Order**.

## Privacy and Security
You own the bot after payment and I don't have any control over the license or any oversight over your trading. The robot does not require any external DLL requirements to operate on your trading account ensuring that this robot operates solely on your behalf. 

## Support, Updates, and Feedback
Join the [GenesisMarketsTrade](https://t.me/GenesisMarketsTrade) telegram chat group for support.  Updates will be released periodically to improve the performance.  Feedback is highly appreciated. 

## Cost for Lifetime License
**Special Offer:** 50% discount for GVTBTC trading pair only. The cost is 32 GVT if you want to use the robot soley on GVTBTC

The cost is **64 GVT Tokens** for a **lifetime unrestricted license** for One of your Live GenesisMarkets MetaTrader5 accounts. The license is locked to your account number and can not be changed. If you are trading with one BTC account and one ETH account (account currency of deposits), this will require two separate license. **The number of GVT tokens required to purchase a lifetime license will never increase or decrease.** I would like to create some demand for the GVT token during the alpha phase while we wait for the official release and global adoption.

1. To pay for your license send **only 64 GVT Tokens** to this address 0xa05174933956a6d0e266fc5fd9804dbbfac42299
2. Send your GenesisMarkets Account number with your transaction ID to telegram user @Hedgebitcoin
3. Download the GenesisMarketsMarketMaker.ex5 file from github
4. Follow the setup guide below

## Easy installation
No prior knowledge about trading , robots, or the use of MetaTrader platform are required. Follow the instructions below for an easy installation process. If you are need help, ask in the support [chat](https://t.me/GenesisMarketsTrade)

# Adding the files to your MetaTrader Platform
Download the github zip folder to your desktop , extract the contents and prepare moving the files to the appropiate directories from the directions below.
1. Open Metatrader Platform and locate the Navigation Bar on the Top of platform
2. Click on **File**
3. Click on **Open Data Folder** and this will open the file directory where you place the following files
  * Open the **MQL5** folder
  * Open the **Include** folder and place the files from the github zip folder **include** , Overwrite the files if present
 * Open the **Experts** folder and place the files from the github zip folder **GenesisMarketsMarketMaker.ex5** 
  * restart the platform (close application and reopen)
  
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
10. Drag and Drop **GenesisMarketsMakerBot** on to any Open Chart (anytime Time-Frame, any Market is ok)
11. You will see a Pop Up Box for figuring the **Inputs** tab, see the Robot Guide below for help
12. Within the Pop Up Box, click on **Common** Tab and checkbox the **Allow Automated Trading**
13. Click the **Auto Trading** Button on the Platform, you want to see a Green Arrow for ON, and Red Arrow for OFF
  * Alternatively you can simply double-click the **GenesisMarketsMarketMaker** to attach the robot to the most recently selected chart that you have open
# Robot Guide 
| Input Variable | Value Description |
| ----------- | ----------- |
|PlaceBuyFirst | **True** to trade Altcoins, **False** to trade on BTCUSDT |
|VolumeLimitOrder | Insert the volume size that you want to submit to the market  |
|ScaleOut | **True** Exit your position with the VolumeLimitOrder size. **False** exit 100% of position  |
|ScaleIn | **True** Enter position with the VolumeLimitOrder size until reaching VolumeMaxPosition. **False** only enter VolumeLimitOrder for open position size  |
|VolumeLimitOrder | Insert the volume size that you want to submit to the market  |
|MovingAverageLogic | You can select Moving Average Logic to only participate when market conditions are met   |
| MA Period A | How many bars(period) do you want to include to calculate the average price? on **MA1**|
| MA Data Type| Median Price? Close? Open? etc |
|OrderComment | This is the name of your strategy setup therefore you can have multiple strategy configurations on the same market|
|CommissionPercentage| It costs money to open and close a trade. Put the Percentage fee amount here(times 2)  |
|VolumeMaxPosition | Insert the maximum volume(number of coins) that you want to accummulate |

# Market Making
Within the  Genesis Markets Brokerage,  we can only buy alt coins and afterwards, sell them at a profit or loss. Market-making is solely buying alt coins and selling them at a profit right after buying them. The duration between buying and selling can be within seconds, minutes, or even hours depending on the trading activity of that altcoin.  

[Why Market Making is essential for crypto currency adoption?](https://medium.com/@fx4btc/why-market-making-is-essential-for-all-crypto-currencies-4fb6f8dba5ab)

## The benefits of being a market maker

1. Short Trading duration, You simply buy and sell coins all day long
2. Add liquidity to the market
3. Decrease spread and in return this attracts more traders
4. Increase daily volume turn over and in return this attracts more traders

# Adjusting the VolumeMaxPosition

Sometimes you can accumulate your Maximum position size very quickly in an active market.  If you reach the **VolumeMaxPosition**, increase the size by two times the original amount and start the robot again. This method is called Dollar-Cost-Averaging and it will gradually help you close your position at a profit sooner than later. Therefore, never become too aggressive on your first VolumeMaxPosition size.  Only allocate about 1-10% of your Bitcoin/Ether on your first deployment of the robot. If needed, you can increase the VolumeMaxPosition size later.  

**I would recommend using a small VoumeMaxPosition when you first start the robot and check the progress later.**


# Profits on Average
The Market-Maker robot will exit your positions at your desired profit. The market maker strategy ensures a profit is made before exiting the position and restarting the market-maker cycle again. The **profit percentage** is fully adjustable. Would you like to make 0.05%, 0.1%, or 1% per cycle (entering your position, and exiting the position). 

# Low Risk vs High Risk
The Level of risk can be adjusted by two components, **VolumeLimitOrder** and **VolumeMaxPosition**. If you start at a small amount it is safer than starting at a larger amount. Do you want to buy 0.1, 10, or 1000 GVT at a time and how many are you willing to buy? At this current time, these decisions are your choice. In the future, selective risk levels could be an added feature to calculate these values automatically. 

If you use the **MovingAverageLogic** feature you will be trading more conservatively. The MovingAverageLogic filters out some market conditions to ensure the market-making process goes smoothly. If you want to decrease your risk and are willing to sacrifice some profits , please use this feature. 

# Discount Tiers
Having the lowest commission results in more profits. If you pay less, you make more trades than another user who has to pay a higher commission because your limit orders can be filled before the other user. This means your robot ( market-making) will make you more profit in the longrun by entering and exiting more positions. However, you can still use this robot at the Highest Commission tier and still make money.

# Backtesting
The core strategy relies on the OrderBook **volume of the bids/ask** that are available on the exchanges. Since this data changes rapidly we can not have an accurate backtest without the orderbook. 

# Referral Program
GenesisMarkets has an affiliate program where you earn commission for every trade that another trader makes under your affiliate link. If you want to promote the software to your group, have your friends sign up under your affiliate link so you can share the commission while they use the software. 

# Parameters and Setting
The strategies work as they are designed to. The user only needs to select what volume they wish to trade with, the Altcoin that they wish to trade on, and the Chart time-frame they wish to use for the moving average calculations. You also have the ability to change the moving average periods to suit your own view on the market. **The default values are only an example.**

# Momentum Change
The market will always have swings of Up and down. If you want to filter out the noise (small momentum changes) you simply adjust the moving average values (increase the value). If you want to focus on every market swing to maximize trading activity, you decrease the moving average values. You can also turn off the MovingAverageLogic to ignore the market swings and be a market maker 24/7. 





  
  


