// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //stating my preffered version

contract SimpleStorage {
    uint256 favoriteNumber; // It's the same as saying = 0 because no value was given


   // uint256 [] listOfFavoriteNumbers;

    struct Person{
        string name;
        uint256 __favoriteNumber;
    }

    //dynamic array
    Person[] public listOfFriends;

    mapping(string => uint256) public nameToFavoriteNumber;
    mapping(uint256 => string) public favoriteNoToName;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber; // storing the favorite number from whenever store function is called
    }

    //view means you're just reading state, pure
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 __favoriteNumber) public{
        listOfFriends.push(Person( _name, __favoriteNumber));
        nameToFavoriteNumber[_name] = __favoriteNumber;
        favoriteNoToName[__favoriteNumber] = _name;
    }
}