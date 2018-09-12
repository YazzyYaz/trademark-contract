pragma solidity 0.4.19;


//import "./StringAsKey.sol";

contract TrademarkRegistration {
    struct TradeMark {
        string phrase;
        string authorName;
        uint256 timestamp;
        bytes32 proof;
    }

    mapping (bytes32 => bool) private trademarkLookup;
    mapping (bytes32 => TradeMark) public trademarkRegistry;
    
    function checkTradeMark(string phrase) constant returns (bool) {
        bytes32 proof = phraseProof(phrase);
        return trademarkLookup[proof];
    }

    function registerTradeMark(string document, string author) returns (bool){
        if (checkTradeMark(document) == false) {
            bytes32 proofHash = phraseProof(document);
            TradeMark memory trademark = TradeMark({
                phrase: document,
                authorName: author,
                timestamp: now,
                proof: proofHash
            });
            trademarkLookup[proofHash] = true;
            trademarkRegistry[proofHash] = trademark;
            return true;
        }
        return false;
    }

    function phraseProof(string phrase) constant returns (bytes32) {
        return sha256(phrase);
    }

    function getTradeMarkData(string phrase) 
        constant returns 
        (string document, 
         string authorName, 
         uint256 timestamp, 
         bytes32 proof) {
        TradeMark memory t = trademarkRegistry[phraseProof(phrase)];
        return (t.phrase, t.authorName, t.timestamp, t.proof);
    }
}
