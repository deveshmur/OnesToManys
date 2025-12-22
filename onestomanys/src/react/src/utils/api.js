// src/react/src/utils/api.js
const API_BASE = "http://localhost:8080/api";

// ---------- TEAMS ----------

export async function getAllTeams() {
  const response = await fetch(`${API_BASE}/teams`);
  if (!response.ok) throw new Error("Failed to fetch teams");
  return response.json();
}

export async function getTeamById(teamId) {
  const response = await fetch(`${API_BASE}/teams/${teamId}`);
  if (!response.ok) throw new Error("Failed to fetch team");
  return response.json();
}

export async function createTeam(teamData) {
  const response = await fetch(`${API_BASE}/teams`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(teamData),
  });
  if (!response.ok) throw new Error("Failed to create team");
  return response.json();
}

export async function updateTeam(teamId, teamData) {
  const response = await fetch(`${API_BASE}/teams/${teamId}`, {
    method: "PUT",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(teamData),
  });
  if (!response.ok) throw new Error("Failed to update team");
  return response.json();
}

export async function deleteTeam(teamId) {
  const response = await fetch(`${API_BASE}/teams/${teamId}`, {
    method: "DELETE",
  });
  if (!response.ok) throw new Error("Failed to delete team");
  return;
}

// ---------- PLAYERS (by team) ----------

export async function getPlayersForTeam(teamId) {
  const response = await fetch(`${API_BASE}/teams/${teamId}/players`);
  if (!response.ok) throw new Error("Failed to fetch players");
  return response.json();
}

export async function createPlayerForTeam(teamId, playerData) {
  const response = await fetch(`${API_BASE}/teams/${teamId}/players`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(playerData),
  });
  if (!response.ok) throw new Error("Failed to create player");
  return response.json();
}

export async function updatePlayerForTeam(teamId, playerId, playerData) {
  const response = await fetch(
    `${API_BASE}/teams/${teamId}/players/${playerId}`,
    {
      method: "PUT",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(playerData),
    }
  );
  if (!response.ok) throw new Error("Failed to update player");
  return response.json();
}

export async function deletePlayerFromTeam(teamId, playerId) {
  const response = await fetch(
    `${API_BASE}/teams/${teamId}/players/${playerId}`,
    {
      method: "DELETE",
    }
  );
  if (!response.ok) throw new Error("Failed to delete player");
  return;
}
