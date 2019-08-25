rm -r apps/block_scout_web/priv/static

mix do deps.get, local.rebar --force, deps.compile, compile

cd apps/block_scout_web/assets; npm install && node_modules/webpack/bin/webpack.js --mode production; cd -

cd apps/explorer && npm install; cd -

cd apps/block_scout_web

mix phx.gen.cert blockscout blockscout.local; cd -

export 'COIN=POA'
export 'ETHEREUM_JSONRPC_VARIANT=geth'
export 'ETHEREUM_JSONRPC_HTTP_URL=http://167.86.95.197:8547'
export 'ETHEREUM_JSONRPC_WS_URL=ws://167.86.95.197:8548'
export "BLOCKSCOUT_VERSION=V1.0.0 - Xerom"
export 'LINK_TO_OTHER_EXPLORERS=false'
export 'RELEASE_LINK=https://github.com/poanetwork/blockscout/releases/tag/${BLOCKSCOUT_VERSION}  '
export 'SUBNETWORK=XERO'
export 'NETWORK=Mainnet'


mix phx.server
