// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ItemContract {

    address public owner;

   
    mapping(address=>mapping(uint=>Item)) public  items;
    struct Item {
         //Generate by offchain database
        string name;
        uint created_at; //Date that the item was added to the block chain
        string verified_at; // date that the item was searched. This is when the item was bought by a user and check if its genuine
    }

    constructor(){
        owner=msg.sender;
    }

    function addItem(uint _id, string memory _name) public{
        items[msg.sender][_id]=Item(_name ,block.timestamp,'');

    }

    

    
}