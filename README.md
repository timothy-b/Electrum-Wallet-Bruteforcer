# Electrum-Wallet-Bruteforcer
A Docker container for experimenting with btcrecover

## Note
This is not for cracking wallet encryption, but for cracking the master extended private key or "xprv" from a decrypted wallet.

## Design choices

### Cloud provider

I went with GCS because I'm familiar with it and prefer it to AWS or Joyent. Better interface, better documentation, less unexpected behavior (usually).

### OS

According to [Google's Cloud Pricing Calculator](https://cloud.google.com/products/calculator/), and this documentation on [premium images](https://cloud.google.com/compute/pricing#premiumimages), Debian, CentOS, CoreOS, Ubuntu, or "other User Provided OS"es are free, and other OSes cost cents per hour. I'm comfortable with Debian, so that's what I went with. I suppose I could go with Alpine for faster builds, but I'm cutting that corner for now.

### Library (btcrecover)
After I forgot my wallet I started imagining something very similar to btcrecover. Unfortunately, token replacement is insufficient to find my lost password, so I'm resorting to brute-forcing.

## Build
```cmd
docker build . -t brutus
```

## Enter the container
```cmd
docker run -it brutus
```

## Saving the image
```cmd
docker build -t timothygb/electrum-wallet-bruteforcer:master
```
