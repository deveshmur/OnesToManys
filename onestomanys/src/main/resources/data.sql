-- ============================
-- Team 1: Kansas City Chiefs
-- ============================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (1, 'Kansas City Chiefs', 'Kansas City', 'GEHA Field at Arrowhead Stadium');

-- ============================
-- Players for Team 1
-- ============================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(1, 'Patrick Mahomes', 'QB', 15, 74, 1),
(2, 'Carson Wentz', 'QB', 11, 77, 1),

-- Running Backs & Fullback
(3, 'Isiah Pacheco', 'RB', 10, 70, 1),
(4, 'Kareem Hunt', 'RB', 29, 71, 1),
(5, 'Carson Steele', 'FB', 42, 72, 1),
(6, 'Samaje Perine', 'RB', 34, 71, 1),
(7, 'Clyde Edwards-Helaire', 'RB', 25, 67, 1),

-- Wide Receivers
(8, 'Rashee Rice', 'WR', 4, 73, 1),
(9, 'Xavier Worthy', 'WR', 1, 71, 1),
(10, 'JuJu Smith-Schuster', 'WR', 9, 73, 1),
(11, 'Justin Watson', 'WR', 84, 74, 1),
(12, 'Mecole Hardman', 'WR', 17, 70, 1),
(13, 'Marquise Brown', 'WR', 5, 69, 1),
(14, 'Skyy Moore', 'WR', 24, 70, 1),

-- Tight Ends
(15, 'Travis Kelce', 'TE', 87, 77, 1),
(16, 'Noah Gray', 'TE', 83, 75, 1),
(17, 'Jared Wiley', 'TE', 12, 78, 1),
(18, 'Peyton Hendershot', 'TE', 88, 76, 1),

-- Offensive Line
(19, 'Creed Humphrey', 'C', 52, 76, 1),
(20, 'Joe Thuney', 'G', 62, 77, 1),
(21, 'Trey Smith', 'G', 65, 78, 1),
(22, 'Jawaan Taylor', 'T', 74, 77, 1),
(23, 'Wanya Morris', 'T', 64, 78, 1),
(24, 'Kingsley Suamataia', 'T', 76, 76, 1),
(25, 'Mike Caliendo', 'G', 66, 76, 1),
(26, 'Hunter Nourzad', 'C', 60, 75, 1),
(27, 'C.J. Hanson', 'G', 61, 77, 1),

-- Defensive Line
(28, 'Chris Jones', 'DT', 95, 78, 1),
(29, 'George Karlaftis', 'DE', 56, 76, 1),
(30, 'Mike Danna', 'DE', 51, 74, 1),
(31, 'Derrick Nnadi', 'DT', 91, 73, 1),
(32, 'Tershawn Wharton', 'DT', 98, 76, 1),
(33, 'Mike Pennel', 'NT', 69, 76, 1),
(34, 'Felix Anudike-Uzomah', 'DE', 97, 75, 1),
(35, 'Cameron Thomas', 'DE', 99, 76, 1),
(36, 'Charles Omenihu', 'DE', 90, 77, 1),

-- Linebackers
(37, 'Nick Bolton', 'LB', 32, 71, 1),
(38, 'Drue Tranquill', 'LB', 23, 74, 1),
(39, 'Leo Chenal', 'LB', 54, 75, 1),
(40, 'Jack Cochrane', 'LB', 43, 75, 1),
(41, 'Cam Jones', 'LB', 44, 73, 1),

-- Defensive Backs
(42, 'Trent McDuffie', 'CB', 22, 71, 1),
(43, 'Jaylen Watson', 'CB', 35, 74, 1),
(44, 'Justin Reid', 'S', 20, 73, 1),
(45, 'Bryan Cook', 'S', 6, 73, 1),
(46, 'Chamarri Conner', 'DB', 27, 72, 1),
(47, 'Joshua Williams', 'CB', 2, 75, 1),
(48, 'Nazeeh Johnson', 'S', 13, 70, 1),
(49, 'Jaden Hicks', 'S', 21, 73, 1),
(50, 'Christian Roland-Wallace', 'CB', 30, 71, 1),

-- Special Teams
(51, 'Harrison Butker', 'K', 7, 76, 1),
(52, 'Matt Araiza', 'P', 14, 73, 1),
(53, 'James Winchester', 'LS', 41, 75, 1);

-- =====================================
-- Team 2: Philadelphia Eagles
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (2, 'Philadelphia Eagles', 'Philadelphia', 'Lincoln Financial Field');

-- =====================================
-- Players for Team 2
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(54, 'Jalen Hurts', 'QB', 1, 73, 2),
(55, 'Kenny Pickett', 'QB', 7, 75, 2),
(56, 'Tanner McKee', 'QB', 16, 78, 2),

-- Running Backs
(57, 'Saquon Barkley', 'RB', 26, 72, 2),
(58, 'Kenneth Gainwell', 'RB', 14, 69, 2),
(59, 'Will Shipley', 'RB', 28, 71, 2),

-- Wide Receivers
(60, 'A.J. Brown', 'WR', 11, 73, 2),
(61, 'DeVonta Smith', 'WR', 6, 72, 2),
(62, 'Jahan Dotson', 'WR', 2, 71, 2),
(63, 'Britain Covey', 'WR', 18, 68, 2),
(64, 'Johnny Wilson', 'WR', 89, 78, 2),
(65, 'Ainias Smith', 'WR', 82, 69, 2),

-- Tight Ends
(66, 'Dallas Goedert', 'TE', 88, 77, 2),
(67, 'Grant Calcaterra', 'TE', 81, 76, 2),
(68, 'Kylen Granson', 'TE', 83, 74, 2),
(69, 'C.J. Uzomah', 'TE', 87, 78, 2),

-- Offensive Line
(70, 'Jordan Mailata', 'T', 68, 80, 2),
(71, 'Landon Dickerson', 'G', 69, 78, 2),
(72, 'Cam Jurgens', 'C', 51, 75, 2),
(73, 'Mekhi Becton', 'G', 77, 79, 2),
(74, 'Lane Johnson', 'T', 65, 78, 2),
(75, 'Tyler Steen', 'G', 56, 78, 2),
(76, 'Fred Johnson', 'T', 74, 79, 2),
(77, 'Trevor Keegan', 'G', 79, 77, 2),

-- Defensive Line
(78, 'Jalen Carter', 'DT', 98, 75, 2),
(79, 'Jordan Davis', 'DT', 90, 78, 2),
(80, 'Brandon Graham', 'DE', 55, 74, 2),
(81, 'Josh Sweat', 'DE', 19, 77, 2),
(82, 'Bryce Huff', 'DE', 0, 75, 2),
(83, 'Milton Williams', 'DT', 93, 75, 2),
(84, 'Nolan Smith', 'LB', 3, 74, 2),
(85, 'Moro Ojomo', 'DT', 97, 75, 2),
(86, 'Thomas Booker', 'DT', 59, 75, 2),

-- Linebackers
(87, 'Nakobe Dean', 'LB', 17, 71, 2),
(88, 'Zack Baun', 'LB', 53, 75, 2),
(89, 'Jeremiah Trotter Jr.', 'LB', 54, 72, 2),
(90, 'Oren Burks', 'LB', 42, 75, 2),
(91, 'Jalyx Hunt', 'LB', 58, 76, 2),

-- Defensive Backs
(92, 'Darius Slay', 'CB', 2, 72, 2),
(93, 'Quinyon Mitchell', 'CB', 27, 72, 2),
(94, 'C.J. Gardner-Johnson', 'S', 8, 71, 2),
(95, 'Reed Blankenship', 'S', 32, 73, 2),
(96, 'Cooper DeJean', 'DB', 33, 72, 2),
(97, 'Avonte Maddox', 'CB', 29, 69, 2),
(98, 'Isaiah Rodgers', 'CB', 34, 70, 2),
(99, 'Kelee Ringo', 'CB', 22, 74, 2),
(100, 'Sydney Brown', 'S', 21, 70, 2),
(101, 'Tristin McCollum', 'S', 36, 75, 2),

-- Special Teams
(102, 'Jake Elliott', 'K', 4, 69, 2),
(103, 'Braden Mann', 'P', 10, 71, 2),
(104, 'Rick Lovato', 'LS', 45, 74, 2);

-- =====================================
-- Team 3: San Francisco 49ers
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (3, 'San Francisco 49ers', 'San Francisco', 'Levi''s Stadium');

-- =====================================
-- Players for Team 3
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(105, 'Brock Purdy', 'QB', 13, 73, 3),
(106, 'Mac Jones', 'QB', 10, 75, 3),
(107, 'Brandon Allen', 'QB', 17, 75, 3),

-- Running Backs & Fullback
(108, 'Christian McCaffrey', 'RB', 23, 71, 3),
(109, 'Kyle Juszczyk', 'FB', 44, 74, 3),
(110, 'Isaac Guerendo', 'RB', 31, 72, 3),
(111, 'Jordan Mason', 'RB', 32, 70, 3),
(112, 'Elijah Mitchell', 'RB', 25, 70, 3),

-- Wide Receivers
(113, 'Deebo Samuel', 'WR', 10, 71, 3),
(114, 'Brandon Aiyuk', 'WR', 11, 72, 3),
(115, 'Jauan Jennings', 'WR', 15, 75, 3),
(116, 'Ricky Pearsall', 'WR', 1, 73, 3),
(117, 'Kendrick Bourne', 'WR', 84, 73, 3),
(118, 'Chris Conley', 'WR', 18, 74, 3),
(119, 'Skyy Moore', 'WR', 9, 70, 3),

-- Tight Ends
(120, 'George Kittle', 'TE', 85, 76, 3),
(121, 'Luke Farrell', 'TE', 89, 77, 3),
(122, 'Jake Tonges', 'TE', 88, 76, 3),

-- Offensive Line
(123, 'Trent Williams', 'T', 71, 77, 3),
(124, 'Aaron Banks', 'G', 65, 76, 3),
(125, 'Jake Brendel', 'C', 64, 76, 3),
(126, 'Dominick Puni', 'G', 77, 77, 3),
(127, 'Colton McKivitz', 'T', 68, 78, 3),
(128, 'Spencer Burford', 'G', 74, 76, 3),
(129, 'Nick Zakelj', 'G', 63, 77, 3),

-- Defensive Line
(130, 'Nick Bosa', 'DE', 97, 75, 3),
(131, 'Javon Hargrave', 'DT', 75, 73, 3),
(132, 'Jordan Elliott', 'DT', 92, 76, 3),
(133, 'Leonard Floyd', 'DE', 54, 77, 3),
(134, 'Clelin Ferrell', 'DE', 96, 76, 3),
(135, 'Kevin Givens', 'DT', 90, 73, 3),
(136, 'Kalia Davis', 'DT', 93, 74, 3),
(137, 'Bryce Huff', 'DE', 47, 75, 3),

