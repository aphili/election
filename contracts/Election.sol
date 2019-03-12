pragma solidity 0.5.0;

contract Election {

    // Model candidate
    struct Candidate {
        uint id; 
        string name; 
        uint voteCount;
    }

    // Read / write candidates
    mapping (uint => Candidate) public candidates;
    
    // Store accounts that have voted
    mapping (address => bool) public voters;

    // store candidates count
    uint public candidatesCount;

    constructor () public {
        addCandidates("Candidate 1");
        addCandidates("Candidate 2");
    }

    // Store candidate
    function addCandidates(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    //vote function
    function vote(uint _candidateId) public {

        // require that they haven't voted before
        require(!voters[msg.sender]);
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        // record that voter has voted
        voters[msg.sender] = true;

        //update candidate count
        candidates[_candidateId].voteCount++;
    }

}

