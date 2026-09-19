pragma solidity ^0.8.0;

contract InfiniteRegeneration315 {
    uint256 public vector;
    uint256 public constant MAX_VECTOR = 315;

    event VectorAdvanced(uint256 indexed newVector);

    function advanceVector() external {
        vector += 1;

        if (vector > MAX_VECTOR) {
            vector = 0;
        }

        emit VectorAdvanced(vector);
    }
}
