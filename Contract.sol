//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Wallet {
    string public name = "wallet";
    uint256 num;

    function setValue(uint256 _num) public {
        num = _num;
    }

    function getValue() public view returns (uint256) {
        return num;
    }

    function sendEthContract() public payable {}

    function contractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function sendEthUsers(address _user) public payable {
        payable(_user).transfer(msg.value);
    }

    function accountBalance(address _address) public view returns (uint256) {
        return (_address).balance;
    }
}
//0x49ecf06c3ae01a27CcE4F713f2eFEeaF9d4b7170
