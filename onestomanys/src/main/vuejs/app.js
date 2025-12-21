const API_BASE = "http://localhost:8080/api";

const app = Vue.createApp({
    data() {
        return {
            output: ""
        };
    },
    methods: {
        async loadTeams() {
            try {
                const res = await fetch(`${API_BASE}/teams`);
                const data = await res.json();
                this.output = JSON.stringify(data, null, 2);
            } catch (e) {
                this.output = "Error loading teams.";
            }
        },
        async loadPlayers() {
            try {
                const res = await fetch(`${API_BASE}/players`);
                const data = await res.json();
                this.output = JSON.stringify(data, null, 2);
            } catch (e) {
                this.output = "Error loading players.";
            }
        }
    }
});

app.mount("#app");
