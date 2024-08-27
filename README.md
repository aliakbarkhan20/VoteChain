# VoteChain
# Decentralized Voting System (DVS)
![image](https://github.com/user-attachments/assets/3ead3012-ce5f-4030-b7ee-e3d64ff2fd0b)

## **Vision**
The **Decentralized Voting System (DVS)** aims to bring trust, transparency, and security to voting processes through blockchain technology. By decentralizing voting, DVS ensures that every vote is recorded on the blockchain, eliminating the need for centralized authorities and preventing tampering or fraud. This system empowers communities, organizations, and governments to conduct elections with complete transparency and immutability.

## **Features**
1. **Voter Registration**: Users register their Ethereum address to participate in voting.
2. **Proposal Creation**: The admin creates proposals with a defined voting period.
3. **Secure Voting**: Registered voters can cast their votes, with the blockchain ensuring one vote per address.
4. **Automated Result Calculation**: Once the voting period ends, results are automatically calculated and stored on the blockchain for public viewing.

## **Flowchart**
1. **Admin Registration**: The admin registers and creates proposals.
2. **Voter Registration**: Users register to participate in voting.
3. **Voting Period**: Registered voters cast their votes.
4. **Result Calculation**: The smart contract tallies the votes and announces the result.

## **Getting Started**
1. **Install MetaMask**: Ensure you have a MetaMask wallet connected to an Ethereum test network (Rinkeby, Goerli, etc.).
2. **Deploy the Contract**: Deploy the smart contract on the Ethereum test network.
3. **Interact with the Contract**: Use the contract to register voters, create proposals, and participate in voting.

### **Contract Details**
- **Contract Address**: 0xaC3aa06D028a4F140CF62dA52f7039368400BD3D 
![image](https://github.com/user-attachments/assets/b062413f-0d58-41e5-ae7b-d383452e78a3)


## **How to Use**
1. **Register as a Voter**: Call the `registerVoter()` function to register your Ethereum address as a voter.
2. **Create a Proposal**: As the admin, call the `createProposal(name, durationInMinutes)` function to create a new proposal.
3. **Vote on Proposals**: Registered voters can vote on proposals by calling the `vote(proposalIndex)` function.
4. **View Results**: After the voting period ends, call `getProposalResult(proposalIndex)` to view the proposal's result.

## **Future Enhancements**
1. **Multi-level Voting**: Introduce weighted voting where some votes have more influence based on roles or contributions.
2. **Anonymous Voting**: Implement privacy features like zk-SNARKs to enable anonymous voting.
3. **Cross-Chain Support**: Enable voting across multiple blockchains for broader participation.
4. **Governance Token**: Introduce a governance token that represents voting power.

## **Contact Information**
- **Project Lead**: Ali Akbar Khan 
- **Email**: aliakbar03112@gmail.com
- **GitHub**: https://github.com/aliakbarkhan20
- **LinkedIn**: https://www.linkedin.com/in/ali-akbar-khan-804a15295

This project is open for collaboration and feedback. Feel free to reach out for contributions or to share your thoughts!
