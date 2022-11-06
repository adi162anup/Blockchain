// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;  //denotes compiler version anywhere from 6 and below 7

contract SimpleStorage {
    uint256 public FavoriteNumber;  // gets initialized to index 0 
    // bool FavoriteBool = false;
    // string FavoriteString = 'String';
    // int256 = -5;
    // address FavoriteAddress = 0x4677d7856a7FEC86112C63182fE0566DE863F0e6;
    // bytes32 = 'cat';

    struct People {
        uint256 FavoriteNumber;
        string Name;
    }

    People public person = People({FavoriteNumber: 69, Name: "Adithya"});

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        FavoriteNumber = _favoriteNumber;
    }

    function retreive(uint256 FavoriteNumber) public pure returns(uint256) {  // pure / view , view does not make a state change
        return FavoriteNumber + FavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public { // memory / storage
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber; // mapping name to favorite number
    }
}
