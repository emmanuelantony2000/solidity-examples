#!/bin/bash

echo "kava-testnet" >> testOutput.txt
echo -e "----------------\n" >> testOutput.txt

yarn hardhat --network kava-testnet deploy --tags NativeOFTWithFee

echo -e "\n----------------\n" >> testOutput.txt

declare -a chains=("goerli" "mumbai" "arbitrum-goerli" "optimism-goerli")

for i in "${chains[@]}"
do
    echo "$i" >> testOutput.txt
    echo -e "----------------\n" >> testOutput.txt

    yarn hardhat --network $i deploy --tags OFTWithFee

    echo -e "\n----------------\n" >> testOutput.txt
done
