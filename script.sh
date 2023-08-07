#!/bin/bash

echo "kava" >> output.txt
echo -e "----------------\n" >> output.txt

yarn hardhat --network kava deploy --tags NativeOFTWithFee

echo -e "\n----------------\n" >> output.txt

declare -a chains=("ethereum" "polygon" "arbitrum" "optimism" "bsc" "avalanche")

for i in "${chains[@]}"
do
    echo "$i" >> output.txt
    echo -e "----------------\n" >> output.txt

    yarn hardhat --network $i deploy --tags OFTWithFee

    echo -e "\n----------------\n" >> output.txt
done
