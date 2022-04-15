const { expect } = require('chai');
const { ethers } = require('hardhat');

describe('ERC721MDemo', function () {
  it('grant', async function () {
    const ERC721MDemo = await ethers.getContractFactory('ERC721MDemo');
    const demo = await ERC721MDemo.deploy();
    await demo.deployed();
    await demo.grant(0, 'Hello, ERC721M!', {
      value: ethers.utils.parseEther('0.3'),
    });
    expect(await demo.getGrantsWithToken(0)).to.eql(['Hello, ERC721M!']);
  });
});
