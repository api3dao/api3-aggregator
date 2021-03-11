// SPDX-License-Identifier: MIT
pragma solidity 0.8.2;

interface AggregatorInterface {
  function updateAnswer() external view returns (bool success);
  function latestAnswer() external view returns (int256 answer);
  function latestTimestamp() external view returns (uint256 timestamp);
  function latestAnswerID() external view returns (uint256 answerID);
  function getAnswer(uint256 answerID) external view returns (int256 answer);
  function getTimestamp(uint256 answerID) external view returns (uint256 timestamp);

  event NewUpdateRequested(uint256 indexed answerID, address indexed triggeredBy, uint256 timestamp);
  event AnswerUpdated(int256 indexed value, uint256 indexed answerID, uint256 timestamp);
}

