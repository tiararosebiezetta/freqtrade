echo "{
    "max_open_trades": 3,
    "stake_currency": "BTC",
    "stake_amount": 0.05,
    "tradable_balance_ratio": 0.99,
    "fiat_display_currency": "USD",
    "amount_reserve_percent": 0.05,
    "amend_last_stake_amount": false,
    "last_stake_amount_min_ratio": 0.5,
    "dry_run": true,
    "cancel_open_orders_on_exit": false,
    "timeframe": "5m",
    "trailing_stop": false,
    "trailing_stop_positive": 0.005,
    "trailing_stop_positive_offset": 0.0051,
    "trailing_only_offset_is_reached": false,
    "use_sell_signal": true,
    "sell_profit_only": false,
    "sell_profit_offset": 0.0,
    "ignore_roi_if_buy_signal": false,
    "minimal_roi": {
        "40":  0.0,
        "30":  0.01,
        "20":  0.02,
        "0":  0.04
    },
    "stoploss": -0.10,
    "unfilledtimeout": {
        "buy": 10,
        "sell": 30,
        "unit": "minutes"
    },
    "bid_strategy": {
        "price_side": "bid",
        "use_order_book": true,
        "ask_last_balance": 0.0,
        "order_book_top": 1,
        "check_depth_of_market": {
            "enabled": false,
            "bids_to_ask_delta": 1
        }
    },
    "ask_strategy":{
        "price_side": "ask",
        "use_order_book": true,
        "order_book_top": 1
    },
    "order_types": {
        "buy": "limit",
        "sell": "limit",
        "emergencysell": "market",
        "forcesell": "market",
        "forcebuy": "market",
        "stoploss": "market",
        "stoploss_on_exchange": false,
        "stoploss_on_exchange_interval": 60
    },
    "order_time_in_force": {
        "buy": "gtc",
        "sell": "gtc"
    },
    "pairlists": [
        {"method": "StaticPairList"},
        {
            "method": "VolumePairList",
            "number_assets": 20,
            "sort_key": "quoteVolume",
            "refresh_period": 1800
        },
        {"method": "AgeFilter", "min_days_listed": 10},
        {"method": "PrecisionFilter"},
        {"method": "PriceFilter", "low_price_ratio": 0.01, "min_price": 0.00000010},
        {"method": "SpreadFilter", "max_spread_ratio": 0.005},
        {
            "method": "RangeStabilityFilter",
            "lookback_days": 10,
            "min_rate_of_change": 0.01,
            "refresh_period": 1440
        }
    ],
    "exchange": {
        "name": "binance",
        "sandbox": false,
        "key": "your_exchange_key",
        "secret": "your_exchange_secret",
        "password": "",
        "ccxt_config": {},
        "ccxt_async_config": {},
        "pair_whitelist": [
            "ALGO/BTC",
            "ATOM/BTC",
            "BAT/BTC",
            "BCH/BTC",
            "BRD/BTC",
            "EOS/BTC",
            "ETH/BTC",
            "IOTA/BTC",
            "LINK/BTC",
            "LTC/BTC",
            "NEO/BTC",
            "NXS/BTC",
            "XMR/BTC",
            "XRP/BTC",
            "XTZ/BTC"
        ],
        "pair_blacklist": [
            "DOGE/BTC"
        ],
        "outdated_offset": 5,
        "markets_refresh_interval": 60
    },
    "edge": {
        "enabled": false,
        "process_throttle_secs": 3600,
        "calculate_since_number_of_days": 7,
        "allowed_risk": 0.01,
        "stoploss_range_min": -0.01,
        "stoploss_range_max": -0.1,
        "stoploss_range_step": -0.01,
        "minimum_winrate": 0.60,
        "minimum_expectancy": 0.20,
        "min_trade_number": 10,
        "max_trade_duration_minute": 1440,
        "remove_pumps": false
    },
    "telegram": {
        "enabled": true,
        "token": "$token",
        "chat_id": "$chatid",
        "notification_settings": {
            "status": "on",
            "warning": "on",
            "startup": "on",
            "buy": "on",
            "buy_fill": "on",
            "sell": {
                "roi": "off",
                "emergency_sell": "off",
                "force_sell": "off",
                "sell_signal": "off",
                "trailing_stop_loss": "off",
                "stop_loss": "off",
                "stoploss_on_exchange": "off",
                "custom_sell": "off"
            },
            "sell_fill": "on",
            "buy_cancel": "on",
            "sell_cancel": "on",
            "protection_trigger": "off",
            "protection_trigger_global": "on"
        },
        "reload": true,
        "balance_dust_level": 0.01
    },
    "api_server": {
        "enabled": false,
        "listen_ip_address": "127.0.0.1",
        "listen_port": 8080,
        "verbosity": "error",
        "enable_openapi": false,
        "jwt_secret_key": "somethingrandom",
        "CORS_origins": [],
        "username": "freqtrader",
        "password": "SuperSecurePassword"
    },
    "bot_name": "freqtrade",
    "db_url": "sqlite:///tradesv3.sqlite",
    "initial_state": "running",
    "forcebuy_enable": false,
    "internals": {
        "process_throttle_secs": 5,
        "heartbeat_interval": 60
    },
    "disable_dataframe_checks": false,
    "strategy": "SampleStrategy",
    "strategy_path": "user_data/strategies/",
    "dataformat_ohlcv": "json",
    "dataformat_trades": "jsongz"
}" >> "user_data/config.json"
