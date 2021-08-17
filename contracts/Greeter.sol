//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.3;

import "hardhat/console.sol";

contract Greeter {
    string greeting;

    constructor(string memory _greeting) {
        console.log("Deploying a Greeter with greeting:", _greeting);
        greeting = _greeting;
    }

    //public means you can access outside
    //view means you are just looking and not adding anything to the greet function
    function greet() public view returns (string memory) {
        //return a string
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        //update the value of greeting
        //the value of greeting is going to be anything that we add to our deploy function
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}
