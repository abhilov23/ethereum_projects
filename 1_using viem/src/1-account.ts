import { arbitrumSepolia, mainnet } from 'viem/chains';
import { createPublicClient, formatEther, http } from 'viem';
import { privateKeyToAccount } from 'viem/accounts';
import dotenv from "dotenv";

dotenv.config()

const privateKey="0xb9911e8f2e236090f2ce0511fd2bb39922b51d77a11e5a39fcfd684ed573a229"
const account = privateKeyToAccount(privateKey);

(async ()=>{
  const client = createPublicClient({
    chain: mainnet,
    transport: http()
  })

  const balance = await client.getBalance({
    address: "0x7E5F4552091A69125d5DfCb7b8C2659029395Bdf",
  })
  console.log(formatEther(balance))
})()