var Migrations = artifacts.require("./Migrations.sol");
var TradeMarkRegistration = artifacts.require("./TradeMarkRegistration.sol");

module.exports = function(deployer) {
    deployer.deploy(Migrations);
    deployer.deploy(TradeMarkRegistration);
};
