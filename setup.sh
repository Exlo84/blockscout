git pull

rm -r apps/block_scout_web/priv/static

mix do deps.get, local.rebar --force, deps.compile, compile

cd apps/block_scout_web/assets; npm install && node_modules/webpack/bin/webpack.js --mode production; cd -

cd apps/explorer && npm install; cd -

cd apps/block_scout_web; cd -

export 'COIN=XERO'
echo 'COIN=XERO'

export 'ETHEREUM_JSONRPC_VARIANT=geth'
echo 'ETHEREUM_JSONRPC_VARIANT=geth'

export 'ETHEREUM_JSONRPC_HTTP_URL=http://193.37.152.155:8547'
echo 'ETHEREUM_JSONRPC_HTTP_URL=http://193.37.152.155:8547'

export 'ETHEREUM_JSONRPC_WS_URL=ws://193.37.152.155:8548'
echo 'ETHEREUM_JSONRPC_WS_URL=ws://193.37.152.155:8548'

export "BLOCKSCOUT_VERSION=V1.1.1 - Xerom - exlo.tech"
echo "BLOCKSCOUT_VERSION=V1.1.1 - Xerom - exlo.tech"

export 'LINK_TO_OTHER_EXPLORERS=false'
echo 'LINK_TO_OTHER_EXPLORERS=false'

export 'RELEASE_LINK=https://github.com/Exlo84/blockscout/releases'
echo 'RELEASE_LINK=https://github.com/Exlo84/blockscout/releases'

export 'SUBNETWORK=XERO'
echo 'SUBNETWORK=XERO'

export 'NETWORK=Mainnet'
echo 'NETWORK=Mainnet'

export 'ADDRESS_WITH_BALANCES_UPDATE_INTERVAL=0.3'
echo 'ADDRESS_WITH_BALANCES_UPDATE_INTERVAL=0.3'

export 'TXS_COUNT_CACHE_PERIOD=1'
echo 'TXS_COUNT_CACHE_PERIOD=1 * 1 * 1'

export 'CHAIN_SPEC_PATH=chainspec.json'
echo 'CHAIN_SPEC_PATH=chainspec.json'

export 'EMISSION_FORMAT=STANDARD'
echo 'EMISSION_FORMAT=STANDARD'

export 'PORT=80'
echo 'PORT=80'

mix phx.server
