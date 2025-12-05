
INSERT INTO teams (team_id, name, city, stadium) VALUES
(1, 'Philadelphia Eagles', 'Philadelphia', 'Lincoln Financial Field'),
(2, 'Dallas Cowboys', 'Dallas', 'AT&T Stadium'),
(3, 'Kansas City Chiefs', 'Kansas City', 'Arrowhead Stadium'),
(4, 'Buffalo Bills', 'Buffalo', 'Highmark Stadium'),
(5, 'San Francisco 49ers', 'San Francisco', 'Levi''s Stadium');

INSERT INTO players (name, position, jersey_number, height_inches, team_id) VALUES
('Jalen Hurts', 'QB', 1, 73, 1),
('A.J. Brown', 'WR', 11, 73, 1),
('DeVonta Smith', 'WR', 6, 72, 1),
('Darius Slay', 'CB', 2, 72, 1),
('Jason Kelce', 'C', 62, 75, 1);

INSERT INTO players (name, position, jersey_number, height_inches, team_id) VALUES
('Dak Prescott', 'QB', 4, 74, 2),
('CeeDee Lamb', 'WR', 88, 74, 2),
('Micah Parsons', 'LB', 11, 75, 2),
('Tony Pollard', 'RB', 20, 71, 2),
('Trevon Diggs', 'CB', 7, 73, 2);

INSERT INTO players (name, position, jersey_number, height_inches, team_id) VALUES
('Patrick Mahomes', 'QB', 15, 75, 3),
('Travis Kelce', 'TE', 87, 76, 3),
('Isiah Pacheco', 'RB', 10, 71, 3),
('Chris Jones', 'DT', 95, 78, 3),
('Marquez Valdes-Scantling', 'WR', 11, 76, 3);

INSERT INTO players (name, position, jersey_number, height_inches, team_id) VALUES
('Josh Allen', 'QB', 17, 77, 4),
('Stefon Diggs', 'WR', 14, 72, 4),
('Von Miller', 'LB', 40, 75, 4),
('Dawson Knox', 'TE', 88, 76, 4),
('James Cook', 'RB', 4, 70, 4);

INSERT INTO players (name, position, jersey_number, height_inches, team_id) VALUES
('Brock Purdy', 'QB', 13, 73, 5),
('Christian McCaffrey', 'RB', 23, 71, 5),
('Deebo Samuel', 'WR', 19, 72, 5),
('Nick Bosa', 'DE', 97, 76, 5),
('George Kittle', 'TE', 85, 76, 5);
