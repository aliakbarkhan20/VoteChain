// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DecentralizedVotingSystem {
    
    address public admin;
    
    constructor() {
        admin = msg.sender;
    }

    // Ensure only the admin can execute certain functions
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can execute this function");
        _;
    }

    // Voter registration
    mapping(address => bool) public registeredVoters;

    function registerVoter() public {
        require(!registeredVoters[msg.sender], "Voter already registered.");
        registeredVoters[msg.sender] = true;
    }

    // Proposal structure and array to store all proposals
    struct Proposal {
        string name;
        uint voteCount;
        uint startTime;
        uint endTime;
    }

    Proposal[] public proposals;

    // Function to create proposals, restricted to admin
    function createProposal(string memory name, uint durationInMinutes) public onlyAdmin {
        uint startTime = block.timestamp;
        uint endTime = block.timestamp + (durationInMinutes * 1 minutes);
        proposals.push(Proposal(name, 0, startTime, endTime));
    }

    // Mapping to store votes: proposalIndex => voterAddress => hasVoted
    mapping(uint => mapping(address => bool)) public votes;

    // Function to cast votes
    function vote(uint proposalIndex) public {
        require(registeredVoters[msg.sender], "Not registered to vote.");
        require(block.timestamp >= proposals[proposalIndex].startTime, "Voting hasn't started yet.");
        require(block.timestamp <= proposals[proposalIndex].endTime, "Voting has ended.");
        require(!votes[proposalIndex][msg.sender], "You have already voted.");
        
        votes[proposalIndex][msg.sender] = true;
        proposals[proposalIndex].voteCount += 1;
    }

    // Function to get the result of a proposal
    function getProposalResult(uint proposalIndex) public view returns (string memory, uint) {
        require(block.timestamp > proposals[proposalIndex].endTime, "Voting is still ongoing.");
        return (proposals[proposalIndex].name, proposals[proposalIndex].voteCount);
    }
}
