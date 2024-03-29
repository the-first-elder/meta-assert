// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.19;

contract HorseStore {

    error InvalidAmount();
    uint256 numberOfHorses;
  
   function setNumberOfHorsesWithRequire(uint num) public  {
    require(num != 0, "invalid amount");
     numberOfHorses = num;
   }


   function setNumberOfHorsesWithRevert(uint num) public  {
    if(num ==0) revert InvalidAmount();
     numberOfHorses = num;
   }

    function checkNumberOfHorsesIsGreaterThanTen() public view{
        assert(numberOfHorses > 10);
        // return true;
    }
    function readNumberOfHorses() external view returns (uint256) {
        return numberOfHorses;
    }
}
