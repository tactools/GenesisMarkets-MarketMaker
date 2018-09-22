#property copyright "Copyright 2018, FX4BTC"
#property link      "https://github.com/fx4btc"
#property description "community driven projects"
#property version "1.15" // @hedgebitcoin same version number

input bool   PlaceBuyLimitFirst        = true;
input bool   MovingAverageLogic        = true;
input int    MA_PERIOD_A               = 50;
input ENUM_MA_METHOD MA_TYPE           = MODE_EMA;
input ENUM_APPLIED_PRICE MA_DATA_TYPE  = PRICE_MEDIAN;
input double MA_DEVIATION              = 3.0;
input int MA_BAR_SHIFT                 = 0;

// Indicators
int    MA_handle_1;                // handle of the indicator iMA
double BBUp[],BBLow[],BBMidle[];   // dynamic arrays for numerical values of Bollinger Bands
string market_name ="";

bool init_Indicators(string what_market){
   // grab the market symbol from init function for later use in indicator logic
   market_name = what_market;
 
   MA_handle_1=  iBands(what_market,PERIOD_CURRENT,MA_PERIOD_A,MA_BAR_SHIFT ,MA_DEVIATION,MA_DATA_TYPE);
 
   //--- report if there was an error in object creation
   if(MA_handle_1<0 )
      {
      Print("The creation of iMA has failed: MA_handle=",INVALID_HANDLE);
      Print("Runtime error = ",GetLastError());
      //--- forced program termination
      return(false);
      }
 
   // everything is ok
   return(true);
}


string get_direction(double dBid_Price){
   // use the logic 
   if(MovingAverageLogic){
   //--- do we have enough bars to work with
   int Mybars=Bars(market_name,0);
   if(Mybars<MA_PERIOD_A) // if total bars is less than 60 bars
     {
      Print("We have less than enough bars on the chart, Robot will wait for more bars before deciding on what to do next");
      return("NONE");
     }
     /*
     // To be used for getting recent/latest price quotes
         MqlTick Latest_Price; // Structure to get the latest prices      
         SymbolInfoTick(market_name ,Latest_Price); // Assign current prices to structure 
      
      // The BID price.
         static double dBid_Price; 
      
      // The ASK price.
         static double dAsk_Price; 
      
         dBid_Price = Latest_Price.bid;  // Current Bid price.
         dAsk_Price = Latest_Price.ask;  // Current Ask price.
     */
   CopyBuffer(MA_handle_1,0,0,MA_PERIOD_A,BBMidle);
   CopyBuffer(MA_handle_1,1,0,MA_PERIOD_A,BBUp);
   CopyBuffer(MA_handle_1,2,0,MA_PERIOD_A,BBLow);
     
   // the indicator arrays
   ArraySetAsSeries(BBUp,true);
   ArraySetAsSeries(BBLow,true);
   ArraySetAsSeries(BBMidle,true);
   //--- Copy the new values of our indicators to buffers (arrays) using the handle
   // 0 = middle
   // 1 = upper
   // 2 = lower
      // start index (0)
      // count how many values to store in the buffer (3)
   //"LastPrice: "  + DoubleToString(mrate[1].close,8) +          
                      
    if(dBid_Price >= BBLow[1] && dBid_Price < BBMidle[1] ){
      return("buy");
     }
     
     if(dBid_Price <= BBUp[1]  && dBid_Price > BBMidle[1] ){
       return("sell");
     }
   
   // No signal
      return("NONE");
   
   // don't use the logic, instead always return buy if PlaceBuyLimitFirst
   }else if(PlaceBuyLimitFirst){// No Moving Average Logic 
      return("buy");
   }else{
      return("sell");
   }
   
}

double get_ma_deviation(){

   CopyBuffer(MA_handle_1,0,0, MA_PERIOD_A, BBMidle);
   CopyBuffer(MA_handle_1,1,0, MA_PERIOD_A, BBUp);
   CopyBuffer(MA_handle_1,2,0, MA_PERIOD_A, BBLow);
   
   ArraySetAsSeries(BBUp,true);
   ArraySetAsSeries(BBLow,true);
   ArraySetAsSeries(BBMidle,true);
   
   double width = BBUp[1] - BBLow[1];
   
   return(width);
}
