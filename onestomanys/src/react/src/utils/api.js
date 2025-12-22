const API_BASE = "http://localhost:8080/api";

export async function getAllTeams() {
  const response = await fetch(`${API_BASE}/teams`);
  if (!response.ok) throw new Error("Failed to fetch teams");
  return response.json();
}

export async function getPlayersForTeam(teamId) {
  const response = await fetch(`${API_BASE}/teams/${teamId}/players`);
  if (!response.ok) throw new Error("Failed to fetch players");
  return response.json();
}
