//
//  MarketDataModel.swift
//  CryptoTracker
//
//  Created by omar thamri on 25/12/2022.
//

import Foundation

// json data
/*
 url: https://api.coingecko.com/api/v3/global
 json response:
 {
   "data": {
     "active_cryptocurrencies": 12907,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 623,
     "total_market_cap": {
       "btc": 50185907.02240256,
       "eth": 691842650.5604471,
       "ltc": 12818449850.75229,
       "bch": 8290251528.583667,
       "bnb": 3448517431.075766,
       "eos": 959542198537.2408,
       "xrp": 2395989005445.718,
       "xlm": 11339741679689.959,
       "link": 142808274083.69,
       "dot": 189516192589.8162,
       "yfi": 153780555.7121449,
       "usd": 845713027773.9717,
       "aed": 3105796523197.135,
       "ars": 147110394211916.75,
       "aud": 1258505556630.4468,
       "bdt": 89507380441033.16,
       "bhd": 318270566594.2899,
       "bmd": 845713027773.9717,
       "brl": 4368784358874.7817,
       "cad": 1153933140746.1958,
       "chf": 789299740256.3098,
       "clp": 742536038385549.5,
       "cny": 5911280350231.745,
       "czk": 19276717612914.65,
       "dkk": 5925995756914.992,
       "eur": 792819597877.903,
       "gbp": 701661882040.204,
       "hkd": 6601847323060.579,
       "huf": 319062153988286.4,
       "idr": 13187388999563252,
       "ils": 2961898451521.39,
       "inr": 69859574945801.01,
       "jpy": 112281099240740.52,
       "krw": 1082719361048969.1,
       "kwd": 259177214491.6112,
       "lkr": 309068792761299.3,
       "mmk": 1775766760291195.8,
       "mxn": 16385013342698.49,
       "myr": 3742280147899.823,
       "ngn": 377720809594688.75,
       "nok": 8360211564756.798,
       "nzd": 1343254459143.6748,
       "php": 46704504495956.695,
       "pkr": 190708287763030.62,
       "pln": 3696898341116.4478,
       "rub": 59411337663982.44,
       "sar": 3180444229306.631,
       "sek": 8907134179818.27,
       "sgd": 1142896585733.745,
       "thb": 29392476349272.207,
       "try": 15785824816807.613,
       "twd": 26014217305630.133,
       "uah": 31226816912244.6,
       "vef": 84681245471.00777,
       "vnd": 20001113106854420,
       "zar": 14388876883243.568,
       "xdr": 635135558136.4188,
       "xag": 35618734905.2811,
       "xau": 470207986.31205064,
       "bits": 50185907022402.56,
       "sats": 5018590702240256
     },
     "total_volume": {
       "btc": 1173623.189553698,
       "eth": 16179095.415324131,
       "ltc": 299766027.7866155,
       "bch": 193871786.2932229,
       "bnb": 80645349.79678664,
       "eos": 22439386719.780605,
       "xrp": 56031432438.82288,
       "xlm": 265185678379.6276,
       "link": 3339644774.1781845,
       "dot": 4431933417.484043,
       "yfi": 3596237.2106906977,
       "usd": 19777433147.918175,
       "aed": 72630645492.41473,
       "ars": 3440252061090.002,
       "aud": 29430798267.417027,
       "bdt": 2093176023996.3206,
       "bhd": 7442920526.28864,
       "bmd": 19777433147.918175,
       "brl": 102166264155.51567,
       "cad": 26985318658.676952,
       "chf": 18458179469.786312,
       "clp": 17364586303872.21,
       "cny": 138238324474.00403,
       "czk": 450795933585.4158,
       "dkk": 138582451810.7773,
       "eur": 18540493146.5479,
       "gbp": 16408723182.400139,
       "hkd": 154387587510.93652,
       "huf": 7461432203715.091,
       "idr": 308393859109569.6,
       "ils": 69265515242.29637,
       "inr": 1633702009852.2375,
       "jpy": 2625751124886.3076,
       "krw": 25319947875777.184,
       "kwd": 6060992162.511,
       "lkr": 7227732323142.178,
       "mmk": 41527216957264,
       "mxn": 383171945294.3965,
       "myr": 87515141679.53789,
       "ngn": 8833194966854.69,
       "nok": 195507837640.4298,
       "nzd": 31412694843.169865,
       "php": 1092208804926.0812,
       "pkr": 4459811174855.548,
       "pln": 86453864839.38753,
       "rub": 1389364619308.9526,
       "sar": 74376320406.64885,
       "sek": 208297903657.18954,
       "sgd": 26727223156.09662,
       "thb": 687358142725.5245,
       "try": 369159614131.6635,
       "twd": 608355821373.2776,
       "uah": 730255138116.7284,
       "vef": 1980314381.1010463,
       "vnd": 467736293948264.56,
       "zar": 336491269835.3648,
       "xdr": 14852970958.685423,
       "xag": 832962394.1785717,
       "xau": 10996055.055911029,
       "bits": 1173623189553.698,
       "sats": 117362318955369.81
     },
     "market_cap_percentage": {
       "btc": 38.34217441045824,
       "eth": 17.41687410429379,
       "usdt": 7.840619924676276,
       "usdc": 5.235097653328117,
       "bnb": 4.730523796203195,
       "xrp": 2.1014303386256827,
       "busd": 2.067599510546425,
       "doge": 1.2614509605809443,
       "ada": 1.077087360609259,
       "matic": 0.8467346938154797
     },
     "market_cap_change_percentage_24h_usd": 0.2081051019643262,
     "updated_at": 1671929295
   }
 }

 */
struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum codingKeys: String,CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd"}) {
            return "\(item.value)"
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: {$0.key == "usd"}) {
            return "\(item.value)"
        }
        return ""
    }
    
    var bitcoinDominance: String {
        if let item = marketCapPercentage.first(where: {$0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}
