// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract SimpleStorage {
    struct Person {
        uint256 favouriteNumber; // indexed at 0
        string name; // indexed at 1
    }

    Person[] public people;
    mapping(string => uint256) public nameToFavouriteNumber;

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

    function getPersonFavouriteNumber(string memory _name)
        public
        view
        returns (uint256)
    {
        return nameToFavouriteNumber[_name];
    }
}
