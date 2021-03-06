  var Currency = {
    rates: {
      "USD": 1.0,
      "EUR": 1.13291,
      "GBP": 1.27237,
      "CAD": 0.752939,
      "ARS": 0.0223791,
      "AUD": 0.696128,
      "BRL": 0.259286,
      "CLP": 0.0014424,
      "CNY": 0.144652,
      "CYP": 0.397899,
      "CZK": 0.0442338,
      "DKK": 0.151695,
      "EEK": 0.0706676,
      "HKD": 0.127611,
      "HUF": 0.00352772,
      "ISK": 0.00805155,
      "INR": 0.0143977,
      "JMD": 0.00768337,
      "JPY": 0.00921703,
      "LVL": 1.57329,
      "LTL": 0.320236,
      "MTL": 0.293496,
      "MXN": 0.0523009,
      "NZD": 0.65832,
      "NOK": 0.115883,
      "PLN": 0.265742,
      "SGD": 0.733284,
      "SKK": 21.5517,
      "SIT": 175.439,
      "ZAR": 0.0681673,
      "KRW": 0.000848827,
      "SEK": 0.105851,
      "CHF": 1.00765,
      "TWD": 0.0318695,
      "UYU": 0.0282328,
      "MYR": 0.24018,
      "BSD": 1.0,
      "CRC": 0.00169777,
      "RON": 0.240023,
      "PHP": 0.019247,
      "AED": 0.272294,
      "VEB": 0.000100125,
      "IDR": 7.02252e-05,
      "TRY": 0.17226,
      "THB": 0.0319879,
      "TTD": 0.147746,
      "ILS": 0.279305,
      "SYP": 0.00194171,
      "XCD": 0.370031,
      "COP": 0.00030722,
      "RUB": 0.0154838,
      "HRK": 0.152809,
      "KZT": 0.00260435,
      "TZS": 0.000434799,
      "XPT": 814.978,
      "SAR": 0.266667,
      "NIO": 0.0299451,
      "LAK": 0.000115607,
      "OMR": 2.60078,
      "AMD": 0.00208851,
      "CDF": 0.000606499,
      "KPW": 0.00111104,
      "SPL": 6.0,
      "KES": 0.00987287,
      "ZWD": 0.00276319,
      "KHR": 0.000245675,
      "MVR": 0.0649577,
      "GTQ": 0.129819,
      "BZD": 0.496631,
      "BYR": 4.82558e-05,
      "LYD": 0.714492,
      "DZD": 0.00838023,
      "BIF": 0.000537666,
      "GIP": 1.27237,
      "BOB": 0.144867,
      "XOF": 0.00172712,
      "STD": 4.6165e-05,
      "NGN": 0.00277231,
      "PGK": 0.2965,
      "ERN": 0.0666667,
      "MWK": 0.00134187,
      "CUP": 0.0377358,
      "GMD": 0.0200869,
      "CVE": 0.010274,
      "BTN": 0.0143977,
      "XAF": 0.00172712,
      "UGX": 0.00026657,
      "MAD": 0.104017,
      "MNT": 0.000376154,
      "LSL": 0.0681673,
      "XAG": 14.7576,
      "TOP": 0.438618,
      "SHP": 1.27237,
      "RSD": 0.00947738,
      "HTG": 0.0108309,
      "MGA": 0.000274708,
      "MZN": 0.0160724,
      "FKP": 1.27237,
      "BWP": 0.0921475,
      "HNL": 0.0408798,
      "PYG": 0.000159296,
      "JEP": 1.27237,
      "EGP": 0.0596683,
      "LBP": 0.00066335,
      "ANG": 0.558661,
      "WST": 0.377968,
      "TVD": 0.696128,
      "GYD": 0.00477158,
      "GGP": 1.27237,
      "NPR": 0.00895656,
      "KMF": 0.00230282,
      "IRR": 2.37659e-05,
      "XPD": 1386.23,
      "SRD": 0.134095,
      "TMM": 5.71408e-05,
      "SZL": 0.0681673,
      "MOP": 0.123894,
      "BMD": 1.0,
      "XPF": 0.00949382,
      "ETB": 0.0343681,
      "JOD": 1.41044,
      "MDL": 0.0552702,
      "MRO": 0.00271758,
      "YER": 0.0039947,
      "BAM": 0.57925,
      "AWG": 0.558659,
      "PEN": 0.299985,
      "VEF": 0.100125,
      "SLL": 0.000112462,
      "KYD": 1.21952,
      "AOA": 0.00295001,
      "TND": 0.337366,
      "TJS": 0.105934,
      "SCR": 0.0732877,
      "LKR": 0.0056673,
      "DJF": 0.00562524,
      "GNF": 0.000108354,
      "VUV": 0.00864699,
      "SDG": 0.0221883,
      "IMP": 1.27237,
      "GEL": 0.366713,
      "FJD": 0.464419,
      "DOP": 0.0195859,
      "XDR": 1.38648,
      "MUR": 0.0281603,
      "MMK": 0.000658793,
      "LRD": 0.00516004,
      "BBD": 0.5,
      "ZMK": 7.60721e-05,
      "XAU": 1327.66,
      "VND": 4.2878e-05,
      "UAH": 0.0379521,
      "TMT": 0.285704,
      "IQD": 0.000842003,
      "BGN": 0.57925,
      "KGS": 0.0143411,
      "RWF": 0.00110454,
      "BHD": 2.65957,
      "UZS": 0.000117464,
      "PKR": 0.00658333,
      "MKD": 0.0183815,
      "AFN": 0.0125775,
      "NAD": 0.0681673,
      "BDT": 0.011844,
      "AZN": 0.589449,
      "SOS": 0.00171374,
      "QAR": 0.274725,
      "PAB": 1.0,
      "CUC": 1.0,
      "SVC": 0.114286,
      "SBD": 0.124775,
      "ALL": 0.00929471,
      "BND": 0.733284,
      "KWD": 3.29113,
      "GHS": 0.185366,
      "ZMW": 0.0760721,
      "XBT": 7985.94,
      "NTD": 0.0337206,
      "BYN": 0.482558,
      "CNH": 0.144392,
      "MRU": 0.0271758,
      "STN": 0.046165,
      "VES": 0.000163261
    },
    convert: function(amount, from, to) {
      return (amount * this.rates[from]) / this.rates[to];
    }
  };
