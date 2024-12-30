// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // stating the version, feel free to use any solidity version

contract SimpleStorage {
    //favoriteNumber gets initialized to 0 if no value is given
    
    uint256 myFavoriteNumber = 0;

    // uint256[] listofFavoriteNumbers;
    struct Person {
        uint256 favoriteNumber;
        string name;
    } 
     // dynamic array
     Person[] public listOfPeople; //  []

    // chelsea -> 232
    mapping(string => uint256) public nameToFavoriteNumber;
    
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }
    
    // calldata, memory, storage
    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}