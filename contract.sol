pragma solidity ^0.4.18;

contract Voting {

  mapping (bytes32 => uint8) public votesReceived;
  string[] public candidateList;

  function Voting() public {
    candidateList = ["Mariona", "Anna"] ;
  }

  function totalVotesFor(bytes32 candidate) view public returns (uint8) {
    
    return votesReceived[candidate];
  }

  function voteForCandidate(bytes32 candidate) public {
    
    votesReceived[candidate]  += 1;
  }


}

