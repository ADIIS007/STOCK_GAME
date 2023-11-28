import 'package:stock_game/Utils/DTO/market_data.dart';
import 'package:stock_game/Utils/DTO/transaction_data.dart';

const APP_NAME = 'Next Trillionaire';

//these are N/W data
const CARD_NUMBER = '2242080602461245';
const EXPIRY_DATE = '12/2002';
const CARD_NAME = 'A ATHITHYA ITHAYAN';
const CVV = '285';

List<Transactions> Trans = [
  Transactions(stock: 'ADI_IN', isIncome: true, money: 500, quantity: 2, total: 1000),
  Transactions(stock: 'ADI_OUT', isIncome: false, money: 100, quantity: 1, total: 100),
  Transactions(stock: 'ADI_IN', isIncome: true, money: 500, quantity: 2, total: 1000),
  Transactions(stock: 'ADI_OUT', isIncome: false, money: 100, quantity: 1, total: 100),
  Transactions(stock: 'ADI_IN', isIncome: true, money: 500, quantity: 2, total: 1000),
  Transactions(stock: 'ADI_OUT', isIncome: false, money: 100, quantity: 1, total: 100),
  Transactions(stock: 'ADI_IN', isIncome: true, money: 500, quantity: 2, total: 1000),
  Transactions(stock: 'ADI_OUT', isIncome: false, money: 100, quantity: 1, total: 100),
  Transactions(stock: 'ADI_IN', isIncome: true, money: 500, quantity: 2, total: 1000),
  Transactions(stock: 'ADI_OUT', isIncome: false, money: 100, quantity: 1, total: 100),
];

List<MarketData> marketData = [
  MarketData(stock: 'SBIN', stockName: 'State Bank of India', url: 'https://economictimes.indiatimes.com/chart_tv.cms?entity=stock&symbol=SBINEQ&exchange=NSE&periodicity=day&platform=web'),
  MarketData(stock: 'INFY', stockName: 'State Bank of India', url: 'https://economictimes.indiatimes.com/chart_tv.cms?entity=stock&symbol=SBINEQ&exchange=NSE&periodicity=day&platform=web'),
  MarketData(stock: 'TCS', stockName: 'State Bank of India', url: 'https://economictimes.indiatimes.com/chart_tv.cms?entity=stock&symbol=SBINEQ&exchange=NSE&periodicity=day&platform=web'),
  MarketData(stock: 'HDFC', stockName: 'State Bank of India', url: 'https://economictimes.indiatimes.com/chart_tv.cms?entity=stock&symbol=SBINEQ&exchange=NSE&periodicity=day&platform=web'),
  MarketData(stock: 'CIPLA', stockName: 'State Bank of India', url: 'https://economictimes.indiatimes.com/chart_tv.cms?entity=stock&symbol=SBINEQ&exchange=NSE&periodicity=day&platform=web'),
  MarketData(stock: 'MRF', stockName: 'State Bank of India', url: 'https://economictimes.indiatimes.com/chart_tv.cms?entity=stock&symbol=SBINEQ&exchange=NSE&periodicity=day&platform=web'),
];