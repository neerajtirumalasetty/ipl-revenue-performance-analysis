INSERT INTO performance (team_id, season_id, matches_played, matches_won)
VALUES
((SELECT team_id FROM teams WHERE team_name='Gujarat Titans'), 6, 14, 10),
 ((SELECT team_id FROM teams WHERE team_name='Chennai Super Kings'), 6, 14, 8),
 ((SELECT team_id FROM teams WHERE team_name='Lucknow Super Giants'), 6, 14, 8),
 ((SELECT team_id FROM teams WHERE team_name='Mumbai Indians'), 6, 14, 8),
 ((SELECT team_id FROM teams WHERE team_name='Rajasthan Royals'), 6, 14, 7),
 ((SELECT team_id FROM teams WHERE team_name='Royal Challengers Bengaluru'), 6, 14, 7),
 ((SELECT team_id FROM teams WHERE team_name='Kolkata Knight Riders'), 6, 14, 6),
 ((SELECT team_id FROM teams WHERE team_name='Punjab Kings'), 6, 14, 6),
 ((SELECT team_id FROM teams WHERE team_name='Delhi Capitals'), 6, 14, 5),
 ((SELECT team_id FROM teams WHERE team_name='Sunrisers Hyderabad'), 6, 14, 4);

/* 2013 Performance Data */
INSERT INTO performance 
(team_id, season_id, matches_played, matches_won)
VALUES
((SELECT team_id FROM teams WHERE team_name='Mumbai Indians'), 9, 16, 11),
((SELECT team_id FROM teams WHERE team_name='Chennai Super Kings'), 9, 16, 12),
((SELECT team_id FROM teams WHERE team_name='Rajasthan Royals'), 9, 16, 10),
((SELECT team_id FROM teams WHERE team_name='Sunrisers Hyderabad'), 9, 16, 10),
((SELECT team_id FROM teams WHERE team_name='Royal Challengers Bengaluru'), 9, 16, 9),
((SELECT team_id FROM teams WHERE team_name='Punjab Kings'), 9, 16, 8),
((SELECT team_id FROM teams WHERE team_name='Kolkata Knight Riders'), 9, 16, 6),
((SELECT team_id FROM teams WHERE team_name='Delhi Capitals'), 9, 16, 3);

/* 2014 */
INSERT INTO performance
(team_id, season_id, matches_played, matches_won)
VALUES
((SELECT team_id FROM teams WHERE team_name='Punjab Kings'), 10, 14, 11),
((SELECT team_id FROM teams WHERE team_name='Kolkata Knight Riders'), 10, 14, 9),
((SELECT team_id FROM teams WHERE team_name='Chennai Super Kings'), 10, 14, 9),
((SELECT team_id FROM teams WHERE team_name='Mumbai Indians'), 10, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Rajasthan Royals'), 10, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Sunrisers Hyderabad'), 10, 14, 6),
((SELECT team_id FROM teams WHERE team_name='Royal Challengers Bengaluru'), 10, 14, 5),
((SELECT team_id FROM teams WHERE team_name='Delhi Capitals'), 10, 14, 2);

/* 2015 */
INSERT INTO performance
(team_id, season_id, matches_played, matches_won)
VALUES
((SELECT team_id FROM teams WHERE team_name='Chennai Super Kings'), 11, 14, 9),
((SELECT team_id FROM teams WHERE team_name='Mumbai Indians'), 11, 14, 8),
((SELECT team_id FROM teams WHERE team_name='Royal Challengers Bengaluru'), 11, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Rajasthan Royals'), 11, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Kolkata Knight Riders'), 11, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Sunrisers Hyderabad'), 11, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Delhi Capitals'), 11, 14, 5),
((SELECT team_id FROM teams WHERE team_name='Punjab Kings'), 11, 14, 3);

/* 2016 */
INSERT INTO performance
(team_id, season_id, matches_played, matches_won)
VALUES
((SELECT team_id FROM teams WHERE team_name='Sunrisers Hyderabad'), 12, 14, 8),
((SELECT team_id FROM teams WHERE team_name='Royal Challengers Bengaluru'), 12, 14, 8),
((SELECT team_id FROM teams WHERE team_name='Kolkata Knight Riders'), 12, 14, 8),
((SELECT team_id FROM teams WHERE team_name='Mumbai Indians'), 12, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Delhi Capitals'), 12, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Punjab Kings'), 12, 14, 4),
((SELECT team_id FROM teams WHERE team_name='Chennai Super Kings'), 12, 0, 0),
((SELECT team_id FROM teams WHERE team_name='Rajasthan Royals'), 12, 0, 0);

