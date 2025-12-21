import { getAllTeams, getAllPlayers, getPlayersForTeam } from "./api.js";

const output = document.getElementById("output");

document.getElementById("getTeamsBtn").addEventListener("click", async () => {
    const teams = await getAllTeams();
    output.innerHTML = `<pre>${JSON.stringify(teams, null, 2)}</pre>`;
});

document.getElementById("getPlayersBtn").addEventListener("click", async () => {
    const players = await getAllPlayers();
    output.innerHTML = `<pre>${JSON.stringify(players, null, 2)}</pre>`;
});
