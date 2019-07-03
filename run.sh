#!/bin/bash
if [ -z ${WALLETINFO} ]; then
    echo "missing required environment variable WALLETINFO";
    exit 1;
fi

if [ -n "$2" ]; then worker_num=$2; else worker_num=1; fi
if [ -n "$3" ]; then num_workers=$3; else num_workers=1; fi

if ($num_workers > 2);
    then worker_param="--worker $worker_num/$num_workers";
    else worker_param="";
fi

echo $worker_num/$num_workers

echo $WALLETINFO | python btcrecover.py --data-extract --autosave savefile --custom-wild "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_/\|()[]^<>@'#\$*{} " --no-dupchecks $worker_param --tokenlist tokens.txt
