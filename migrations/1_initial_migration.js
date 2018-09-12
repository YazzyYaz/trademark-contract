var Migrations = artifacts.require("./Migrations.sol");
var ExampleToken = artifcats.require("./ExampleToken.sol");

module.exports = function(deployer) {
    deployer.deploy(Migrations);
    deployer.deploy(ExampleToken);
};