/* 2017 */
INSERT INTO performance
(team_id, season_id, matches_played, matches_won)
VALUES
((SELECT team_id FROM teams WHERE team_name='Mumbai Indians'), 13, 14, 10),
((SELECT team_id FROM teams WHERE team_name='Sunrisers Hyderabad'), 13, 14, 8),
((SELECT team_id FROM teams WHERE team_name='Kolkata Knight Riders'), 13, 14, 8),
((SELECT team_id FROM teams WHERE team_name='Punjab Kings'), 13, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Delhi Capitals'), 13, 14, 6),
((SELECT team_id FROM teams WHERE team_name='Royal Challengers Bengaluru'), 13, 14, 3),
((SELECT team_id FROM teams WHERE team_name='Chennai Super Kings'), 13, 0, 0),
((SELECT team_id FROM teams WHERE team_name='Rajasthan Royals'), 13, 0, 0);

/* 2018 */
INSERT INTO performance (team_id, season_id, matches_played, matches_won) VALUES
((SELECT team_id FROM teams WHERE team_name='Mumbai Indians'), 1, 14, 6),
((SELECT team_id FROM teams WHERE team_name='Chennai Super Kings'), 1, 14, 9),
((SELECT team_id FROM teams WHERE team_name='Rajasthan Royals'), 1, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Sunrisers Hyderabad'), 1, 14, 9),
((SELECT team_id FROM teams WHERE team_name='Royal Challengers Bengaluru'), 1, 14, 6),
((SELECT team_id FROM teams WHERE team_name='Kolkata Knight Riders'), 1, 14, 8),
((SELECT team_id FROM teams WHERE team_name='Delhi Capitals'), 1, 14, 5),
((SELECT team_id FROM teams WHERE team_name='Punjab Kings'), 1, 14, 6);

/* 2019 */
INSERT INTO performance (team_id, season_id, matches_played, matches_won) VALUES
((SELECT team_id FROM teams WHERE team_name='Mumbai Indians'), 2, 14, 9),
((SELECT team_id FROM teams WHERE team_name='Chennai Super Kings'), 2, 14, 9),
((SELECT team_id FROM teams WHERE team_name='Delhi Capitals'), 2, 14, 9),
((SELECT team_id FROM teams WHERE team_name='Sunrisers Hyderabad'), 2, 14, 6),
((SELECT team_id FROM teams WHERE team_name='Kolkata Knight Riders'), 2, 14, 6),
((SELECT team_id FROM teams WHERE team_name='Punjab Kings'), 2, 14, 6),
((SELECT team_id FROM teams WHERE team_name='Rajasthan Royals'), 2, 14, 5),
((SELECT team_id FROM teams WHERE team_name='Royal Challengers Bengaluru'), 2, 14, 5);

/* 2020 */
INSERT INTO performance (team_id, season_id, matches_played, matches_won) VALUES
((SELECT team_id FROM teams WHERE team_name='Mumbai Indians'), 3, 14, 9),
((SELECT team_id FROM teams WHERE team_name='Delhi Capitals'), 3, 14, 8),
((SELECT team_id FROM teams WHERE team_name='Sunrisers Hyderabad'), 3, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Royal Challengers Bengaluru'), 3, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Kolkata Knight Riders'), 3, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Chennai Super Kings'), 3, 14, 6),
((SELECT team_id FROM teams WHERE team_name='Rajasthan Royals'), 3, 14, 6),
((SELECT team_id FROM teams WHERE team_name='Punjab Kings'), 3, 14, 6);

/* 2021 */
INSERT INTO performance (team_id, season_id, matches_played, matches_won) VALUES
((SELECT team_id FROM teams WHERE team_name='Delhi Capitals'), 4, 14, 10),
((SELECT team_id FROM teams WHERE team_name='Chennai Super Kings'), 4, 14, 9),
((SELECT team_id FROM teams WHERE team_name='Royal Challengers Bengaluru'), 4, 14, 9),
((SELECT team_id FROM teams WHERE team_name='Kolkata Knight Riders'), 4, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Mumbai Indians'), 4, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Punjab Kings'), 4, 14, 6),
((SELECT team_id FROM teams WHERE team_name='Rajasthan Royals'), 4, 14, 5),
((SELECT team_id FROM teams WHERE team_name='Sunrisers Hyderabad'), 4, 14, 3);

/* 2022 */
INSERT INTO performance (team_id, season_id, matches_played, matches_won) VALUES
((SELECT team_id FROM teams WHERE team_name='Gujarat Titans'), 5, 14, 10),
((SELECT team_id FROM teams WHERE team_name='Rajasthan Royals'), 5, 14, 9),
((SELECT team_id FROM teams WHERE team_name='Lucknow Super Giants'), 5, 14, 9),
((SELECT team_id FROM teams WHERE team_name='Royal Challengers Bengaluru'), 5, 14, 8),
((SELECT team_id FROM teams WHERE team_name='Delhi Capitals'), 5, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Punjab Kings'), 5, 14, 7),
((SELECT team_id FROM teams WHERE team_name='Kolkata Knight Riders'), 5, 14, 6),
((SELECT team_id FROM teams WHERE team_name='Sunrisers Hyderabad'), 5, 14, 6),
((SELECT team_id FROM teams WHERE team_name='Chennai Super Kings'), 5, 14, 4),
((SELECT team_id FROM teams WHERE team_name='Mumbai Indians'), 5, 14, 4);