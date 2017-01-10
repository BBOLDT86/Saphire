!#/bin/sh/
geth --testnet --fast --cache=512 --rpc --rpcport "8080" --rpccorsdomain "*" --port "30303" --nodiscover --ipcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" --rpcapi "db,eth,net,web3" console
