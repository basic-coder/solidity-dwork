// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

struct FreeLancerProfile{
    uint id;
    string name;
    address wallet;
    uint8 experienceYears;
    bool isAvailableHire;
    uint hourlyRateWei; 
}