-- Linebackers
(138, 'Fred Warner', 'LB', 54, 75, 3),
(139, 'De'Vondre Campbell', 'LB', 37, 75, 3),
(140, 'Dee Winters', 'LB', 53, 71, 3),
(141, 'Elijah Lee', 'LB', 52, 74, 3),
(142, 'Tatum Bethune', 'LB', 48, 73, 3),

-- Defensive Backs
(143, 'Charvarius Ward', 'CB', 20, 72, 3),
(144, 'Deommodore Lenoir', 'CB', 2, 70, 3),
(145, 'Ji'Ayir Brown', 'S', 27, 71, 3),
(146, 'Malik Mustapha', 'S', 6, 70, 3),
(147, 'Chase Lucas', 'CB', 26, 71, 3),
(148, 'Renardo Green', 'CB', 0, 72, 3),
(149, 'Jason Pinnock', 'S', 25, 72, 3),
(150, 'Siran Neal', 'DB', 33, 72, 3),

-- Special Teams
(151, 'Matt Gay', 'K', 14, 72, 3),
(152, 'Thomas Morstead', 'P', 7, 76, 3),
(153, 'Jon Weeks', 'LS', 46, 70, 3);

-- =====================================
-- Team 4: Dallas Cowboys
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (4, 'Dallas Cowboys', 'Dallas', 'AT&T Stadium');

-- =====================================
-- Players for Team 4
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(154, 'Dak Prescott', 'QB', 4, 74, 4),
(155, 'Joe Milton III', 'QB', 10, 77, 4),

-- Running Backs & Fullback
(156, 'Javonte Williams', 'RB', 33, 70, 4),
(157, 'Jaydon Blue', 'RB', 23, 69, 4),
(158, 'Malik Davis', 'RB', 43, 70, 4),
(159, 'Hunter Luepke', 'FB', 40, 73, 4),

-- Wide Receivers
(160, 'CeeDee Lamb', 'WR', 88, 74, 4),
(161, 'George Pickens', 'WR', 3, 75, 4),
(162, 'Jalen Tolbert', 'WR', 1, 73, 4),
(163, 'Jonathan Mingo', 'WR', 81, 74, 4),
(164, 'KaVontae Turpin', 'WR', 9, 69, 4),
(165, 'Ryan Flournoy', 'WR', 19, 73, 4),

-- Tight Ends
(166, 'Jake Ferguson', 'TE', 87, 77, 4),
(167, 'Luke Schoonmaker', 'TE', 86, 77, 4),
(168, 'Brevyn Spann-Ford', 'TE', 89, 79, 4),

-- Offensive Line
(169, 'Tyler Guyton', 'T', 60, 79, 4),
(170, 'Tyler Smith', 'G', 73, 77, 4),
(171, 'Cooper Beebe', 'C', 56, 76, 4),
(172, 'T.J. Bass', 'G', 66, 77, 4),
(173, 'Terence Steele', 'T', 78, 78, 4),
(174, 'Nathan Thomas', 'T', 71, 77, 4),
(175, 'Brock Hoffman', 'C', 67, 76, 4),

-- Defensive Line
(176, 'Jadeveon Clowney', 'DE', 42, 77, 4),
(177, 'Osa Odighizuwa', 'DT', 97, 74, 4),
(178, 'Kenny Clark', 'DT', 95, 75, 4),
(179, 'Sam Williams', 'DE', 54, 76, 4),
(180, 'Quinnen Williams', 'DT', 92, 75, 4),
(181, 'Dante Fowler Jr.', 'DE', 13, 75, 4),
(182, 'Solomon Thomas', 'DT', 90, 75, 4),

-- Linebackers
(183, 'Kenneth Murray Jr.', 'LB', 59, 74, 4),
(184, 'Logan Wilson', 'LB', 55, 74, 4),
(185, 'Marist Liufau', 'LB', 35, 74, 4),
(186, 'Shemar James', 'LB', 50, 73, 4),
(187, 'DeMarvion Overshown', 'LB', 0, 75, 4),

-- Defensive Backs
(188, 'Malik Hooker', 'S', 28, 73, 4),
(189, 'Donovan Wilson', 'S', 6, 72, 4),
(190, 'DaRon Bland', 'CB', 26, 72, 4),
(191, 'Trevon Diggs', 'CB', 7, 74, 4),
(192, 'C.J. Goodwin', 'CB', 29, 75, 4),
(193, 'Caelen Carson', 'CB', 21, 72, 4),
(194, 'Markquese Bell', 'S', 14, 75, 4),

-- Special Teams
(195, 'Brandon Aubrey', 'K', 17, 75, 4),
(196, 'Bryan Anger', 'P', 5, 75, 4),
(197, 'Trent Sieg', 'LS', 44, 75, 4);

-- =====================================
-- Team 5: Miami Dolphins
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (5, 'Miami Dolphins', 'Miami', 'Hard Rock Stadium');

-- =====================================
-- Players for Team 5
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(198, 'Tua Tagovailoa', 'QB', 1, 73, 5),
(199, 'Zach Wilson', 'QB', 0, 74, 5),
(200, 'Quinn Ewers', 'QB', 14, 74, 5),

-- Running Backs & Fullback
(201, 'Raheem Mostert', 'RB', 31, 71, 5),
(202, 'DeVon Achane', 'RB', 28, 69, 5),
(203, 'Jaylen Wright', 'RB', 25, 70, 5),
(204, 'Ollie Gordon II', 'RB', 31, 74, 5),
(205, 'Alec Ingold', 'FB', 30, 73, 5),

-- Wide Receivers
(206, 'Tyreek Hill', 'WR', 10, 70, 5),
(207, 'Jaylen Waddle', 'WR', 17, 70, 5),
(208, 'Malik Washington', 'WR', 6, 68, 5),
(209, 'Tahj Washington', 'WR', 84, 70, 5),
(210, 'Dee Eskridge', 'WR', 82, 69, 5),
(211, 'Nick Westbrook-Ikhine', 'WR', 18, 74, 5),

-- Tight Ends
(212, 'Jonnu Smith', 'TE', 9, 75, 5),
(213, 'Julian Hill', 'TE', 89, 76, 5),
(214, 'Durham Smythe', 'TE', 81, 77, 5),

-- Offensive Line
(215, 'Terron Armstead', 'T', 72, 77, 5),
(216, 'Aaron Brewer', 'C', 55, 73, 5),
(217, 'Isaiah Wynn', 'G', 77, 74, 5),
(218, 'Austin Jackson', 'T', 73, 77, 5),
(219, 'Robert Jones', 'G', 65, 76, 5),
(220, 'Patrick Paul', 'T', 52, 79, 5),
(221, 'Kendall Lamm', 'T', 70, 77, 5),

-- Defensive Line
(222, 'Calais Campbell', 'DT', 93, 78, 5),
(223, 'Zach Sieler', 'DT', 92, 78, 5),
(224, 'Benito Jones', 'DT', 95, 73, 5),
(225, 'Jordan Phillips', 'DT', 94, 75, 5),
(226, 'Bradley Chubb', 'LB', 2, 76, 5),
(227, 'Chop Robinson', 'LB', 44, 75, 5),
(228, 'Emmanuel Ogbah', 'DE', 91, 77, 5),

-- Linebackers
(229, 'Jordyn Brooks', 'LB', 20, 72, 5),
(230, 'Anthony Walker Jr.', 'LB', 6, 74, 5),
(231, 'Tyrel Dodson', 'LB', 25, 72, 5),
(232, 'Willie Gay Jr.', 'LB', 40, 73, 5),
(233, 'Matthew Judon', 'LB', 8, 75, 5),

-- Defensive Backs
(234, 'Jalen Ramsey', 'CB', 5, 73, 5),
(235, 'Kader Kohou', 'CB', 4, 70, 5),
(236, 'Jevon Holland', 'S', 8, 73, 5),
(237, 'Jordan Poyer', 'S', 21, 72, 5),
(238, 'Kendall Fuller', 'CB', 29, 72, 5),
(239, 'Rasul Douglas', 'CB', 26, 74, 5),
(240, 'Ashtyn Davis', 'S', 21, 73, 5),

-- Special Teams
(241, 'Jason Sanders', 'K', 7, 72, 5),
(242, 'Jake Bailey', 'P', 16, 74, 5),
(243, 'Joe Cardona', 'LS', 49, 74, 5);


-- =====================================
-- Team 6: Cincinnati Bengals
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (6, 'Cincinnati Bengals', 'Cincinnati', 'Paycor Stadium');

-- =====================================
-- Players for Team 6
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(244, 'Joe Burrow', 'QB', 9, 76, 6),
(245, 'Jake Browning', 'QB', 6, 74, 6),
(246, 'Joe Flacco', 'QB', 16, 78, 6),

-- Running Backs
(247, 'Chase Brown', 'RB', 30, 70, 6),
(248, 'Samaje Perine', 'RB', 34, 70, 6),
(249, 'Tahj Brooks', 'RB', 25, 69, 6),

-- Wide Receivers
(250, 'Ja Marr Chase', 'WR', 1, 72, 6),
(251, 'Tee Higgins', 'WR', 5, 76, 6),
(252, 'Andrei Iosivas', 'WR', 80, 75, 6),
(253, 'Charlie Jones', 'WR', 15, 72, 6),
(254, 'Jermaine Burton', 'WR', 81, 72, 6),

-- Tight Ends
(255, 'Noah Fant', 'TE', 86, 76, 6),
(256, 'Mike Gesicki', 'TE', 88, 78, 6),
(257, 'Drew Sample', 'TE', 89, 77, 6),
(258, 'Tanner Hudson', 'TE', 87, 77, 6),

-- Offensive Line
(259, 'Orlando Brown Jr.', 'T', 75, 80, 6),
(260, 'Ted Karras', 'C', 64, 76, 6),
(261, 'Amarius Mims', 'T', 71, 80, 6),
(262, 'Cordell Volson', 'G', 67, 78, 6),
(263, 'Alex Cappa', 'G', 65, 76, 6),
(264, 'Cody Ford', 'G', 61, 75, 6),
(265, 'Lucas Patrick', 'G', 62, 75, 6),

-- Defensive Line / Edge Rushers
(266, 'Trey Hendrickson', 'DE', 91, 76, 6),
(267, 'Sam Hubbard', 'DE', 94, 77, 6),
(268, 'Myles Murphy', 'DE', 99, 77, 6),
(269, 'B.J. Hill', 'DT', 92, 75, 6),
(270, 'Kris Jenkins', 'DT', 90, 75, 6),
(271, 'McKinnley Jackson', 'DT', 93, 74, 6),
(272, 'Joseph Ossai', 'DE', 58, 76, 6),

-- Linebackers
(273, 'Logan Wilson', 'LB', 55, 74, 6),
(274, 'Germaine Pratt', 'LB', 57, 74, 6),
(275, 'Akeem Davis-Gaither', 'LB', 59, 74, 6),
(276, 'Oren Burks', 'LB', 42, 75, 6),

-- Defensive Backs
(277, 'Mike Hilton', 'CB', 21, 69, 6),
(278, 'Cam Taylor-Britt', 'CB', 29, 72, 6),
(279, 'Geno Stone', 'S', 22, 71, 6),
(280, 'Vonn Bell', 'S', 24, 70, 6),
(281, 'Jordan Battle', 'S', 27, 73, 6),
(282, 'Dax Hill', 'CB', 23, 72, 6),
(283, 'Josh Newton', 'CB', 28, 71, 6),

-- Special Teams
(284, 'Evan McPherson', 'K', 2, 71, 6),
(285, 'Brad Robbins', 'P', 10, 74, 6),
(286, 'Cal Adomitis', 'LS', 48, 75, 6);

-- =====================================
-- Team 7: Los Angeles Rams
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (7, 'Los Angeles Rams', 'Los Angeles', 'SoFi Stadium');

-- =====================================
-- Players for Team 7
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(287, 'Matthew Stafford', 'QB', 9, 75, 7),
(288, 'Jimmy Garoppolo', 'QB', 11, 74, 7),
(289, 'Stetson Bennett', 'QB', 13, 71, 7),

-- Running Backs
(290, 'Kyren Williams', 'RB', 23, 69, 7),
(291, 'Blake Corum', 'RB', 22, 68, 7),
(292, 'Ronnie Rivers', 'RB', 20, 69, 7),
(293, 'Jarquez Hunter', 'RB', 27, 70, 7),

-- Wide Receivers
(294, 'Puka Nacua', 'WR', 12, 74, 7),
(295, 'Davante Adams', 'WR', 17, 73, 7),
(296, 'Cooper Kupp', 'WR', 10, 73, 7),
(297, 'Tutu Atwell', 'WR', 5, 69, 7),
(298, 'Jordan Whittington', 'WR', 88, 73, 7),
(299, 'Konata Mumpfield', 'WR', 15, 73, 7),

-- Tight Ends
(300, 'Colby Parkinson', 'TE', 84, 79, 7),
(301, 'Davis Allen', 'TE', 87, 78, 7),
(302, 'Terrance Ferguson', 'TE', 18, 77, 7),
(303, 'Nick Vannett', 'TE', 38, 78, 7),

-- Offensive Line
(304, 'Alaric Jackson', 'T', 77, 79, 7),
(305, 'Steve Avila', 'G', 73, 75, 7),
(306, 'Coleman Shelton', 'C', 65, 77, 7),
(307, 'Kevin Dotson', 'G', 69, 76, 7),
(308, 'Rob Havenstein', 'T', 79, 80, 7),
(309, 'Beaux Limmer', 'C', 50, 77, 7),
(310, 'D.J. Humphries', 'T', 72, 77, 7),

-- Defensive Line
(311, 'Kobie Turner', 'DE', 91, 74, 7),
(312, 'Braden Fiske', 'DE', 55, 77, 7),
(313, 'Poona Ford', 'NT', 95, 71, 7),
(314, 'Tyler Davis', 'DE', 90, 74, 7),
(315, 'Desjuan Johnson', 'DE', 94, 75, 7),

-- Linebackers (Edge/Inside)
(316, 'Jared Verse', 'OLB', 8, 76, 7),
(317, 'Byron Young', 'OLB', 0, 74, 7),
(318, 'Nate Landman', 'ILB', 53, 75, 7),
(319, 'Omar Speights', 'ILB', 48, 73, 7),
(320, 'Nick Hampton', 'OLB', 6, 75, 7),
(321, 'Troy Reeder', 'ILB', 51, 75, 7),

-- Defensive Backs
(322, 'Kam Curl', 'S', 3, 74, 7),
(323, 'Kamren Kinchens', 'S', 26, 72, 7),
(324, 'Darious Williams', 'CB', 31, 69, 7),
(325, 'Cobie Durant', 'CB', 14, 71, 7),
(326, 'Ahkello Witherspoon', 'CB', 4, 74, 7),
(327, 'Emmanuel Forbes Jr.', 'CB', 1, 72, 7),
(328, 'Jaylen McCollough', 'S', 2, 72, 7),

-- Special Teams
(329, 'Harrison Mevis', 'K', 92, 72, 7),
(330, 'Ethan Evans', 'P', 42, 75, 7),
(331, 'Jake McQuaide', 'LS', 44, 74, 7);

-- =====================================
-- Team 8: Denver Broncos
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (8, 'Denver Broncos', 'Denver', 'Empower Field at Mile High');

-- =====================================
-- Players for Team 8
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(332, 'Bo Nix', 'QB', 10, 74, 8),
(333, 'Jarrett Stidham', 'QB', 8, 75, 8),
(334, 'Zach Wilson', 'QB', 4, 74, 8),

-- Running Backs & Fullback
(335, 'Javonte Williams', 'RB', 33, 70, 8),
(336, 'Jaleel McLaughlin', 'RB', 38, 67, 8),
(337, 'Audric Estime', 'RB', 27, 71, 8),
(338, 'Adam Prentice', 'FB', 46, 72, 8),

-- Wide Receivers
(339, 'Courtland Sutton', 'WR', 14, 76, 8),
(340, 'Marvin Mims Jr.', 'WR', 19, 71, 8),
(341, 'Josh Reynolds', 'WR', 11, 75, 8),
(342, 'Troy Franklin', 'WR', 12, 75, 8),
(343, 'Lil''Jordan Humphrey', 'WR', 17, 76, 8),

-- Tight Ends
(344, 'Adam Trautman', 'TE', 82, 77, 8),
(345, 'Greg Dulcich', 'TE', 83, 77, 8),
(346, 'Nate Adkins', 'TE', 45, 75, 8),
(347, 'Marcedes Lewis', 'TE', 89, 78, 8),

-- Offensive Line
(348, 'Mike McGlinchey', 'T', 69, 80, 8),
(349, 'Quinn Meinerz', 'G', 77, 75, 8),
(350, 'Alex Forsyth', 'C', 54, 76, 8),
(351, 'Ben Powers', 'G', 74, 76, 8),
(352, 'Garett Bolles', 'T', 72, 77, 8),
(353, 'Luke Wattenberg', 'C', 60, 77, 8),
(354, 'Geron Christian', 'T', 75, 77, 8),

-- Defensive Line
(355, 'Zach Allen', 'DL', 99, 77, 8),
(356, 'D.J. Jones', 'DT', 93, 72, 8),
(357, 'John Franklin-Myers', 'DL', 98, 76, 8),
(358, 'Malcolm Roach', 'DT', 97, 75, 8),
(359, 'Jordan Jackson', 'DL', 94, 76, 8),

-- Linebackers (Edge/Inside)
(360, 'Jonathon Cooper', 'OLB', 0, 76, 8),
(361, 'Nik Bonitto', 'OLB', 15, 75, 8),
(362, 'Alex Singleton', 'ILB', 49, 74, 8),
(363, 'Cody Barton', 'ILB', 56, 74, 8),
(364, 'Justin Strnad', 'ILB', 40, 75, 8),
(365, 'Josey Jewell', 'ILB', 47, 73, 8),

-- Defensive Backs
(366, 'Pat Surtain II', 'CB', 2, 74, 8),
(367, 'Riley Moss', 'CB', 21, 72, 8),
(368, 'P.J. Locke', 'S', 6, 70, 8),
(369, 'Brandon Jones', 'S', 22, 72, 8),
(370, 'Ja''Quan McMillian', 'CB', 29, 70, 8),
(371, 'JL Skinner', 'S', 34, 76, 8),
(372, 'Kris Abrams-Draine', 'CB', 31, 71, 8),

-- Special Teams
(373, 'Wil Lutz', 'K', 3, 71, 8),
(374, 'Jeremy Crawshaw', 'P', 16, 75, 8),
(375, 'Mitchell Fraboni', 'LS', 48, 74, 8);

-- =====================================
-- Team 9: New York Jets
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (9, 'New York Jets', 'New York', 'MetLife Stadium');

-- =====================================
-- Players for Team 9
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(376, 'Justin Fields', 'QB', 7, 75, 9),
(377, 'Tyrod Taylor', 'QB', 2, 73, 9),
(378, 'Brady Cook', 'QB', 4, 74, 9),

-- Running Backs & Fullback
(379, 'Breece Hall', 'RB', 20, 71, 9),
(380, 'Khalil Herbert', 'RB', 31, 69, 9),
(381, 'Isaiah Davis', 'RB', 32, 73, 9),
(382, 'Kene Nwangwu', 'RB', 34, 73, 9),
(383, 'Andrew Beck', 'FB', 47, 75, 9),

-- Wide Receivers
(384, 'Allen Lazard', 'WR', 10, 77, 9),
(385, 'Adonai Mitchell', 'WR', 15, 74, 9),
(386, 'Tyler Johnson', 'WR', 16, 73, 9),
(387, 'John Metchie III', 'WR', 3, 71, 9),
(388, 'Isaiah Williams', 'WR', 18, 70, 9),

-- Tight Ends
(389, 'Jelani Woods', 'TE', 86, 79, 9),
(390, 'Jeremy Ruckert', 'TE', 89, 77, 9),
(391, 'Stone Smartt', 'TE', 84, 76, 9),
(392, 'Mason Taylor', 'TE', 85, 77, 9),

-- Offensive Line
(393, 'Olu Fashanu', 'T', 74, 78, 9),
(394, 'Joe Tippmann', 'C', 66, 78, 9),
(395, 'John Simpson', 'G', 76, 76, 9),
(396, 'Josh Myers', 'C', 71, 77, 9),
(397, 'Chukwuma Okorafor', 'T', 79, 78, 9),
(398, 'Max Mitchell', 'T', 61, 78, 9),
(399, 'Xavier Newman', 'G', 65, 74, 9),

-- Defensive Line
(400, 'Harrison Phillips', 'DT', 97, 75, 9),
(401, 'Jowon Briggs', 'DL', 91, 73, 9),
(402, 'Mazi Smith', 'DT', 58, 75, 9),
(403, 'Khalen Saunders', 'DT', 99, 72, 9),
(404, 'Jay Tufele', 'DL', 78, 75, 9),

-- Linebackers (Edge/Inside)
(405, 'Jermaine Johnson', 'OLB', 11, 77, 9),
(406, 'Will McDonald IV', 'OLB', 9, 76, 9),
(407, 'Quincy Williams', 'ILB', 56, 71, 9),
(408, 'Jamien Sherwood', 'ILB', 44, 74, 9),
(409, 'Mykal Walker', 'LB', 53, 75, 9),
(410, 'Kobe King', 'LB', 45, 73, 9),
(411, 'Tyler Baron', 'DE', 94, 76, 9),

-- Defensive Backs
(412, 'Brandon Stephens', 'CB', 21, 73, 9),
(413, 'Qwan''tez Stiggers', 'CB', 37, 72, 9),
(414, 'Tony Adams', 'S', 22, 71, 9),
(415, 'Isaiah Oliver', 'S', 26, 72, 9),
(416, 'Malachi Moore', 'DB', 27, 71, 9),
(417, 'Ja''Sir Taylor', 'CB', 36, 70, 9),

-- Special Teams
(418, 'Nick Folk', 'K', 6, 73, 9),
(419, 'Austin McNamara', 'P', 14, 76, 9),
(420, 'Thomas Hennessy', 'LS', 42, 74, 9);

-- =====================================
-- Team 10: Buffalo Bills
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (10, 'Buffalo Bills', 'Buffalo', 'Highmark Stadium');

-- =====================================
-- Players for Team 10
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(421, 'Josh Allen', 'QB', 17, 77, 10),
(422, 'Mitchell Trubisky', 'QB', 11, 75, 10),
(423, 'Shane Buechele', 'QB', 6, 72, 10),

-- Running Backs & Fullback
(424, 'James Cook III', 'RB', 4, 71, 10),
(425, 'Ray Davis', 'RB', 22, 68, 10),
(426, 'Ty Johnson', 'RB', 26, 70, 10),
(427, 'Reggie Gilliam', 'FB', 41, 72, 10),

-- Wide Receivers
(428, 'Keon Coleman', 'WR', 0, 76, 10),
(429, 'Curtis Samuel', 'WR', 1, 71, 10),
(430, 'Khalil Shakir', 'WR', 10, 72, 10),
(431, 'Joshua Palmer', 'WR', 5, 73, 10),
(432, 'Mecole Hardman Jr.', 'WR', 16, 70, 10),
(433, 'Tyrell Shavers', 'WR', 14, 76, 10),

-- Tight Ends
(434, 'Dalton Kincaid', 'TE', 86, 76, 10),
(435, 'Dawson Knox', 'TE', 88, 76, 10),
(436, 'Jackson Hawes', 'TE', 85, 76, 10),

-- Offensive Line
(437, 'Dion Dawkins', 'T', 73, 77, 10),
(438, 'Connor McGovern', 'C', 66, 78, 10),
(439, 'O''Cyrus Torrence', 'G', 64, 77, 10),
(440, 'Spencer Brown', 'T', 79, 80, 10),
(441, 'David Edwards', 'G', 78, 78, 10),
(442, 'Sedrick Van Pran-Granger', 'C', 62, 76, 10),
(443, 'Alec Anderson', 'T', 70, 77, 10),

-- Defensive Line / Edge Rushers
(444, 'Joey Bosa', 'DE', 97, 77, 10),
(445, 'Greg Rousseau', 'DE', 50, 78, 10),
(446, 'DaQuan Jones', 'DT', 92, 76, 10),
(447, 'Ed Oliver', 'DT', 91, 73, 10),
(448, 'A.J. Epenesa', 'DE', 57, 78, 10),
(449, 'Jordan Phillips', 'DT', 52, 78, 10),
(450, 'Javon Solomon', 'DE', 56, 73, 10),

-- Linebackers
(451, 'Matt Milano', 'LB', 58, 72, 10),
(452, 'Terrel Bernard', 'LB', 8, 73, 10),
(453, 'Shaq Thompson', 'LB', 45, 72, 10),
(454, 'Dorian Williams', 'LB', 42, 74, 10),
(455, 'Joe Andreessen', 'LB', 44, 73, 10),

-- Defensive Backs
(456, 'Darius Slay', 'CB', 0, 72, 10),
(457, 'Taron Johnson', 'CB', 7, 71, 10),
(458, 'Taylor Rapp', 'S', 9, 72, 10),
(459, 'Cole Bishop', 'S', 24, 74, 10),
(460, 'Christian Benford', 'CB', 47, 73, 10),
(461, 'Damar Hamlin', 'S', 3, 72, 10),
(462, 'Tre''Davious White', 'CB', 27, 71, 10),

-- Special Teams
(463, 'Tyler Bass', 'K', 2, 70, 10),
(464, 'Mitch Wishnowsky', 'P', 19, 74, 10),
(465, 'Reid Ferguson', 'LS', 69, 74, 10);

-- =====================================
-- Team 11: Seattle Seahawks
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (11, 'Seattle Seahawks', 'Seattle', 'Lumen Field');

-- =====================================
-- Players for Team 11
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(466, 'Geno Smith', 'QB', 7, 75, 11),
(467, 'Sam Howell', 'QB', 6, 73, 11),
(468, 'P.J. Walker', 'QB', 4, 71, 11),

-- Running Backs & Fullback
(469, 'Kenneth Walker III', 'RB', 9, 70, 11),
(470, 'Zach Charbonnet', 'RB', 26, 73, 11),
(471, 'George Holani', 'RB', 32, 71, 11),
(472, 'Noah Fant', 'FB', 88, 77, 11),

-- Wide Receivers
(473, 'D.K. Metcalf', 'WR', 14, 76, 11),
(474, 'Tyler Lockett', 'WR', 16, 70, 11),
(475, 'Jaxon Smith-Njigba', 'WR', 11, 72, 11),
(476, 'Lideatrick Griffin', 'WR', 86, 69, 11),
(477, 'Dareke Young', 'WR', 17, 74, 11),

-- Tight Ends
(478, 'Will Dissly', 'TE', 89, 77, 11),
(479, 'Pharaoh Brown', 'TE', 86, 78, 11),
(480, 'A.J. Barner', 'TE', 83, 78, 11),

-- Offensive Line
(481, 'Charles Cross', 'T', 67, 78, 11),
(482, 'Laken Tomlinson', 'G', 78, 77, 11),
(483, 'Olu Oluwatimi', 'C', 51, 75, 11),
(484, 'Christian Haynes', 'G', 64, 74, 11),
(485, 'Abraham Lucas', 'T', 72, 78, 11),
(486, 'Nick Harris', 'C', 54, 73, 11),
(487, 'Max Mitchell', 'T', 77, 78, 11),

-- Defensive Line
(488, 'Leonard Williams', 'DT', 99, 77, 11),
(489, 'Jarran Reed', 'DT', 90, 75, 11),
(490, 'Byron Murphy II', 'DT', 93, 73, 11),
(491, 'Derick Hall', 'OLB', 58, 75, 11),
(492, 'Boye Mafe', 'OLB', 53, 76, 11),
(493, 'Dre''Mont Jones', 'DT', 55, 75, 11),

-- Linebackers
(494, 'Jeremiah Owusu-Koramoah', 'LB', 45, 74, 11),
(495, 'Tyrel Dodson', 'LB', 21, 72, 11),
(496, 'Jon Rhattigan', 'LB', 59, 74, 11),
(497, 'Tyrice Knight', 'LB', 57, 73, 11),

-- Defensive Backs
(498, 'Riq Woolen', 'CB', 24, 75, 11),
(499, 'Devon Witherspoon', 'CB', 27, 71, 11),
(500, 'Julian Love', 'S', 20, 71, 11),
(501, 'Rayshawn Jenkins', 'S', 29, 75, 11),
(502, 'Kobe Savage', 'S', 42, 70, 11),
(503, 'Nehemiah Pritchett', 'CB', 2, 72, 11),
(504, 'Coby Bryant', 'CB', 8, 72, 11),

-- Special Teams
(505, 'Jason Myers', 'K', 5, 70, 11),
(506, 'Michael Dickson', 'P', 4, 73, 11),
(507, 'Chris Gragg', 'LS', 48, 75, 11);

-- =====================================
-- Team 12: Tampa Bay Buccaneers
-- =====================================
INSERT INTO teams (team_id, name, city, stadium) 
VALUES (12, 'Tampa Bay Buccaneers', 'Tampa', 'Raymond James Stadium');

-- =====================================
-- Players for Team 12
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(508, 'Baker Mayfield', 'QB', 6, 73, 12),
(509, 'Teddy Bridgewater', 'QB', 10, 74, 12),
(510, 'Connor Bazelak', 'QB', 16, 75, 12),

-- Running Backs
(511, 'Rachaad White', 'RB', 1, 72, 12),
(512, 'Bucky Irving', 'RB', 7, 70, 12),
(513, 'Sean Tucker', 'RB', 44, 70, 12),

-- Wide Receivers
(514, 'Chris Godwin', 'WR', 14, 73, 12),
(515, 'Emeka Egbuka', 'WR', 2, 73, 12),
(516, 'Sterling Shepard', 'WR', 17, 70, 12),
(517, 'Tez Johnson', 'WR', 15, 70, 12),
(518, 'Kameron Johnson', 'WR', 19, 70, 12),

-- Tight Ends
(519, 'Cade Otton', 'TE', 88, 77, 12),
(520, 'Payne Durham', 'TE', 87, 77, 12),
(521, 'Devin Culp', 'TE', 82, 76, 12),

-- Offensive Line
(522, 'Tristan Wirfs', 'T', 78, 77, 12),
(523, 'Graham Barton', 'C', 62, 77, 12),
(524, 'Ben Bredeson', 'G', 68, 77, 12),
(525, 'Luke Goedeke', 'T', 67, 77, 12),
(526, 'Elijah Klein', 'G', 79, 76, 12),
(527, 'Mike Jordan', 'G', 60, 78, 12),
(528, 'Charlie Heck', 'T', 77, 80, 12),

-- Defensive Line
(529, 'Vita Vea', 'DT', 50, 76, 12),
(530, 'Logan Hall', 'DE', 90, 78, 12),
(531, 'Greg Gaines', 'DT', 96, 73, 12),
(532, 'C.J. Brewer', 'DL', 52, 74, 12),
(533, 'Elijah Roberts', 'DE', 95, 76, 12),

-- Linebackers
(534, 'Haason Reddick', 'OLB', 5, 73, 12),
(535, 'Lavonte David', 'ILB', 54, 73, 12),
(536, 'YaYa Diaby', 'OLB', 0, 75, 12),
(537, 'Chris Braswell', 'OLB', 43, 75, 12),
(538, 'Deion Jones', 'ILB', 45, 73, 12),
(539, 'SirVocea Dennis', 'ILB', 8, 72, 12),
(540, 'Anthony Nelson', 'OLB', 98, 79, 12),

-- Defensive Backs
(541, 'Antoine Winfield Jr.', 'S', 31, 69, 12),
(542, 'Jamel Dean', 'CB', 35, 73, 12),
(543, 'Zyon McCollum', 'CB', 27, 74, 12),
(544, 'Christian Izien', 'S', 29, 70, 12),
(545, 'Tykee Smith', 'S', 23, 70, 12),
(546, 'Benjamin Morrison', 'CB', 21, 72, 12),
(547, 'Kindle Vildor', 'CB', 22, 71, 12),

-- Special Teams
(548, 'Chase McLaughlin', 'K', 4, 72, 12),
(549, 'Riley Dixon', 'P', 9, 76, 12),
(550, 'Evan Deckers', 'LS', 86, 75, 12);

-- =====================================
-- Team 13: Baltimore Ravens
-- =====================================
INSERT INTO teams (team_id, name, city, stadium) 
VALUES (13, 'Baltimore Ravens', 'Baltimore', 'M&T Bank Stadium');

-- =====================================
-- Players for Team 13
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(551, 'Lamar Jackson', 'QB', 8, 74, 13),
(552, 'Cooper Rush', 'QB', 15, 75, 13),
(553, 'Tyler Huntley', 'QB', 5, 73, 13),

-- Running Backs & Fullback
(554, 'Derrick Henry', 'RB', 22, 75, 13),
(555, 'Justice Hill', 'RB', 43, 70, 13),
(556, 'Keaton Mitchell', 'RB', 34, 68, 13),
(557, 'Rasheen Ali', 'RB', 26, 71, 13),
(558, 'Patrick Ricard', 'FB', 42, 75, 13),

-- Wide Receivers
(559, 'Zay Flowers', 'WR', 4, 69, 13),
(560, 'Rashod Bateman', 'WR', 7, 73, 13),
(561, 'DeAndre Hopkins', 'WR', 10, 73, 13),
(562, 'Devontez Walker', 'WR', 81, 73, 13),
(563, 'Tylan Wallace', 'WR', 16, 71, 13),

-- Tight Ends
(564, 'Mark Andrews', 'TE', 89, 77, 13),
(565, 'Isaiah Likely', 'TE', 80, 76, 13),
(566, 'Charlie Kolar', 'TE', 88, 78, 13),

-- Offensive Line
(567, 'Ronnie Stanley', 'T', 79, 78, 13),
(568, 'Tyler Linderbaum', 'C', 64, 74, 13),
(569, 'Roger Rosengarten', 'T', 70, 77, 13),
(570, 'Ben Cleveland', 'G', 66, 78, 13),
(571, 'Daniel Faalele', 'G', 77, 80, 13),
(572, 'Patrick Mekari', 'G', 65, 76, 13),

-- Defensive Line
(573, 'Justin Madubuike', 'DL', 92, 75, 13),
(574, 'Travis Jones', 'DL', 98, 76, 13),
(575, 'Brent Urban', 'DL', 97, 79, 13),
(576, 'Dre Mont Jones', 'DL', 41, 75, 13),
(577, 'Michael Pierce', 'DL', 58, 72, 13),

-- Linebackers
(578, 'Roquan Smith', 'ILB', 0, 73, 13),
(579, 'Kyle Van Noy', 'OLB', 53, 75, 13),
(580, 'Odafe Oweh', 'OLB', 99, 77, 13),
(581, 'Trenton Simpson', 'ILB', 32, 74, 13),
(582, 'David Ojabo', 'OLB', 90, 76, 13),
(583, 'Adisa Isaac', 'OLB', 50, 76, 13),

-- Defensive Backs
(584, 'Marlon Humphrey', 'CB', 44, 72, 13),
(585, 'Kyle Hamilton', 'S', 14, 76, 13),
(586, 'Nate Wiggins', 'CB', 2, 73, 13),
(587, 'Chidobe Awuzie', 'CB', 3, 71, 13),
(588, 'Marcus Williams', 'S', 36, 74, 13),
(589, 'T.J. Tampa', 'CB', 27, 73, 13),
(590, 'Brandon Stephens', 'S', 21, 73, 13),

-- Special Teams
(591, 'Justin Tucker', 'K', 9, 73, 13),
(592, 'Jordan Stout', 'P', 11, 75, 13),
(593, 'Nick Moore', 'LS', 46, 74, 13);

-- =====================================
-- Team 14: Green Bay Packers
-- =====================================
INSERT INTO teams (team_id, name, city, stadium) 
VALUES (14, 'Green Bay Packers', 'Green Bay', 'Lambeau Field');

-- =====================================
-- Players for Team 14
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(594, 'Jordan Love', 'QB', 10, 75, 14),
(595, 'Sean Clifford', 'QB', 8, 74, 14),
(596, 'Spencer Rattler', 'QB', 15, 74, 14),

-- Running Backs & Fullback
(597, 'Josh Jacobs', 'RB', 8, 70, 14),
(598, 'AJ Dillon', 'RB', 28, 73, 14),
(599, 'MarShawn Lloyd', 'RB', 32, 71, 14),
(600, 'Henry Pearson', 'FB', 45, 75, 14),

-- Wide Receivers
(601, 'Jayden Reed', 'WR', 11, 71, 14),
(602, 'Christian Watson', 'WR', 9, 75, 14),
(603, 'Romeo Doubs', 'WR', 87, 74, 14),
(604, 'Dontayvion Wicks', 'WR', 13, 72, 14),
(605, 'Bo Melton', 'WR', 80, 71, 14),
(606, 'Malik Heath', 'WR', 86, 73, 14),

-- Tight Ends
(607, 'Luke Musgrave', 'TE', 88, 78, 14),
(608, 'Tucker Kraft', 'TE', 85, 77, 14),
(609, 'Ben Sims', 'TE', 81, 77, 14),

-- Offensive Line
(610, 'Rasheed Walker', 'T', 65, 78, 14),
(611, 'Elgton Jenkins', 'G', 74, 76, 14),
(612, 'Josh Myers', 'C', 71, 77, 14),
(613, 'Sean Rhyan', 'G', 75, 77, 14),
(614, 'Zach Tom', 'T', 50, 76, 14),
(615, 'Jordan Morgan', 'T', 77, 77, 14),
(616, 'Duke Shelley', 'G', 64, 76, 14),

-- Defensive Line
(617, 'Kenny Clark', 'DT', 97, 75, 14),
(618, 'T.J. Slaton', 'DT', 93, 77, 14),
(619, 'Rashan Gary', 'OLB', 52, 75, 14),
(620, 'Preston Smith', 'OLB', 91, 76, 14),
(621, 'Lukas Van Ness', 'OLB', 90, 77, 14),
(622, 'Devonte Wyatt', 'DT', 95, 75, 14),
(623, 'Karl Brooks', 'DT', 94, 75, 14),

-- Linebackers (Inside)
(624, 'Quay Walker', 'ILB', 7, 75, 14),
(625, 'De''Vondre Campbell', 'ILB', 59, 75, 14),
(626, 'Edgerrin Cooper', 'ILB', 43, 74, 14),
(627, 'Isaiah McDuffie', 'ILB', 41, 73, 14),

-- Defensive Backs
(628, 'Jaire Alexander', 'CB', 23, 70, 14),
(629, 'Xavier McKinney', 'S', 29, 73, 14),
(630, 'Keisean Nixon', 'CB', 25, 70, 14),
(631, 'Evan Williams', 'S', 33, 71, 14),
(632, 'Corey Ballentine', 'CB', 35, 72, 14),
(633, 'Kalon Barnes', 'CB', 24, 72, 14),
(634, 'Jacoby Mathews', 'S', 27, 74, 14),

-- Special Teams
(635, 'Anders Carlson', 'K', 17, 72, 14),
(636, 'Daniel Whelan', 'P', 13, 77, 14),
(637, 'Matt Orzech', 'LS', 42, 74, 14);

-- =====================================
-- Team 15: Arizona Cardinals
-- =====================================
INSERT INTO teams (team_id, name, city, stadium) 
VALUES (15, 'Arizona Cardinals', 'Phoenix', 'State Farm Stadium');

-- =====================================
-- Players for Team 15
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(638, 'Kyler Murray', 'QB', 1, 69, 15),
(639, 'Desmond Ridder', 'QB', 4, 75, 15),
(640, 'Clayton Tune', 'QB', 15, 74, 15),

-- Running Backs & Fullback
(641, 'James Conner', 'RB', 6, 73, 15),
(642, 'Trey Benson', 'RB', 3, 73, 15),
(643, 'Michael Carter', 'RB', 30, 69, 15),
(644, 'Emari Demercado', 'RB', 34, 70, 15),

-- Wide Receivers
(645, 'Marvin Harrison Jr.', 'WR', 18, 75, 15),
(646, 'Michael Wilson', 'WR', 13, 74, 15),
(647, 'Chris Moore', 'WR', 11, 72, 15),
(648, 'Greg Dortch', 'WR', 83, 68, 15),
(649, 'Zay Jones', 'WR', 80, 75, 15),
(650, 'Tejhaun Palmer', 'WR', 16, 73, 15),

-- Tight Ends
(651, 'Trey McBride', 'TE', 85, 77, 15),
(652, 'Will Levis', 'TE', 89, 75, 15),
(653, 'E.J. Jenkins', 'TE', 84, 78, 15),

-- Offensive Line
(654, 'Paris Johnson Jr.', 'T', 70, 78, 15),
(655, 'Will Hernandez', 'G', 76, 74, 15),
(656, 'Hjalte Froholdt', 'C', 71, 76, 15),
(657, 'Evan Brown', 'G', 78, 75, 15),
(658, 'Jonah Williams', 'T', 73, 76, 15),
(659, 'Isaiah Adams', 'G', 75, 76, 15),
(660, 'Darrin Paulo', 'T', 79, 78, 15),

-- Defensive Line
(661, 'Justin Jones', 'DT', 93, 74, 15),
(662, 'Bilal Nichols', 'DT', 99, 75, 15),
(663, 'Roy Lopez', 'DT', 92, 72, 15),
(664, 'L.J. Collier', 'DE', 95, 75, 15),

-- Linebackers (Edge/Inside)
(665, 'B.J. Ojulari', 'OLB', 18, 75, 15),
(666, 'Zaven Collins', 'ILB', 25, 77, 15),
(667, 'Jordan Hicks', 'ILB', 58, 74, 15),
(668, 'Victor Dimukeje', 'OLB', 46, 74, 15),
(669, 'Darius Robinson', 'OLB', 9, 76, 15),
(670, 'Elijah Green', 'ILB', 48, 73, 15),

-- Defensive Backs
(671, 'Budda Baker', 'S', 3, 70, 15),
(672, 'Sean Murphy-Bunting', 'CB', 23, 72, 15),
(673, 'Jalen Thompson', 'S', 34, 72, 15),
(674, 'Elijah Moulden', 'CB', 24, 70, 15),
(675, 'Max Melton', 'CB', 28, 71, 15),
(676, 'Kei''Trel Clark', 'CB', 19, 70, 15),
(677, 'Keshawn Moore', 'S', 20, 72, 15),

-- Special Teams
(678, 'Matt Prater', 'K', 5, 72, 15),
(679, 'Blake Gillikin', 'P', 16, 75, 15),
(680, 'Aaron Brewer', 'LS', 46, 74, 15);


-- =====================================
-- Team 16: Indianapolis Colts
-- =====================================
INSERT INTO teams (team_id, name, city, stadium) 
VALUES (16, 'Indianapolis Colts', 'Indianapolis', 'Lucas Oil Stadium');

-- =====================================
-- Players for Team 16
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(681, 'Anthony Richardson', 'QB', 5, 76, 16),
(682, 'Daniel Jones', 'QB', 17, 77, 16),
(683, 'Riley Leonard', 'QB', 15, 76, 16),

-- Running Backs
(684, 'Jonathan Taylor', 'RB', 28, 70, 16),
(685, 'Ameer Abdullah', 'RB', 26, 69, 16),
(686, 'DJ Giddens', 'RB', 21, 72, 16),
(687, 'Tyler Goodson', 'RB', 31, 69, 16),

-- Wide Receivers
(688, 'Michael Pittman Jr.', 'WR', 11, 76, 16),
(689, 'Adonai Mitchell', 'WR', 10, 74, 16),
(690, 'Alec Pierce', 'WR', 14, 75, 16),
(691, 'Josh Downs', 'WR', 2, 69, 16),
(692, 'Anthony Gould', 'WR', 6, 68, 16),

-- Tight Ends
(693, 'Mo Alie-Cox', 'TE', 81, 77, 16),
(694, 'Will Mallory', 'TE', 86, 76, 16),
(695, 'Drew Ogletree', 'TE', 85, 77, 16),
(696, 'Tyler Warren', 'TE', 84, 78, 16),

-- Offensive Line
(697, 'Quenton Nelson', 'G', 56, 77, 16),
(698, 'Braden Smith', 'T', 72, 78, 16),
(699, 'Bernhard Raimann', 'T', 79, 78, 16),
(700, 'Tanor Bortolini', 'C', 60, 76, 16),
(701, 'Danny Pinter', 'C', 63, 76, 16),
(702, 'Ryan Kelly', 'C', 78, 76, 16),
(703, 'Matt Goncalves', 'T', 71, 78, 16),

-- Defensive Line
(704, 'DeForest Buckner', 'DT', 99, 79, 16),
(705, 'Grover Stewart', 'DT', 90, 76, 16),
(706, 'Kwity Paye', 'DE', 51, 75, 16),
(707, 'Laiatu Latu', 'DE', 97, 77, 16),
(708, 'Samson Ebukam', 'DE', 52, 75, 16),
(709, 'Dayo Odeyingbo', 'DE', 54, 78, 16),
(710, 'Neville Gallimore', 'DT', 92, 74, 16),

-- Linebackers
(711, 'Zaire Franklin', 'LB', 44, 72, 16),
(712, 'E.J. Speed', 'LB', 45, 75, 16),
(713, 'Germaine Pratt', 'LB', 53, 75, 16),
(714, 'Segun Olubi', 'LB', 50, 73, 16),
(715, 'Austin Ajiake', 'LB', 58, 73, 16),

-- Defensive Backs
(716, 'Kenny Moore II', 'CB', 23, 69, 16),
(717, 'Julian Blackmon', 'S', 32, 72, 16),
(718, 'Nick Cross', 'S', 20, 72, 16),
(719, 'Jaylon Jones', 'CB', 40, 74, 16),
(720, 'Rodney Thomas II', 'S', 25, 73, 16),
(721, 'JuJu Brents', 'CB', 29, 75, 16),
(722, 'Dallis Flowers', 'CB', 21, 73, 16),

-- Special Teams
(723, 'Matt Gay', 'K', 7, 72, 16),
(724, 'Rigoberto Sanchez', 'P', 8, 72, 16),
(725, 'Luke Rhodes', 'LS', 46, 74, 16);

-- =====================================
-- Team 17: Houston Texans
-- =====================================
INSERT INTO teams (team_id, name, city, stadium) 
VALUES (17, 'Houston Texans', 'Houston', 'NRG Stadium');

-- =====================================
-- Players for Team 17
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(726, 'C.J. Stroud', 'QB', 7, 75, 17),
(727, 'Trey Lance', 'QB', 8, 77, 17),
(728, 'Davis Mills', 'QB', 18, 76, 17),

-- Running Backs
(729, 'Joe Mixon', 'RB', 22, 73, 17),
(730, 'Tank Bigsby', 'RB', 20, 71, 17),
(731, 'Dare Ogunbowale', 'RB', 28, 71, 17),

-- Wide Receivers
(732, 'Stefon Diggs', 'WR', 1, 72, 17),
(733, 'Nico Collins', 'WR', 12, 75, 17),
(734, 'Tank Dell', 'WR', 13, 70, 17),
(735, 'Robert Woods', 'WR', 2, 72, 17),
(736, 'John Metchie III', 'WR', 8, 71, 17),
(737, 'Jermaine Burton', 'WR', 14, 72, 17),

-- Tight Ends
(738, 'Dalton Schultz', 'TE', 86, 76, 17),
(739, 'Trevon Wesco', 'TE', 88, 77, 17),
(740, 'Brevin Jordan', 'TE', 9, 75, 17),

-- Offensive Line
(741, 'Laremy Tunsil', 'T', 78, 77, 17),
(742, 'Kenyon Green', 'G', 53, 77, 17),
(743, 'Juice Scruggs', 'C', 70, 75, 17),
(744, 'Sua Opeta', 'G', 76, 76, 17),
(745, 'Tytus Howard', 'T', 71, 77, 17),
(746, 'Blake Fisher', 'T', 75, 78, 17),
(747, 'Kamal Johnson', 'G', 67, 76, 17),

-- Defensive Line
(748, 'Will Anderson Jr.', 'DE', 51, 75, 17),
(749, 'Denico Autry', 'DE', 96, 76, 17),
(750, 'Tim Settle', 'DT', 93, 75, 17),
(751, 'Sheldon Rankins', 'DT', 98, 73, 17),
(752, 'Folorunso Fatukasi', 'DT', 94, 75, 17),
(753, 'T Vondre Sweat', 'DT', 97, 74, 17),
(754, 'Jalen Green', 'DE', 95, 76, 17),

-- Linebackers
(755, 'Azeez Al-Shaair', 'ILB', 2, 73, 17),
(756, 'Christian Harris', 'ILB', 48, 73, 17),
(757, 'Derek Barnett', 'OLB', 50, 75, 17),
(758, 'Henry T oTo', 'ILB', 41, 73, 17),
(759, 'Del Shawn Phillips', 'LB', 40, 74, 17),

-- Defensive Backs
(760, 'Derek Stingley Jr.', 'CB', 24, 73, 17),
(761, 'Jeff Okudah', 'CB', 1, 73, 17),
(762, 'Jalen Pitre', 'S', 5, 71, 17),
(763, 'Jimmie Ward', 'S', 20, 70, 17),
(764, 'Calen Bullock', 'S', 25, 74, 17),
(765, 'Kamari Lassiter', 'CB', 2, 72, 17),
(766, 'Desmond King II', 'CB', 29, 70, 17),

-- Special Teams
(767, 'Ka imi Fairbairn', 'K', 15, 70, 17),
(768, 'Blake Gillikin', 'P', 16, 75, 17),
(769, 'Jon Weeks', 'LS', 46, 70, 17);

-- =====================================
-- Team 18: Atlanta Falcons
-- =====================================
INSERT INTO teams (team_id, name, city, stadium) 
VALUES (18, 'Atlanta Falcons', 'Atlanta', 'Mercedes-Benz Stadium');

-- =====================================
-- Players for Team 18
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(770, 'Kirk Cousins', 'QB', 18, 75, 18),
(771, 'Michael Penix Jr.', 'QB', 9, 75, 18),
(772, 'Easton Stick', 'QB', 12, 73, 18),

-- Running Backs
(773, 'Bijan Robinson', 'RB', 7, 71, 18),
(774, 'Tyler Allgeier', 'RB', 25, 71, 18),
(775, 'Nathan Carter', 'RB', 38, 70, 18),

-- Wide Receivers
(776, 'Drake London', 'WR', 5, 76, 18),
(777, 'Darnell Mooney', 'WR', 1, 71, 18),
(778, 'KhaDarel Hodge', 'WR', 4, 74, 18),
(779, 'Jamal Agnew', 'WR', 14, 70, 18),
(780, 'David Sills V', 'WR', 87, 75, 18),

-- Tight Ends
(781, 'Kyle Pitts', 'TE', 8, 78, 18),
(782, 'Charlie Woerner', 'TE', 89, 77, 18),
(783, 'Teagan Quitoriano', 'TE', 85, 78, 18),

-- Offensive Line
(784, 'Jake Matthews', 'T', 70, 77, 18),
(785, 'Matthew Bergeron', 'G', 65, 77, 18),
(786, 'Ryan Neuzil', 'C', 64, 75, 18),
(787, 'Chris Lindstrom', 'G', 63, 76, 18),
(788, 'Elijah Wilkinson', 'T', 71, 78, 18),
(789, 'Jovaughn Gwyn', 'G', 52, 74, 18),
(790, 'Jack Nelson', 'T', 69, 79, 18),

-- Defensive Line
(791, 'David Onyemata', 'DT', 90, 76, 18),
(792, 'Ruke Orhorhoro', 'DT', 98, 76, 18),
(793, 'Brandon Dorlus', 'DE', 54, 75, 18),
(794, 'Elijah Garcia', 'DE', 91, 77, 18),
(795, 'Kentavius Street', 'DT', 93, 74, 18),

-- Linebackers
(796, 'Leonard Floyd', 'OLB', 56, 75, 18),
(797, 'Kaden Elliss', 'ILB', 55, 74, 18),
(798, 'Divine Deablo', 'ILB', 0, 75, 18),
(799, 'Arnold Ebiketie', 'OLB', 17, 74, 18),
(800, 'Jalon Walker', 'OLB', 11, 74, 18),
(801, 'JD Bertrand', 'ILB', 40, 73, 18),
(802, 'James Pearce Jr.', 'OLB', 27, 77, 18),

-- Defensive Backs
(803, 'A.J. Terrell', 'CB', 24, 73, 18),
(804, 'Jessie Bates III', 'S', 3, 73, 18),
(805, 'Mike Hughes', 'CB', 21, 70, 18),
(806, 'Xavier Watts', 'S', 31, 72, 18),
(807, 'Dee Alford', 'CB', 20, 71, 18),
(808, 'Jordan Fuller', 'S', 29, 74, 18),
(809, 'C.J. Henderson', 'CB', 39, 73, 18),

-- Special Teams
(810, 'Zane Gonzalez', 'K', 45, 72, 18),
(811, 'Bradley Pinion', 'P', 13, 77, 18),
(812, 'Liam McCullough', 'LS', 49, 74, 18);

-- =====================================
-- Team 19: Las Vegas Raiders
-- =====================================
INSERT INTO teams (team_id, name, city, stadium) 
VALUES (19, 'Las Vegas Raiders', 'Las Vegas', 'Allegiant Stadium');

-- =====================================
-- Players for Team 19
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(813, 'Geno Smith', 'QB', 7, 75, 19),
(814, 'Aidan O''Connell', 'QB', 12, 75, 19),
(815, 'Kenny Pickett', 'QB', 15, 75, 19),

-- Running Backs
(816, 'Zamir White', 'RB', 3, 71, 19),
(817, 'Raheem Mostert', 'RB', 31, 70, 19),
(818, 'Ashton Jeanty', 'RB', 2, 68, 19),
(819, 'Dylan Laube', 'RB', 23, 69, 19),

-- Wide Receivers
(820, 'Tyler Lockett', 'WR', 17, 70, 19),
(821, 'Tre Tucker', 'WR', 1, 68, 19),
(822, 'Dont''e Thornton Jr.', 'WR', 10, 77, 19),
(823, 'Jack Bech', 'WR', 18, 73, 19),
(824, 'Alex Bachman', 'WR', 81, 72, 19),

-- Tight Ends
(825, 'Brock Bowers', 'TE', 89, 76, 19),
(826, 'Michael Mayer', 'TE', 87, 76, 19),
(827, 'Ian Thomas', 'TE', 80, 75, 19),
(828, 'Carter Runyon', 'TE', 46, 76, 19),

-- Offensive Line
(829, 'Alex Cappa', 'G', 65, 78, 19),
(830, 'DJ Glaze', 'T', 71, 76, 19),
(831, 'Charles Grant', 'T', 60, 76, 19),
(832, 'Dylan Parham', 'G', 66, 75, 19),
(833, 'Will Putnam', 'C', 67, 76, 19),
(834, 'Jordan Meredith', 'C/G', 61, 74, 19),
(835, 'Stone Forsythe', 'T', 70, 80, 19),

-- Defensive Line
(836, 'Maxx Crosby', 'DE', 98, 77, 19),
(837, 'Tyree Wilson', 'DE', 9, 77, 19),
(838, 'Malcolm Koonce', 'DE', 51, 75, 19),
(839, 'Leki Fotu', 'DT', 95, 77, 19),
(840, 'Adam Butler', 'DT', 69, 76, 19),
(841, 'Thomas Booker IV', 'DT', 99, 75, 19),
(842, 'Tonka Hemingway', 'DT', 97, 74, 19),

-- Linebackers
(843, 'Devin White', 'LB', 45, 72, 19),
(844, 'Elandon Roberts', 'LB', 52, 71, 19),
(845, 'Jamal Adams', 'LB', 33, 73, 19),
(846, 'Tommy Eichenberg', 'LB', 44, 74, 19),
(847, 'Charles Snowden', 'DE/LB', 49, 78, 19),
(848, 'Jon Rhattigan', 'LB', 59, 72, 19),

-- Defensive Backs
(849, 'Jeremy Chinn', 'S', 11, 75, 19),
(850, 'Isaiah Pola-Mao', 'S', 20, 76, 19),
(851, 'Eric Stokes', 'CB', 22, 73, 19),
(852, 'Darnay Holmes', 'CB', 30, 70, 19),
(853, 'Decamerion Richardson', 'CB', 25, 74, 19),
(854, 'Kyu Blu Kelly', 'CB', 36, 72, 19),
(855, 'Lonnie Johnson Jr.', 'S', 32, 74, 19),

-- Special Teams
(856, 'Daniel Carlson', 'K', 8, 77, 19),
(857, 'AJ Cole', 'P', 6, 76, 19),
(858, 'Jacob Bobenmoyer', 'LS', 50, 72, 19);

-- =====================================
-- Team 20: New Orleans Saints
-- =====================================
INSERT INTO teams (team_id, name, city, stadium) 
VALUES (20, 'New Orleans Saints', 'New Orleans', 'Caesars Superdome');

-- =====================================
-- Players for Team 20
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(859, 'Derek Carr', 'QB', 4, 75, 20),
(860, 'Spencer Rattler', 'QB', 18, 74, 20),
(861, 'Jake Haener', 'QB', 3, 73, 20),

-- Running Backs
(862, 'Alvin Kamara', 'RB', 41, 70, 20),
(863, 'Jamaal Williams', 'RB', 28, 72, 20),
(864, 'Kendre Miller', 'RB', 25, 71, 20),
(865, 'Adam Prentice', 'FB', 46, 72, 20),

-- Wide Receivers
(866, 'Chris Olave', 'WR', 12, 73, 20),
(867, 'Rashid Shaheed', 'WR', 22, 72, 20),
(868, 'Cedrick Wilson Jr.', 'WR', 10, 74, 20),
(869, 'Bub Means', 'WR', 17, 74, 20),
(870, 'Equanimeous St. Brown', 'WR', 19, 76, 20),

-- Tight Ends
(871, 'Juwan Johnson', 'TE', 81, 76, 20),
(872, 'Foster Moreau', 'TE', 87, 78, 20),
(873, 'Taysom Hill', 'TE', 7, 74, 20),

-- Offensive Line
(874, 'Ryan Ramczyk', 'T', 71, 78, 20),
(875, 'Cesar Ruiz', 'G', 51, 74, 20),
(876, 'Erik McCoy', 'C', 78, 76, 20),
(877, 'Oli Udoh', 'T/G', 75, 78, 20),
(878, 'Taliese Fuaga', 'T', 76, 77, 20),
(879, 'Landon Young', 'T', 67, 78, 20),
(880, 'Shane Lemieux', 'G', 65, 76, 20),

-- Defensive Line
(881, 'Cameron Jordan', 'DE', 94, 77, 20),
(882, 'Chase Young', 'DE', 92, 78, 20),
(883, 'Bryan Bresee', 'DT', 90, 77, 20),
(884, 'Kenderick Pryor', 'DT', 97, 77, 20),
(885, 'Khalen Saunders', 'DT', 99, 73, 20),
(886, 'Carl Granderson', 'DE', 96, 77, 20),

-- Linebackers
(887, 'Demario Davis', 'LB', 56, 74, 20),
(888, 'Pete Werner', 'LB', 20, 75, 20),
(889, 'Willie Gay Jr.', 'LB', 22, 73, 20),
(890, 'Jaylan Ford', 'LB', 45, 74, 20),
(891, 'Anfernee Orji', 'LB', 44, 73, 20),

-- Defensive Backs
(892, 'Marshon Lattimore', 'CB', 23, 73, 20),
(893, 'Tyrann Mathieu', 'S', 32, 69, 20),
(894, 'Talanoa Hufanga', 'S', 29, 72, 20),
(895, 'Paulson Adebo', 'CB', 21, 73, 20),
(896, 'Kool-Aid McKinstry', 'CB', 1, 74, 20),
(897, 'Alontae Taylor', 'CB', 27, 73, 20),
(898, 'Ugo Amadi', 'S', 28, 70, 20),

-- Special Teams
(899, 'Blake Grupe', 'K', 19, 68, 20),
(900, 'Lou Hedley', 'P', 14, 76, 20),
(901, 'Zach Wood', 'LS', 49, 74, 20);

-- =====================================
-- Team 21: Cleveland Browns
-- =====================================
INSERT INTO teams (team_id, name, city, stadium) 
VALUES (21, 'Cleveland Browns', 'Cleveland', 'Cleveland Browns Stadium');

-- =====================================
-- Players for Team 21
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(902, 'Deshaun Watson', 'QB', 4, 75, 21),
(903, 'Jameis Winston', 'QB', 2, 74, 21),
(904, 'Tyler Huntley', 'QB', 8, 73, 21),

-- Running Backs
(905, 'Nick Chubb', 'RB', 24, 71, 21),
(906, 'D''Onta Foreman', 'RB', 21, 74, 21),
(907, 'Jerome Ford', 'RB', 34, 71, 21),
(908, 'Pierre Strong Jr.', 'RB', 20, 71, 21),

-- Wide Receivers
(909, 'Amari Cooper', 'WR', 19, 73, 21),
(910, 'Jerry Jeudy', 'WR', 3, 72, 21),
(911, 'Elijah Moore', 'WR', 8, 71, 21),
(912, 'Cedric Tillman', 'WR', 89, 75, 21),
(913, 'Jamari Thrash', 'WR', 84, 70, 21),

-- Tight Ends
(914, 'David Njoku', 'TE', 85, 76, 21),
(915, 'Jordan Akins', 'TE', 88, 77, 21),
(916, 'Dawson Knox', 'TE', 83, 76, 21),

-- Offensive Line
(917, 'Jedrick Wills Jr.', 'T', 74, 76, 21),
(918, 'Joel Bitonio', 'G', 75, 77, 21),
(919, 'Ethan Pocic', 'C', 55, 78, 21),
(920, 'Wyatt Teller', 'G', 77, 76, 21),
(921, 'Jack Conklin', 'T', 78, 79, 21),
(922, 'Zack Zinter', 'G', 67, 77, 21),
(923, 'Hakeem Adeniji', 'T', 76, 76, 21),

-- Defensive Line
(924, 'Myles Garrett', 'DE', 95, 76, 21),
(925, 'Za''Darius Smith', 'DE', 99, 75, 21),
(926, 'Dalvin Tomlinson', 'DT', 94, 75, 21),
(927, 'Shelby Harris', 'DT', 93, 75, 21),
(928, 'Alex Wright', 'DE', 91, 77, 21),
(929, 'Maurice Hurst II', 'DT', 90, 74, 21),
(930, 'Mike Hall Jr.', 'DT', 58, 74, 21),

-- Linebackers
(931, 'Jeremiah Owusu-Koramoah', 'LB', 6, 74, 21),
(932, 'Jordan Hicks', 'LB', 58, 74, 21),
(933, 'Devin Bush', 'LB', 10, 71, 21),
(934, 'Jacob Phillips', 'LB', 50, 75, 21),
(935, 'Tony Fields II', 'LB', 42, 73, 21),

-- Defensive Backs
(936, 'Denzel Ward', 'CB', 21, 71, 21),
(937, 'Greg Newsome II', 'CB', 0, 72, 21),
(938, 'Juan Thornhill', 'S', 22, 73, 21),
(939, 'Grant Delpit', 'S', 33, 73, 21),
(940, 'Rodney McLeod', 'S', 26, 71, 21),
(941, 'Cameron Mitchell', 'CB', 39, 71, 21),
(942, 'Justin Morgan', 'CB', 37, 73, 21),

-- Special Teams
(943, 'Dustin Hopkins', 'K', 13, 72, 21),
(944, 'Corey Bojorquez', 'P', 17, 76, 21),
(945, 'Christian Kuntz', 'LS', 46, 73, 21);

-- =====================================
-- Team 22: Pittsburgh Steelers
-- =====================================
INSERT INTO teams (team_id, name, city, stadium) 
VALUES (22, 'Pittsburgh Steelers', 'Pittsburgh', 'Acrisure Stadium');

-- =====================================
-- Players for Team 23
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(989, 'Russell Wilson', 'QB', 3, 71, 23),
(990, 'Justin Fields', 'QB', 2, 75, 23),
(991, 'Kyle Allen', 'QB', 14, 75, 23),

-- Running Backs
(992, 'Najee Harris', 'RB', 22, 74, 23),
(993, 'Jaylen Warren', 'RB', 30, 70, 23),
(994, 'Cordarrelle Patterson', 'RB/KR', 84, 73, 23),

-- Wide Receivers
(995, 'George Pickens', 'WR', 1, 75, 23),
(996, 'Roman Wilson', 'WR', 10, 71, 23),
(997, 'Van Jefferson', 'WR', 11, 73, 23),
(998, 'Calvin Austin III', 'WR', 19, 68, 23),
(999, 'Quez Watkins', 'WR', 16, 74, 23),

-- Tight Ends
(1000, 'Pat Freiermuth', 'TE', 88, 76, 23),
(1001, 'Connor Heyward', 'TE', 83, 73, 23),
(1002, 'Darnell Washington', 'TE', 80, 78, 23),

-- Offensive Line
(1003, 'Troy Fautanu', 'T', 76, 77, 23),
(1004, 'James Daniels', 'G', 78, 75, 23),
(1005, 'Zach Frazier', 'C', 54, 75, 23),
(1006, 'Isaac Seumalo', 'G', 73, 76, 23),
(1007, 'Broderick Jones', 'T', 77, 77, 23),
(1008, 'Dan Moore Jr.', 'T', 65, 76, 23),
(1009, 'Nate Herbig', 'G', 71, 76, 23),

-- Defensive Line
(1010, 'Cameron Heyward', 'DT', 97, 77, 23),
(1011, 'Keeanu Benton', 'DT', 95, 75, 23),
(1012, 'Larry Ogunjobi', 'DT', 99, 75, 23),
(1013, 'DeMarvin Leal', 'DL', 98, 76, 23),

-- Linebackers
(1014, 'T.J. Watt', 'OLB', 90, 76, 23),
(1015, 'Alex Highsmith', 'OLB', 56, 75, 23),
(1016, 'Patrick Queen', 'ILB', 6, 73, 23),
(1017, 'Elandon Roberts', 'ILB', 50, 71, 23),
(1018, 'Nick Herbig', 'OLB', 53, 74, 23),
(1019, 'Cole Holcomb', 'ILB', 55, 74, 23),

-- Defensive Backs
(1020, 'Minkah Fitzpatrick', 'S', 39, 73, 23),
(1021, 'Joey Porter Jr.', 'CB', 24, 73, 23),
(1022, 'Donte Jackson', 'CB', 26, 70, 23),
(1023, 'DeShon Elliott', 'S', 28, 72, 23),
(1024, 'Ryan Watts', 'CB', 25, 75, 23),
(1025, 'Cameron Brown', 'S', 31, 72, 23),
(1026, 'Darius Rush', 'CB', 20, 74, 23),

-- Special Teams
(1027, 'Chris Boswell', 'K', 9, 72, 23),
(1028, 'Cameron Johnston', 'P', 15, 72, 23),
(1029, 'Christian Kuntz', 'LS', 46, 73, 23);

-- =====================================
-- Team 23: Tennessee Titans
-- =====================================
INSERT INTO teams (team_id, name, city, stadium) 
VALUES (23, 'Tennessee Titans', 'Nashville', 'Nissan Stadium');

-- =====================================
-- Players for Team 23
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(1074, 'Cam Ward', 'QB', 1, 74, 25),
(1075, 'Brandon Allen', 'QB', 10, 74, 25),
(1076, 'Mason Rudolph', 'QB', 11, 77, 25),

-- Running Backs
(1077, 'Tony Pollard', 'RB', 20, 72, 25),
(1078, 'Tyjae Spears', 'RB', 2, 71, 25),
(1079, 'Kalel Mullings', 'RB', 31, 74, 25),
(1080, 'Julius Chestnut', 'RB', 36, 71, 25),

-- Wide Receivers
(1081, 'Calvin Ridley', 'WR', 0, 73, 25),
(1082, 'DeAndre Hopkins', 'WR', 10, 73, 25),
(1083, 'Tyler Boyd', 'WR', 83, 73, 25),
(1084, 'Treylon Burks', 'WR', 16, 74, 25),
(1085, 'Nick Westbrook-Ikhine', 'WR', 15, 75, 25),
(1086, 'Van Jefferson', 'WR', 11, 73, 25),  

-- Tight Ends
(1087, 'Chig Okonkwo', 'TE', 85, 75, 25),
(1088, 'Josh Whyle', 'TE', 84, 78, 25),
(1089, 'Nick Vannett', 'TE', 80, 77, 25),

-- Offensive Line
(1090, 'JC Latham', 'T', 55, 78, 25),
(1091, 'Peter Skoronski', 'G', 77, 76, 25),
(1092, 'Lloyd Cushenberry III', 'C', 79, 76, 25),
(1093, 'Kevin Zeitler', 'G', 70, 76, 25),
(1094, 'Nicholas Petit-Frere', 'T', 72, 77, 25),
(1095, 'Dan Moore Jr.', 'T', 75, 77, 25),
(1096, 'Dillon Radunz', 'G', 74, 76, 25),

-- Defensive Line
(1097, 'Jeffery Simmons', 'DT', 98, 76, 25),
(1098, 'Vondre Sweat', 'NT', 93, 76, 25),
(1099, 'Sebastian Joseph-Day', 'DT', 69, 76, 25),
(1100, 'Keondre Coburn', 'DT', 99, 74, 25),

-- Linebackers
(1101, 'Harold Landry III', 'OLB', 58, 75, 25),
(1102, 'Kenneth Murray Jr.', 'ILB', 56, 75, 25),
(1103, 'Arden Key', 'OLB', 49, 77, 25),
(1104, 'Ernest Jones', 'ILB', 53, 73, 25),
(1105, 'Jack Gibbens', 'LB', 54, 75, 25),
(1106, 'Cedric Gray', 'LB', 33, 74, 25),

-- Defensive Backs
(1107, 'Jarius Sneed', 'CB', 38, 73, 25),
(1108, 'Chidobe Awuzie', 'CB', 24, 72, 25),
(1109, 'Amani Hooker', 'S', 37, 71, 25),
(1110, 'Quandre Diggs', 'S', 26, 70, 25),
(1111, 'Roger McCreary', 'CB', 27, 70, 25),
(1112, 'Mike Brown', 'S', 44, 73, 25),
(1113, 'Jarvis Brownlee Jr.', 'CB', 30, 72, 25),

-- Special Teams
(1114, 'Nick Folk', 'K', 2, 70, 25),
(1115, 'Ryan Stonehouse', 'P', 4, 72, 25),
(1116, 'Morgan Cox', 'LS', 46, 76, 25);

-- =====================================
-- Team 24: Washington Commanders
-- =====================================
INSERT INTO teams (team_id, name, city, stadium) 
VALUES (24, 'Washington Commanders', 'Landover', 'FedExField');

-- =====================================
-- Players for Team 24
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(1117, 'Jayden Daniels', 'QB', 5, 75, 26),
(1118, 'Marcus Mariota', 'QB', 0, 75, 26),
(1119, 'Jeff Driskel', 'QB', 14, 76, 26),

-- Running Backs
(1120, 'Austin Ekeler', 'RB', 30, 70, 26),
(1121, 'Brian Robinson Jr.', 'RB', 8, 73, 26),
(1122, 'Chris Rodriguez Jr.', 'RB', 32, 72, 26),
(1123, 'Mike Davis', 'RB', 28, 71, 26),

-- Wide Receivers
(1124, 'Terry McLaurin', 'WR', 17, 72, 26),
(1125, 'Jahan Dotson', 'WR', 1, 71, 26),
(1126, 'Olamide Zaccheaus', 'WR', 13, 69, 26),
(1127, 'Luke McCaffrey', 'WR', 18, 73, 26),
(1128, 'Dyami Brown', 'WR', 2, 73, 26),

-- Tight Ends
(1129, 'Zach Ertz', 'TE', 86, 77, 26),
(1130, 'Ben Sinnott', 'TE', 82, 76, 26),
(1131, 'Cole Turner', 'TE', 80, 78, 26),

-- Offensive Line
(1132, 'Cornelius Lucas', 'T', 78, 79, 26),
(1133, 'Nick Allegretti', 'G', 61, 75, 26),
(1134, 'Tyler Biadasz', 'C', 77, 76, 26),
(1135, 'Sam Cosmi', 'T/G', 76, 78, 26),
(1136, 'Andrew Wylie', 'T', 75, 77, 26),
(1137, 'Brandon Coleman', 'G', 67, 76, 26),
(1138, 'Trent Scott', 'T', 72, 78, 26),

-- Defensive Line
(1139, 'Jonathan Allen', 'DT', 93, 75, 26),
(1140, 'Daron Payne', 'DT', 94, 75, 26),
(1141, 'Efe Obada', 'DE', 92, 77, 26),
(1142, 'Dorance Armstrong', 'DE', 91, 75, 26),
(1143, 'Jalyn Phillips', 'DT', 95, 74, 26),
(1144, 'Javontae Jean-Baptiste', 'DE', 58, 77, 26),

-- Linebackers
(1145, 'Bobby Wagner', 'LB', 54, 73, 26),
(1146, 'Frankie Luvu', 'LB', 51, 72, 26),
(1147, 'Jamin Davis', 'LB', 52, 75, 26),
(1148, 'Jordan Magee', 'LB', 45, 73, 26),
(1149, 'Derrick Gore', 'LB', 72, 26),

-- Defensive Backs
(1152, 'Darrick Forrest', 'S', 22, 73, 26),
(1153, 'Mike Sainristil', 'CB', 34, 70, 26),
(1154, 'Noah Igbinoghene', 'CB', 24, 71, 26),
(1155, 'Quan Martin', 'S', 33, 73, 26),
(1156, 'Emmanuel Forbes', 'CB', 16, 73, 26),

-- Special Teams
(1157, 'Joey Slye', 'K', 12, 70, 26),
(1158, 'Tress Way', 'P', 5, 74, 26),
(1159, 'Tyler Ott', 'LS', 46, 75, 26);

-- =====================================
-- Team 25: Jacksonville Jaguars
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (25, 'Jacksonville Jaguars', 'Jacksonville', 'EverBank Stadium');

-- =====================================
-- Players for Team 25
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(1280, 'Trevor Lawrence', 'QB', 16, 78, 30),
(1281, 'Nick Mullens', 'QB', 14, 73, 30),

-- Running Backs
(1282, 'Travis Etienne Jr.', 'RB', 1, 70, 30),
(1283, 'LeQuint Allen Jr.', 'RB', 36, 72, 30),
(1284, 'Bhayshul Tuten', 'RB', 33, 69, 30),

-- Wide Receivers
(1285, 'Brian Thomas Jr.', 'WR', 7, 74, 30),
(1286, 'Jakobi Meyers', 'WR', 3, 73, 30),
(1287, 'Tim Patrick', 'WR', 17, 77, 30),
(1288, 'Parker Washington', 'WR', 11, 70, 30),

-- Tight Ends
(1289, 'Brenton Strange', 'TE', 85, 76, 30),
(1290, 'Hunter Long', 'TE', 84, 77, 30),
(1291, 'Johnny Mundt', 'TE', 86, 76, 30),

-- Offensive Line
(1292, 'Anton Harrison', 'T', 77, 77, 30),
(1293, 'Ezra Cleveland', 'G', 76, 78, 30),
(1294, 'Robert Hainsey', 'C', 73, 76, 30),
(1295, 'Patrick Mekari', 'G', 65, 76, 30),
(1296, 'Walker Little', 'T', 72, 79, 30),
(1297, 'Wyatt Milum', 'T', 64, 78, 30),

-- Defensive Line
(1298, 'Arik Armstead', 'DT', 91, 79, 30),
(1299, 'DaVon Hamilton', 'DT', 52, 76, 30),
(1300, 'Maason Smith', 'DT', 94, 77, 30),

-- Linebackers
(1301, 'Josh Hines-Allen', 'DE', 41, 77, 30),
(1302, 'Travon Walker', 'DE', 44, 77, 30),
(1303, 'Foyesade Oluokun', 'LB', 23, 75, 30),
(1304, 'Devin Lloyd', 'LB', 0, 75, 30),

-- Defensive Backs
(1305, 'Greg Newsome II', 'CB', 6, 73, 30),
(1306, 'Antonio Johnson', 'S', 26, 74, 30),
(1307, 'Jourdan Lewis', 'CB', 2, 70, 30),
(1308, 'Andrew Wingard', 'S', 42, 72, 30),

-- Special Teams
(1309, 'Cam Little', 'K', 39, 73, 30),
(1310, 'Logan Cooke', 'P', 9, 77, 30);

-- =====================================
-- Team 26: Los Angeles Chargers
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (26, 'Los Angeles Chargers', 'Inglewood', 'SoFi Stadium');

-- =====================================
-- Players for Team 26
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(1311, 'Justin Herbert', 'QB', 10, 78, 31),
(1312, 'Trey Lance', 'QB', 5, 76, 31),

-- Running Backs
(1313, 'J.K. Dobbins', 'RB', 27, 70, 31),
(1314, 'Gus Edwards', 'RB', 4, 73, 31),
(1315, 'Kimani Vidal', 'RB', 30, 68, 31),

-- Wide Receivers
(1316, 'Quentin Johnston', 'WR', 1, 74, 31),
(1317, 'Ladd McConkey', 'WR', 15, 72, 31),
(1318, 'Derius Davis', 'WR', 12, 68, 31),
(1319, 'DJ Chark', 'WR', 9, 75, 31),

-- Tight Ends
(1320, 'Will Dissly', 'TE', 89, 76, 31),
(1321, 'Tyler Conklin', 'TE', 83, 75, 31),
(1322, 'Hayden Hurst', 'TE', 88, 76, 31),

-- Offensive Line
(1323, 'Rashawn Slater', 'T', 70, 77, 31),
(1324, 'Joe Alt', 'T', 76, 80, 31),
(1325, 'Zion Johnson', 'G', 77, 75, 31),
(1326, 'Bradley Bozeman', 'C', 75, 77, 31),
(1327, 'Trey Pipkins III', 'T', 79, 78, 31),

-- Defensive Line
(1328, 'Joey Bosa', 'LB', 97, 77, 31),
(1329, 'Khalil Mack', 'LB', 52, 75, 31),
(1330, 'Justin Eboigbe', 'DL', 92, 77, 31),
(1331, 'Poona Ford', 'DT', 95, 71, 31),
(1332, 'Jamaree Caldwell', 'DT', 99, 73, 31),

-- Linebackers
(1333, 'Junior Colson', 'LB', 25, 75, 31),
(1334, 'Daiyan Henley', 'LB', 0, 73, 31),
(1335, 'Tuli Tuipulotu', 'OLB', 45, 75, 31),

-- Defensive Backs
(1336, 'Derwin James Jr.', 'S', 3, 74, 31),
(1337, 'Asante Samuel Jr.', 'CB', 20, 70, 31),
(1338, 'Kristian Fulton', 'CB', 7, 71, 31),
(1339, 'Alohi Gilman', 'S', 32, 70, 31),
(1340, 'Elijah Molden', 'CB', 22, 70, 31),

-- Special Teams
(1341, 'Cameron Dicker', 'K', 11, 73, 31),
(1342, 'J.K. Scott', 'P', 16, 77, 31);

-- =====================================
-- Team 27: Chicago Bears
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (27, 'Chicago Bears', 'Chicago', 'Soldier Field');

-- =====================================
-- Players for Team 27
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(1343, 'Caleb Williams', 'QB', 18, 73, 27),
(1344, 'Tyson Bagent', 'QB', 17, 75, 27),
(1345, 'Case Keenum', 'QB', 11, 73, 27),

-- Running Backs
(1346, 'D''Andre Swift', 'RB', 4, 68, 27),
(1347, 'Travis Homer', 'RB', 21, 70, 27),
(1348, 'Kyle Monangai', 'RB', 25, 68, 27),

-- Wide Receivers
(1349, 'DJ Moore', 'WR', 2, 72, 27),
(1350, 'Rome Odunze', 'WR', 15, 75, 27),
(1351, 'Luther Burden III', 'WR', 10, 72, 27),
(1352, 'Devin Duvernay', 'WR', 12, 71, 27),
(1353, 'Olamide Zaccheaus', 'WR', 14, 68, 27),

-- Tight Ends
(1354, 'Cole Kmet', 'TE', 85, 78, 27),
(1355, 'Colston Loveland', 'TE', 84, 78, 27),
(1356, 'Durham Smythe', 'TE', 81, 76, 27),

-- Offensive Line
(1357, 'Darnell Wright', 'T', 58, 77, 27),
(1358, 'Ryan Bates', 'G', 71, 76, 27),
(1359, 'Drew Dalman', 'C', 52, 75, 27),
(1360, 'Jonah Jackson', 'G', 73, 75, 27),
(1361, 'Ozzy Trapilo', 'T', 75, 80, 27),

-- Defensive Line
(1362, 'Montez Sweat', 'DE', 98, 78, 27),
(1363, 'Andrew Billings', 'DT', 97, 73, 27),
(1364, 'Gervon Dexter Sr.', 'DT', 99, 78, 27),
(1365, 'Joe Tryon-Shoyinka', 'DE', 93, 77, 27),
(1366, 'Austin Booker', 'DE', 94, 78, 27),

-- Linebackers
(1367, 'T.J. Edwards', 'LB', 53, 72, 27),
(1368, 'Noah Sewell', 'LB', 44, 73, 27),
(1369, 'Amen Ogbongbemiga', 'LB', 45, 73, 27),

-- Defensive Backs
(1370, 'Jaylon Johnson', 'CB', 1, 72, 27),
(1371, 'Kyler Gordon', 'CB', 6, 71, 27),
(1372, 'Jaquan Brisker', 'S', 9, 73, 27),
(1373, 'Kevin Byard III', 'S', 31, 71, 27),
(1374, 'Tyrique Stevenson', 'CB', 29, 72, 27),

-- Special Teams
(1375, 'Cairo Santos', 'K', 8, 68, 27),
(1376, 'Tory Taylor', 'P', 19, 76, 27);

-- =====================================
-- Team 28: Carolina Panthers
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (28, 'Carolina Panthers', 'Charlotte', 'Bank of America Stadium');

-- =====================================
-- Players for Team 28
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(1377, 'Bryce Young', 'QB', 9, 70, 28),
(1378, 'Andy Dalton', 'QB', 14, 74, 28),

-- Running Backs
(1379, 'Chuba Hubbard', 'RB', 30, 73, 28),
(1380, 'Rico Dowdle', 'RB', 5, 71, 28),
(1381, 'Trevor Etienne', 'RB', 23, 68, 28),

-- Wide Receivers
(1382, 'Xavier Legette', 'WR', 17, 75, 28),
(1383, 'Tetairoa McMillan', 'WR', 4, 77, 28),
(1384, 'Hunter Renfrow', 'WR', 13, 70, 28),
(1385, 'Jalen Coker', 'WR', 18, 75, 28),

-- Tight Ends
(1386, 'Tommy Tremble', 'TE', 82, 76, 28),
(1387, 'Ja''Tavion Sanders', 'TE', 0, 76, 28),
(1388, 'James Mitchell', 'TE', 85, 76, 28),

-- Offensive Line
(1389, 'Ikem Ekwonu', 'LT', 79, 76, 28),
(1390, 'Damien Lewis', 'LG', 68, 74, 28),
(1391, 'Cade Mays', 'C', 64, 78, 28),
(1392, 'Austin Corbett', 'G/C', 63, 76, 28),
(1393, 'Taylor Moton', 'RT', 72, 77, 28),
(1394, 'Yosh Nijman', 'T', 77, 79, 28),

-- Defensive Line
(1395, 'Derrick Brown', 'DT', 95, 77, 28),
(1396, 'A''Shawn Robinson', 'DT', 94, 75, 28),
(1397, 'Tershawn Wharton', 'DE', 99, 73, 28),

-- Linebackers
(1398, 'D.J. Wonnum', 'OLB', 98, 77, 28),
(1399, 'Nic Scourton', 'OLB', 11, 74, 28),
(1400, 'Josey Jewell', 'ILB', 47, 74, 28),
(1401, 'Trevin Wallace', 'ILB', 32, 73, 28),
(1402, 'Jadeveon Clowney', 'OLB', 7, 77, 28),

-- Defensive Backs
(1403, 'Jaycee Horn', 'CB', 8, 73, 28),
(1404, 'Tre''von Moehrig', 'S', 7, 74, 28),
(1405, 'Mike Jackson', 'CB', 2, 73, 28),
(1406, 'Nick Scott', 'FS', 21, 71, 28),
(1407, 'Akayleb Evans', 'CB', 29, 74, 28),
(1408, 'Lathan Ransom', 'S', 22, 72, 28),

-- Special Teams
(1409, 'Ryan Fitzgerald', 'K', 10, 71, 28),
(1410, 'Sam Martin', 'P', 6, 73, 28),
(1411, 'J.J. Jansen', 'LS', 44, 74, 28);

-- =====================================
-- Team 29: Detroit Lions
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (29, 'Detroit Lions', 'Detroit', 'Ford Field');

-- =====================================
-- Players for Team 29
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(1412, 'Jared Goff', 'QB', 16, 76, 29),
(1413, 'Kyle Allen', 'QB', 8, 75, 29),

-- Running Backs
(1414, 'Jahmyr Gibbs', 'RB', 0, 69, 29),
(1415, 'David Montgomery', 'RB', 5, 71, 29),
(1416, 'Sione Vaki', 'RB', 33, 71, 29),

-- Wide Receivers
(1417, 'Amon-Ra St. Brown', 'WR', 14, 72, 29),
(1418, 'Jameson Williams', 'WR', 1, 73, 29),
(1419, 'Kalif Raymond', 'WR', 11, 68, 29),
(1420, 'Isaac TeSlaa', 'WR', 18, 76, 29),

-- Tight Ends
(1421, 'Ross Dwelley', 'TE', 82, 77, 29),
(1422, 'Anthony Firkser', 'TE', 86, 74, 29),

-- Offensive Line
(1423, 'Taylor Decker', 'LT', 68, 79, 29),
(1424, 'Kayode Awosika', 'LG', 74, 75, 29),
(1425, 'Graham Glasgow', 'C', 60, 78, 29),
(1426, 'Tate Ratledge', 'RG', 69, 78, 29),
(1427, 'Penei Sewell', 'RT', 58, 77, 29),
(1428, 'Dan Skipper', 'T', 70, 82, 29),

-- Defensive Line / Edge Rushers
(1429, 'Aidan Hutchinson', 'DE', 97, 79, 29),
(1430, 'Marcus Davenport', 'DE', 92, 78, 29),
(1431, 'DJ Reader', 'DT', 98, 75, 29),
(1432, 'Alim McNeill', 'DT', 54, 74, 29),
(1433, 'Tyleik Williams', 'DT', 91, 75, 29),

-- Linebackers
(1434, 'Jack Campbell', 'LB', 46, 77, 29),
(1435, 'Alex Anzalone', 'LB', 34, 75, 29),
(1436, 'Derrick Barnes', 'LB', 55, 72, 29),
(1437, 'Malcolm Rodriguez', 'LB', 44, 71, 29),

-- Defensive Backs
(1438, 'Brian Branch', 'DB', 32, 72, 29),
(1439, 'Kerby Joseph', 'S', 31, 73, 29),
(1440, 'D.J. Reed', 'CB', 4, 69, 29),
(1441, 'Amik Robertson', 'CB', 21, 68, 29),
(1442, 'Avonte Maddox', 'CB', 29, 69, 29),
(1443, 'Rock Ya-Sin', 'CB', 23, 71, 29),

-- Special Teams
(1444, 'Jake Bates', 'K', 39, 70, 29),
(1445, 'Jack Fox', 'P', 3, 74, 29),
(1446, 'Hogan Hatten', 'LS', 49, 73, 29);


-- =====================================
-- Team 30: Minnesota Vikings
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (30, 'Minnesota Vikings', 'Minneapolis', 'U.S. Bank Stadium');

-- =====================================
-- Players for Team 30
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(1447, 'J.J. McCarthy', 'QB', 9, 75, 30),
(1448, 'Sam Howell', 'QB', 8, 73, 30),
(1449, 'Max Brosmer', 'QB', 12, 74, 30),

-- Running Backs
(1450, 'Aaron Jones', 'RB', 33, 69, 30),
(1451, 'Jordan Mason', 'RB', 27, 71, 30),
(1452, 'C.J. Ham', 'FB', 30, 71, 30),

-- Wide Receivers
(1453, 'Justin Jefferson', 'WR', 18, 73, 30),
(1454, 'Jordan Addison', 'WR', 3, 71, 30),
(1455, 'Jalen Nailor', 'WR', 1, 71, 30),
(1456, 'Rondale Moore', 'WR', 4, 67, 30),

-- Tight Ends
(1457, 'T.J. Hockenson', 'TE', 87, 77, 30),
(1458, 'Josh Oliver', 'TE', 84, 77, 30),
(1459, 'Ben Sims', 'TE', 89, 77, 30),

-- Offensive Line
(1460, 'Christian Darrisaw', 'LT', 71, 77, 30),
(1461, 'Donovan Jackson', 'LG', 74, 76, 30),
(1462, 'Ryan Kelly', 'C', 78, 76, 30),
(1463, 'Will Fries', 'RG', 78, 78, 30),
(1464, 'Brian O''Neill', 'RT', 75, 79, 30),
(1465, 'Blake Brandel', 'T', 64, 79, 30),

-- Defensive Line
(1466, 'Jonathan Allen', 'DE', 93, 75, 30),
(1467, 'Javon Hargrave', 'DT', 97, 74, 30),
(1468, 'Tyrion Ingram-Dawkins', 'DT', 90, 77, 30),

-- Linebackers
(1469, 'Jonathan Greenard', 'OLB', 58, 75, 30),
(1470, 'Dallas Turner', 'OLB', 15, 75, 30),
(1471, 'Blake Cashman', 'ILB', 51, 73, 30),
(1472, 'Ivan Pace Jr.', 'ILB', 0, 70, 30),
(1473, 'Andrew Van Ginkel', 'OLB', 43, 76, 30),

-- Defensive Backs
(1474, 'Byron Murphy Jr.', 'CB', 7, 71, 30),
(1475, 'Harrison Smith', 'S', 22, 74, 30),
(1476, 'Isaiah Rodgers', 'CB', 2, 70, 30),
(1477, 'Jeff Okudah', 'CB', 8, 73, 30),
(1478, 'Josh Metellus', 'S', 44, 71, 30),
(1479, 'Theo Jackson', 'S', 26, 73, 30),

-- Special Teams
(1480, 'Will Reichard', 'K', 16, 73, 30),
(1481, 'Ryan Wright', 'P', 17, 75, 30),
(1482, 'Andrew DePaola', 'LS', 42, 73, 30);

-- =====================================
-- Team 31: New England Patriots
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (31, 'New England Patriots', 'Foxborough', 'Gillette Stadium');

-- =====================================
-- Players for Team 31
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(1483, 'Jacoby Brissett', 'QB', 7, 75, 31),
(1484, 'Drake Maye', 'QB', 10, 76, 31),
(1485, 'Bailey Zappe', 'QB', 4, 73, 31),

-- Running Backs
(1486, 'Rhamondre Stevenson', 'RB', 38, 72, 31),
(1487, 'Antonio Gibson', 'RB', 23, 73, 31),
(1488, 'Kevin Harris', 'RB', 36, 71, 31),

-- Wide Receivers
(1489, 'DeMario Douglas', 'WR', 81, 70, 31),
(1490, 'Kendrick Bourne', 'WR', 84, 73, 31),
(1491, 'K.J. Osborn', 'WR', 1, 71, 31),
(1492, 'Jalen Reagor', 'WR', 83, 71, 31),

-- Tight Ends
(1493, 'Hunter Henry', 'TE', 85, 77, 31),
(1494, 'Austin Hooper', 'TE', 86, 75, 31),

-- Offensive Line
(1495, 'Chukwuma Okorafor', 'LT', 76, 78, 31),
(1496, 'Cole Strange', 'LG', 69, 75, 31),
(1497, 'David Andrews', 'C', 60, 75, 31),
(1498, 'Sidy Sow', 'RG', 61, 78, 31),
(1499, 'Mike Onwenu', 'RT', 71, 76, 31),
(1500, 'Layden Robinson', 'G', 79, 76, 31),

-- Defensive Line
(1501, 'Christian Barmore', 'DT', 97, 75, 31),
(1502, 'Davon Godchaux', 'DT', 92, 76, 31),
(1503, 'Deatrich Wise Jr.', 'DE', 91, 77, 31),

-- Linebackers
(1504, 'Matthew Judon', 'OLB', 9, 75, 31),
(1505, 'Ja''Whaun Bentley', 'ILB', 8, 74, 31),
(1506, 'Jahlani Tavai', 'LB', 41, 74, 31),
(1507, 'Keion White', 'OLB', 51, 77, 31),
(1508, 'Marte Mapu', 'LB/S', 30, 75, 31),

-- Defensive Backs
(1509, 'Christian Gonzalez', 'CB', 19, 74, 31),
(1510, 'Kyle Dugger', 'S', 23, 75, 31),
(1511, 'Marcus Jones', 'CB', 25, 68, 31),
(1512, 'Jabril Peppers', 'S', 5, 71, 31),
(1513, 'Alex Austin', 'CB', 37, 73, 31),

-- Special Teams
(1514, 'Chad Ryland', 'K', 37, 72, 31),
(1515, 'Bryce Baringer', 'P', 17, 74, 31),
(1516, 'Joe Cardona', 'LS', 49, 74, 31);


-- =====================================
-- Team 32: New York Giants
-- =====================================
INSERT INTO teams (team_id, name, city, stadium)
VALUES (32, 'New York Giants', 'East Rutherford', 'MetLife Stadium');

-- =====================================
-- Players for Team 32
-- =====================================
INSERT INTO players (player_id, name, position, jersey_number, height_inches, team_id) VALUES
-- Quarterbacks
(1517, 'Drew Lock', 'QB', 2, 75, 32),
(1518, 'Daniel Jones', 'QB', 8, 77, 32),
(1519, 'Tommy DeVito', 'QB', 15, 74, 32),

-- Running Backs
(1520, 'Devin Singletary', 'RB', 26, 70, 32),
(1521, 'Eric Gray', 'RB', 20, 70, 32),
(1522, 'Jashaun Corbin', 'RB', 34, 71, 32),

-- Wide Receivers
(1523, 'Malik Nabers', 'WR', 0, 72, 32),
(1524, 'Darius Slayton', 'WR', 86, 75, 32),
(1525, 'Wan''Dale Robinson', 'WR', 17, 68, 32),
(1526, 'Jalin Hyatt', 'WR', 13, 73, 32),

-- Tight Ends
(1527, 'Darren Waller', 'TE', 12, 79, 32),
(1528, 'Theo Johnson', 'TE', 84, 78, 32),
(1529, 'Daniel Bellinger', 'TE', 82, 76, 32),

-- Offensive Line
(1530, 'Andrew Thomas', 'LT', 78, 77, 32),
(1531, 'Aaron Stinnie', 'LG', 64, 75, 32),
(1532, 'John Michael Schmitz', 'C', 60, 75, 32),
(1533, 'Marcus McKethan', 'RG', 73, 77, 32),
(1534, 'Evan Neal', 'RT', 76, 78, 32),
(1535, 'Joshua Ezeudu', 'G', 75, 77, 32),

-- Defensive Line
(1536, 'Dexter Lawrence', 'DT', 97, 75, 32),
(1537, 'Rakeem Nunez-Roches', 'DT', 93, 74, 32),
(1538, 'Kayvon Thibodeaux', 'OLB', 5, 75, 32),

-- Linebackers
(1539, 'Brian Burns', 'OLB', 0, 75, 32),
(1540, 'Bobby Okereke', 'ILB', 58, 75, 32),
(1541, 'Micah McFadden', 'ILB', 41, 74, 32),
(1542, 'Carter Coughlin', 'OLB', 47, 75, 32),

-- Defensive Backs
(1543, 'Deonte Banks', 'CB', 25, 73, 32),
(1544, 'Javaris Davis', 'CB', 33, 70, 32),
(1545, 'Jason Pinnock', 'S', 28, 73, 32),
(1546, 'Tyler Nubin', 'S', 31, 74, 32),
(1547, 'Cor''Dale Flott', 'CB', 24, 72, 32),

-- Special Teams
(1548, 'Graham Gano', 'K', 5, 73, 32),
(1549, 'Jamie Gillan', 'P', 6, 76, 32),
(1550, 'Casey Kreiter', 'LS', 51, 74, 32);
