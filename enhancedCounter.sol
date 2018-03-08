pragma solidity ^0.4.18;

contract GopherConExample {
    
    mapping(address => uint) public hits;
    address[] public hitList;
    
    function hitMe() public {
        if (hits[msg.sender] == 0) {
            hitList.push(msg.sender);
        }
        hits[msg.sender]++;
        Thump(msg.sender,hits[msg.sender]);
    }
    
    function numTargets() public view returns (uint) {
        return hitList.length;
    }
    
    event Thump(address who, uint count);
}
