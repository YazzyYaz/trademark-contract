var TrademarkRegistration = 
    artifacts.require("./TrademarkRegistration.sol");

module.exports = function(deployer) {
    deployer.deploy(TrademarkRegistration);
};
