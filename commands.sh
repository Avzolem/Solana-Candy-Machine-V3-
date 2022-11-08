bash <(curl -sSf https://sugar.metaplex.com/install.sh)
sugar --version

sh -c "$(curl -sSfL https://release.solana.com/v1.14.7/install)"
solana --version
PATH="/home/dev/.local/share/solana/install/active_release/bin:$PATH"
solana-install update

solana-keygen new --no-passphrase --outfile ./wallets/Owner.json
# DC53PMas4tEtAGNyGCvaDn9vbhCkfk8UgXYRXBP59SDx
solana-keygen new --no-passphrase --outfile ./wallets/Treasury.json
# 72aUKZzXEvdRsdN2yGbJETYaFZPR7AWu2YgLrVHnuPVu
solana-keygen new --no-passphrase --outfile ./wallets/Creator.json
# 2RykdnDpcnsZV3abWY18SWw9ihePZesetAbJNDtJG6NT



solana config set --keypair /home/dev/sites/personal/nft/wallets/Owner.json
solana config set --url https://metaplex.devnet.rpcpool.com/

solana balance
solana airdrop 2

curl https://docs.metaplex.com/assets/files/assets-ff6bd873ecd07b49c86faf3c7aab82d2.zip --output ./assets.zip
unzip assets.zip

sugar launch
#Candy Machine ID 4e756cDfoayQ2EpTfKbmvkyFUksN8ngUJrHak9ZTJ4Sp

# https://www.solaneyes.com/address/4e756cDfoayQ2EpTfKbmvkyFUksN8ngUJrHak9ZTJ4Sp?cluster=devnet

git clone https://github.com/metaplex-foundation/candy-machine-ui ./candy-machine-ui/
cd candy-machine-ui 
yarn install

cp .env.example .env
#Copy the candy machine id to the .env file

export NODE_OPTIONS=--openssl-legacy-provider

yarn start