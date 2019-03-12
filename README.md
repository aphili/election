### Introduction to dApp - Voting dApp, the classical approach

This voting dApp has been created following [Dapp University's](http://www.dappuniversity.com/articles/the-ultimate-ethereum-dapp-tutorial) tutorial.
Multiple issues were encountered along the way (especially since the tutorial was made a year ago).

- Solidity >0.5.0 was used
- Ganache was not used, instead Truffle development blockchain was prefered (sudo was mandatory to compile)
- function Constructor() were replaced by constructor()
- Storage and memory location had to be specified
- emit invocation had to be added before calling the event function
- the Mocha framework was used for testing 

To run the dApp, install Truffle (you should already have Web3 and Solc):

```sudo npm install -g truffle```
```sudo truffle development```
```>migrate```

Most issues were pointed out by the Solidity plugin on VS Code.
If anyone ever encounter this, I highly recommend doing the CryptoZombies introduction to Solidity before.
