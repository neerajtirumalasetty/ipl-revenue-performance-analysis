/* 2014 */
INSERT INTO financials
(team_id, season_id, media_revenue, sponsorship_revenue, ticket_revenue, brand_value)
SELECT
    team_id,
    (SELECT season_id FROM seasons WHERE season_year = 2014),
    ROUND(media_revenue * 1.08, 2),
    ROUND(sponsorship_revenue * 1.07, 2),
    ROUND(ticket_revenue * 1.08, 2),
    ROUND(brand_value * 1.06, 2)
FROM financials
WHERE season_id = 9;

/* 2015 */
INSERT INTO financials
(team_id, season_id, media_revenue, sponsorship_revenue, ticket_revenue, brand_value)
SELECT
    team_id,
    (SELECT season_id FROM seasons WHERE season_year = 2015),
    ROUND(media_revenue * 1.08, 2),
    ROUND(sponsorship_revenue * 1.07, 2),
    ROUND(ticket_revenue * 1.08, 2),
    ROUND(brand_value * 1.06, 2)
FROM financials
WHERE season_id = (SELECT season_id FROM seasons WHERE season_year = 2014);

/* 2016 */
INSERT INTO financials
(team_id, season_id, media_revenue, sponsorship_revenue, ticket_revenue, brand_value)
SELECT
    team_id,
    (SELECT season_id FROM seasons WHERE season_year = 2016),
    ROUND(media_revenue * 1.12, 2),
    ROUND(sponsorship_revenue * 1.10, 2),
    ROUND(ticket_revenue * 1.10, 2),
    ROUND(brand_value * 1.08, 2)
FROM financials
WHERE season_id = (SELECT season_id FROM seasons WHERE season_year = 2015);

/* 2017 */
INSERT INTO financials
(team_id, season_id, media_revenue, sponsorship_revenue, ticket_revenue, brand_value)
SELECT
    team_id,
    (SELECT season_id FROM seasons WHERE season_year = 2017),
    ROUND(media_revenue * 1.12, 2),
    ROUND(sponsorship_revenue * 1.10, 2),
    ROUND(ticket_revenue * 1.10, 2),
    ROUND(brand_value * 1.08, 2)
FROM financials
WHERE season_id = (SELECT season_id FROM seasons WHERE season_year = 2016);

/* 2018 */
INSERT INTO financials
(team_id, season_id, media_revenue, sponsorship_revenue, ticket_revenue, brand_value)
SELECT
    team_id,
    (SELECT season_id FROM seasons WHERE season_year = 2018),
    ROUND(media_revenue * 1.12, 2),
    ROUND(sponsorship_revenue * 1.10, 2),
    ROUND(ticket_revenue * 1.10, 2),
    ROUND(brand_value * 1.08, 2)
FROM financials
WHERE season_id = (SELECT season_id FROM seasons WHERE season_year = 2017);

/* 2019 */
INSERT INTO financials
(team_id, season_id, media_revenue, sponsorship_revenue, ticket_revenue, brand_value)
SELECT
    team_id,
    (SELECT season_id FROM seasons WHERE season_year = 2019),
    ROUND(media_revenue * 1.12, 2),
    ROUND(sponsorship_revenue * 1.10, 2),
    ROUND(ticket_revenue * 1.10, 2),
    ROUND(brand_value * 1.08, 2)
FROM financials
WHERE season_id = (SELECT season_id FROM seasons WHERE season_year = 2018);

/* covid phase */

/* 2020 */
INSERT INTO financials
(team_id, season_id, media_revenue, sponsorship_revenue, ticket_revenue, brand_value)
SELECT
    team_id,
    (SELECT season_id FROM seasons WHERE season_year = 2020),
    ROUND(media_revenue * 1.05, 2),
    ROUND(sponsorship_revenue * 0.95, 2),
    ROUND(ticket_revenue * 0.50, 2),
    ROUND(brand_value * 1.03, 2)
FROM financials
WHERE season_id = (SELECT season_id FROM seasons WHERE season_year = 2019);

/* 2021 */
INSERT INTO financials
(team_id, season_id, media_revenue, sponsorship_revenue, ticket_revenue, brand_value)
SELECT
    team_id,
    (SELECT season_id FROM seasons WHERE season_year = 2021),
    ROUND(media_revenue * 1.05, 2),
    ROUND(sponsorship_revenue * 0.95, 2),
    ROUND(ticket_revenue * 0.50, 2),
    ROUND(brand_value * 1.03, 2)
FROM financials
WHERE season_id = (SELECT season_id FROM seasons WHERE season_year = 2020);

/* post-covid */

/* 2022 */
INSERT INTO financials
(team_id, season_id, media_revenue, sponsorship_revenue, ticket_revenue, brand_value)
SELECT
    f2019.team_id,
    (SELECT season_id FROM seasons WHERE season_year = 2022),
    ROUND(f2021.media_revenue * 1.25, 2),
    ROUND(f2021.sponsorship_revenue * 1.12, 2),
    ROUND(f2019.ticket_revenue * 1.05, 2),
    ROUND(f2021.brand_value * 1.10, 2)
FROM financials f2021
JOIN financials f2019 
    ON f2019.team_id = f2021.team_id
WHERE f2021.season_id = (SELECT season_id FROM seasons WHERE season_year = 2021)
AND f2019.season_id = (SELECT season_id FROM seasons WHERE season_year = 2019);

/* new teams */
INSERT INTO financials
(team_id, season_id, media_revenue, sponsorship_revenue, ticket_revenue, brand_value)
VALUES
((SELECT team_id FROM teams WHERE team_name='Gujarat Titans'),
 (SELECT season_id FROM seasons WHERE season_year=2022),
 260, 120, 70, 720),

((SELECT team_id FROM teams WHERE team_name='Lucknow Super Giants'),
 (SELECT season_id FROM seasons WHERE season_year=2022),
 255, 115, 65, 680);



