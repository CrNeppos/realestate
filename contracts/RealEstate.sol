pragma solidity ^0.4.19;

contract RealEstate {
    address public seller;
    address public buyer;
    string public streetAddress;
    string title;
    uint256 public price;

    function RealEstate () {
        // Who is seller?
        seller = msg.sender;
        // What is the street address?
        streetAddress = "5th Middle of Nowhere, 10E18";
        // What is the title?
        title = "0xf8cEF922ce65B6e207bD5F654A0F4D3fd3c8aD6a";
        // What is the price?
        price = 99000000000000000000; // 99 Ether
    }

    function buyHouse () payable public {
        require(seller != 0x0);
        require(buyer == 0x0);
        require(msg.sender != seller);
        require(msg.value == price);
        buyer = msg.sender;
        seller.transfer(msg.value);
    }
}