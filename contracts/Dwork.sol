// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import {FreeLancerProfile} from "./types/DworkTypes.sol";

contract Dwork{
    uint connectFee = 100;
    address public initialOwner;
    FreeLancerProfile[] public freeLancerProfiles;

    constructor (address _initialOwner){
        initialOwner = _initialOwner;
    } 

    function getNumberOfRegisteredFreelancers() public view returns (uint){
        return freeLancerProfiles.length ;
    }

    function registerFreelancerProfile(
        string calldata name, uint8 experienceYears , uint hourlyRateWei
    ) public {
        uint freelancerId = getNumberOfRegisteredFreelancers();

        FreeLancerProfile memory freeLancerProfile = FreeLancerProfile({
            id:freelancerId,
            name:name,
            wallet:msg.sender,
            experienceYears:experienceYears,
            isAvailableHire:true,
            hourlyRateWei:hourlyRateWei
        });

        freeLancerProfiles.push(freeLancerProfile);
    }  

    // function updateHourlyRate() public{
    // }

    function getFreelancerProfile() public view returns(FreeLancerProfile[] memory){
        return freeLancerProfiles;
    }
}