/* ============================================================
   1. 2023 Team Revenue & Performance Overview
   ============================================================ */
SELECT
    t.team_name,
    s.season_year,
    p.matches_won,
    (f.media_revenue + f.sponsorship_revenue + f.ticket_revenue) AS total_revenue,
    ROUND(
        (f.media_revenue + f.sponsorship_revenue + f.ticket_revenue) 
        / NULLIF(p.matches_won, 0), 
        2
    ) AS revenue_per_win
FROM performance p
JOIN teams t 
    ON p.team_id = t.team_id
JOIN seasons s 
    ON p.season_id = s.season_id
JOIN financials f 
    ON f.team_id = p.team_id
    AND f.season_id = p.season_id
WHERE s.season_year = 2023
ORDER BY total_revenue DESC;

/* ============================================================
   2. 2023 Correlation Analysis – Wins vs Revenue
   ============================================================ */
SELECT 
    CORR(p.matches_won, 
         (f.media_revenue + f.sponsorship_revenue + f.ticket_revenue)
    ) AS win_revenue_correlation
FROM performance p
JOIN financials f 
    ON f.team_id = p.team_id
    AND f.season_id = p.season_id
JOIN seasons s 
    ON s.season_id = p.season_id
WHERE s.season_year = 2023;

/* ============================================================
   3. 2023 Correlation Analysis – Brand Value vs Revenue
   ============================================================ */
SELECT 
    CORR(f.brand_value, 
         (f.media_revenue + f.sponsorship_revenue + f.ticket_revenue)
    ) AS brand_revenue_correlation
FROM financials f
JOIN seasons s 
    ON s.season_id = f.season_id
WHERE s.season_year = 2023;

/* ============================================================
   4. 2013 Correlation Analysis – Wins vs Revenue
   ============================================================ */
SELECT 
    CORR(p.matches_won,
         (f.media_revenue + f.sponsorship_revenue + f.ticket_revenue)
    ) AS win_revenue_corr_2013
FROM performance p
JOIN financials f
    ON f.team_id = p.team_id
    AND f.season_id = p.season_id
JOIN seasons s
    ON s.season_id = p.season_id
WHERE s.season_year = 2013;

/* ============================================================
   5. 2013 Correlation Analysis – Brand Value vs Revenue
   ============================================================ */
SELECT 
    CORR(f.brand_value,
         (f.media_revenue + f.sponsorship_revenue + f.ticket_revenue)
    ) AS brand_revenue_corr_2013
FROM financials f
JOIN seasons s
    ON s.season_id = f.season_id
WHERE s.season_year = 2013;

/* ============================================================
   6. Financial Data Validation – Team Count Per Season
   ============================================================ */
SELECT season_year, COUNT(*)
FROM financials f
JOIN seasons s ON s.season_id = f.season_id
GROUP BY season_year
ORDER BY season_year;

/* ============================================================
   7. League Revenue Trend (2013–2023)
   ============================================================ */
SELECT 
    s.season_year,
    ROUND(SUM(f.media_revenue + f.sponsorship_revenue + f.ticket_revenue), 2) 
        AS league_total_revenue
FROM financials f
JOIN seasons s ON s.season_id = f.season_id
GROUP BY s.season_year
ORDER BY s.season_year;

/* ============================================================
   8. Multi-Year Correlation – Wins vs Revenue (2013–2023)
   ============================================================ */
SELECT 
    CORR(p.matches_won,
         (f.media_revenue + f.sponsorship_revenue + f.ticket_revenue)
    ) AS win_revenue_corr_all_years
FROM performance p
JOIN financials f
    ON f.team_id = p.team_id
    AND f.season_id = p.season_id;

/* ============================================================
   9. Multi-Year Correlation – Brand Value vs Revenue (2013–2023)
   ============================================================ */
SELECT 
    CORR(f.brand_value,
         (f.media_revenue + f.sponsorship_revenue + f.ticket_revenue)
    ) AS brand_revenue_corr_all_years
FROM financials f;

/* ============================================================
   10. Analytical View Inspection – Consolidated Dataset
   ============================================================ */
SELECT * 
FROM vw_team_season_analysis
ORDER BY season_year, team_name;

/* ============================================================
   11. Long-Term Franchise Performance & Revenue Averages
   ============================================================ */
SELECT 
    team_name,
    ROUND(AVG(matches_won),2) AS avg_wins,
    ROUND(AVG(total_revenue),2) AS avg_revenue
FROM vw_team_season_analysis
GROUP BY team_name
ORDER BY avg_revenue DESC;

/* ============================================================
   12. Post-Expansion Analysis (2022–2023)
   ============================================================ */
SELECT 
    team_name,
    ROUND(AVG(matches_won),2) AS avg_wins_recent,
    ROUND(AVG(total_revenue),2) AS avg_revenue_recent
FROM vw_team_season_analysis
WHERE season_year >= 2022
GROUP BY team_name
ORDER BY avg_revenue_recent DESC;

/* ============================================================
   13. Monetization Efficiency – Average Revenue Per Win
   ============================================================ */
SELECT 
    team_name,
    ROUND(AVG(revenue_per_win), 2) AS avg_revenue_per_win
FROM vw_team_season_analysis
GROUP BY team_name
ORDER BY avg_revenue_per_win DESC;