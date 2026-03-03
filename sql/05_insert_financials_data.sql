INSERT INTO financials 
(team_id, season_id, media_revenue, sponsorship_revenue, ticket_revenue, brand_value)
VALUES
((SELECT team_id FROM teams WHERE team_name='Gujarat Titans'), 6, 240, 130, 70, 750),
((SELECT team_id FROM teams WHERE team_name='Chennai Super Kings'), 6, 240, 170, 90, 1100),
((SELECT team_id FROM teams WHERE team_name='Lucknow Super Giants'), 6, 240, 120, 65, 700),
((SELECT team_id FROM teams WHERE team_name='Mumbai Indians'), 6, 240, 180, 95, 1200),
((SELECT team_id FROM teams WHERE team_name='Rajasthan Royals'), 6, 220, 110, 60, 650),
((SELECT team_id FROM teams WHERE team_name='Royal Challengers Bengaluru'), 6, 220, 175, 85, 1050),
((SELECT team_id FROM teams WHERE team_name='Kolkata Knight Riders'), 6, 220, 140, 75, 900),
((SELECT team_id FROM teams WHERE team_name='Punjab Kings'), 6, 220, 105, 55, 550),
((SELECT team_id FROM teams WHERE team_name='Delhi Capitals'), 6, 220, 115, 60, 600),
((SELECT team_id FROM teams WHERE team_name='Sunrisers Hyderabad'), 6, 220, 110, 58, 580);