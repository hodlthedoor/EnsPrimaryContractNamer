# EnsPrimaryContractNamer


This is for primary naming of contracts on the Ethereum network.

## Usage

Inherit contract from PrimaryEns. Call method `setPrimaryName()` with the lowercase full domain that will
resolve to the contract address. Only the deployer can set the primary name of the contract.

For ownerless contracts PrimaryEnsNoOwner can be extended and the full domain passed into the constructor