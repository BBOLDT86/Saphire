#!/bin/sh/
geth --identity "Almond1" --genesis /home/pi/CustomGenesis.json --rpc --rpcport "8000" --rpccorsdomain "*" --datadir "/home/pi/DrupeChain" --port "30303" --nodiscover --ipcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" --rpcapi "db,eth,net,web3" --autodag --networkid 1900 --nat "any" console
