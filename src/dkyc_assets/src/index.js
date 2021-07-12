import { Actor, HttpAgent } from '@dfinity/agent';
import { idlFactory as dkyc_idl, canisterId as dkyc_id } from 'dfx-generated/dkyc';

const agent = new HttpAgent();
const dkyc = Actor.createActor(dkyc_idl, { agent, canisterId: dkyc_id });

document.getElementById("clickMeBtn").addEventListener("click", async () => {
  const name = document.getElementById("name").value.toString();
  const greeting = await dkyc.greet(name);

  document.getElementById("greeting").innerText = greeting;
});
