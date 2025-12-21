const API_BASE = "http://localhost:8080/api";

export async function getAllTeams() {
    const response = await fetch(`${API_BASE}/teams`);
    return response.json();
}

export async function getAllPlayers() {
    const response = await fetch(`${API_BASE}/players`);
    return response.json();
}

export async function getPlayersForTeam(teamId) {
    const response = await fetch(`${API_BASE}/teams/${teamId}/players`);
    return response.json();
}
