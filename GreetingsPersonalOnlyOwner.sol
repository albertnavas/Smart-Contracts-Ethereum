pragma solidity ^0.4.21;

contract GreetingsPersonalOnlyOwner {
    
    string greeting = 'Hello World!';
    address owner;
    
    function GreetingsPersonalOnlyOwner() {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    function renderGreetings () constant returns (string) {
        return greeting;
    }

    function setName(string newGreeting) onlyOwner returns(string) {
        greeting = newGreeting;
        return greeting;
    }
    
}