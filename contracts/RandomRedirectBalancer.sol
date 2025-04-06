// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RandomRedirectBalancer {
    string[] private servers;

    constructor() {
        // 예시 서버 주소들
        servers.push("http://localhost:3001");
        servers.push("http://localhost:3002");
        servers.push("http://localhost:3003");
        servers.push("http://localhost:3004");
        servers.push("http://localhost:3005");
    }

    function getRandomServer() public view returns (string memory) {
        require(servers.length > 0, "No servers available");
        uint256 random = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender, blockhash(block.number - 1))));
        uint256 index = random % servers.length;
        return servers[index];
    }

    function getServerCount() public view returns (uint) {
        return servers.length;
    }

    function getServerByIndex(uint index) public view returns (string memory) {
        require(index < servers.length, "Index out of bounds");
        return servers[index];
    }

    function addServer(string memory serverUrl) public {
        servers.push(serverUrl);
    }
}