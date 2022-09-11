// SPDX-License-Identifier: MIT

import "@ens/registry/IReverseRegistrar.sol";

pragma solidity ^0.8.16;

abstract contract PrimaryEnsNoOwner {

    IReverseRegistrar public REVERSE_REGISTRAR;

    /**
     * @dev Constructor. This contract can be used for ownerless contracts. The primary name 
     * cannot be updated.
     * @param _ens The ENS that is set to the contract address. Must be full name
     * including the .eth. Can also be a subdomain.
     */
    constructor(string memory _ens){
        if(block.chainid == 1){
            REVERSE_REGISTRAR = IReverseRegistrar(0x084b1c3C81545d370f3634392De611CaaBFf8148);
            REVERSE_REGISTRAR.setName(_ens);
        }
    }

}
