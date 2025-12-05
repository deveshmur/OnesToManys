CREATE TABLE teams (
    team_id      SERIAL PRIMARY KEY,
    name         VARCHAR(100) NOT NULL,
    city         VARCHAR(100) NOT NULL,
    stadium      VARCHAR(150),
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_teams_name ON teams(name);
CREATE INDEX idx_teams_city ON teams(city);

CREATE TABLE players (
    player_id      SERIAL PRIMARY KEY,
    name           VARCHAR(100) NOT NULL,
    position       VARCHAR(50) NOT NULL,
    jersey_number  INTEGER NOT NULL,
    height_inches  INTEGER,
    
    team_id        INTEGER,
    
    created_at     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT fk_players_team
        FOREIGN KEY (team_id)
        REFERENCES teams(team_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);

CREATE INDEX idx_players_team_id ON players(team_id);
CREATE INDEX idx_players_position ON players(position);