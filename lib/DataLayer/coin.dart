class Coin {
  String id = "";
  String symbol = "";
  String name = "";
  String? image;
  double currentPrice = 0.0;
  int marketCap = 0;
  int marketCapRank = 0;
  int? fullyDilutedValuation;
  int? totalVolume;
  double? high24h;
  double? low24h;
  double? priceChange24h;
  double? priceChangePercentage24h;
  int? marketCapChange24h;
  double? marketCapChangePercentage24h;
  double? circulatingSupply;
  int? totalSupply;
  int? maxSupply;
  double? ath;
  double? athChangePercentage;
  String? athDate;
  double? atl;
  double? atlChangePercentage;
  String? atlDate;
  Roi? roi;
  String? lastUpdated;

  Coin(
      {required this.id,
        required this.symbol,
        required this.name,
        this.image,
        required this.currentPrice,
        required this.marketCap,
        required this.marketCapRank,
        this.fullyDilutedValuation,
        this.totalVolume,
        this.high24h,
        this.low24h,
        this.priceChange24h,
        this.priceChangePercentage24h,
        this.marketCapChange24h,
        this.marketCapChangePercentage24h,
        this.circulatingSupply,
        this.totalSupply,
        this.maxSupply,
        this.ath,
        this.athChangePercentage,
        this.athDate,
        this.atl,
        this.atlChangePercentage,
        this.atlDate,
        this.roi,
        this.lastUpdated});

  Coin.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbol = json['symbol'];
    name = json['name'];
    image = json['image'];
    currentPrice = json['current_price'];
    marketCap = json['market_cap'];
    marketCapRank = json['market_cap_rank'];
    fullyDilutedValuation = json['fully_diluted_valuation'];
    totalVolume = json['total_volume'];
    high24h = json['high_24h'];
    low24h = json['low_24h'];
    priceChange24h = json['price_change_24h'];
    priceChangePercentage24h = json['price_change_percentage_24h'];
    marketCapChange24h = json['market_cap_change_24h'];
    marketCapChangePercentage24h = json['market_cap_change_percentage_24h'];
    circulatingSupply = json['circulating_supply'];
    totalSupply = json['total_supply'];
    maxSupply = json['max_supply'];
    ath = json['ath'];
    athChangePercentage = json['ath_change_percentage'];
    athDate = json['ath_date'];
    atl = json['atl'];
    atlChangePercentage = json['atl_change_percentage'];
    atlDate = json['atl_date'];
    roi = json['roi'] != null ? new Roi.fromJson(json['roi']) : null;
    lastUpdated = json['last_updated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['symbol'] = this.symbol;
    data['name'] = this.name;
    data['image'] = this.image;
    data['current_price'] = this.currentPrice;
    data['market_cap'] = this.marketCap;
    data['market_cap_rank'] = this.marketCapRank;
    data['fully_diluted_valuation'] = this.fullyDilutedValuation;
    data['total_volume'] = this.totalVolume;
    data['high_24h'] = this.high24h;
    data['low_24h'] = this.low24h;
    data['price_change_24h'] = this.priceChange24h;
    data['price_change_percentage_24h'] = this.priceChangePercentage24h;
    data['market_cap_change_24h'] = this.marketCapChange24h;
    data['market_cap_change_percentage_24h'] =
        this.marketCapChangePercentage24h;
    data['circulating_supply'] = this.circulatingSupply;
    data['total_supply'] = this.totalSupply;
    data['max_supply'] = this.maxSupply;
    data['ath'] = this.ath;
    data['ath_change_percentage'] = this.athChangePercentage;
    data['ath_date'] = this.athDate;
    data['atl'] = this.atl;
    data['atl_change_percentage'] = this.atlChangePercentage;
    data['atl_date'] = this.atlDate;
    if (this.roi != null) {
      data['roi'] = this.roi?.toJson();
    }
    data['last_updated'] = this.lastUpdated;
    return data;
  }
}

class Roi {
  double times = 0;
  String currency = "";
  double percentage = 0;

  Roi({required this.times, required this.currency, required this.percentage});

  Roi.fromJson(Map<String, dynamic> json) {
    times = json['times'];
    currency = json['currency'];
    percentage = json['percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['times'] = this.times;
    data['currency'] = this.currency;
    data['percentage'] = this.percentage;
    return data;
  }
}