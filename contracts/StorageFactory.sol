// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArr;

    function createSimpleSotrageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArr.push(simpleStorage);
    }

    function storageFactoryStore(
        uint256 _simpleStorageIndex,
        string memory _name,
        uint256 _favouriteNumber
    ) public {
        SimpleStorage simpleStorage = SimpleStorage(
            simpleStorageArr[_simpleStorageIndex]
        );
        simpleStorage.addPerson(_name, _favouriteNumber);
    }

    function storageFactoryGet(uint256 _simpleStorageIndex)
        public
        view
        returns (SimpleStorage)
    {
        SimpleStorage simpleStorage = SimpleStorage(
            simpleStorageArr[_simpleStorageIndex]
        );
        return simpleStorage;
    }
}
