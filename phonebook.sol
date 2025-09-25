//SPDX-License-identifier: MIT

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Phonebook{
    struct Contact{
        string name;
        uint256 PhoneNumber;
    }

    Contact[] public storeContacts;

    mapping(string => uint256) public nameToPhoneNumber;
    mapping(uint256 => string) public phoneNumberToName;

    function addContact( string memory _name, uint256 _phoneNumber) public {
        storeContacts.push(Contact(_name, _phoneNumber));
        nameToPhoneNumber[_name] = _phoneNumber;
        phoneNumberToName[_phoneNumber] = _name;
    }

    function TotalNumber () public view returns(uint256 PhoneNumber){
         return storeContacts.length;
    }


}