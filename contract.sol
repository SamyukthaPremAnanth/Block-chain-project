// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;
contract supplychain
{
    address sid;
    struct product
    {
        address pid; //product id
        string name;
        uint mrp;
    }
    mapping(address=> product) pro;
    function addproduct(address id,string memory pname,uint pmrp) public
    {
        pro[id].pid=id;
        pro[id].name=pname;
        pro[id].mrp=pmrp;
        
    }
    function checkproduct(address id) public view returns(bool)
    {
        if(pro[id].pid==sid)
        {
            return(false);
        }
        else
        {
            return(true);
        }
    }
}
