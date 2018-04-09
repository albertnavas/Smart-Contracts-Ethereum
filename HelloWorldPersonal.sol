pragma solidity ^0.4.21;

contract GreetingsPersonal {
    
    string greeting = 'Hello World!';
    
    function renderHelloWorld () constant returns (string) {
        return greeting;
    }

    function setName(string newGreeting) returns(string) {
        greeting = newGreeting;
        return greeting;
    }
    
}