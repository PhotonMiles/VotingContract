// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Poll {
        string question;
        string[] options;
        mapping(uint => uint) votes;
    }

    Poll[] public polls;

    function createPoll(string memory question, string[] memory options) public {
        Poll storage newPoll = polls.push();
        newPoll.question = question;
        for (uint i = 0; i < options.length; i++) {
            newPoll.options.push(options[i]);
        }
    }

    function vote(uint pollIndex, uint optionIndex) public {
        Poll storage poll = polls[pollIndex];
        require(optionIndex < poll.options.length, "Invalid option.");
        poll.votes[optionIndex] += 1;
    }

    function getPoll(uint pollIndex) public view returns (string memory question, string[] memory options, uint[] memory votes) {
        Poll storage poll = polls[pollIndex];
        uint[] memory votesArray = new uint[](poll.options.length);
        for (uint i = 0; i < poll.options.length; i++) {
            votesArray[i] = poll.votes[i];
        }
        return (poll.question, poll.options, votesArray);
    }
}
