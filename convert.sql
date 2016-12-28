#Before this run the database update in the contao backend
#Run after updating the database
INSERT INTO tl_beachcup_member_team (tstamp, member_id, team_id)
  SELECT
    unix_timestamp()   AS tstamp,
    player_1.member_id AS member_id,
    player_1.team_id   AS team_id
  FROM
    (SELECT
       map.member_id AS member_id,
       team.id       AS team_id
     FROM tl_beachcup_member_player AS map
       JOIN tl_beachcup_player AS player ON player.id = map.player_id
       JOIN tl_beachcup_team AS team ON team.player_1 = player.id)
      AS player_1
    JOIN
    (SELECT
       map.member_id AS member_id,
       team.id       AS team_id
     FROM tl_beachcup_member_player AS map
       JOIN tl_beachcup_player AS player ON player.id = map.player_id
       JOIN tl_beachcup_team AS team ON team.player_2 = player.id)
      AS player_2 ON player_1.team_id = player_2.team_id AND player_1.member_id = player_2.member_id
  GROUP BY player_1.team_id;

INSERT INTO tl_beachcup_member_registration (tstamp, member_id, registration_id)
  SELECT
    unix_timestamp()   AS tstamp,
    player_1.member_id AS member_id,
    registration.id    AS registration_id
  FROM tl_beachcup_registration AS registration
    JOIN tl_beachcup_registration_state AS state ON state.id = registration.state_id
    JOIN tl_beachcup_tournament AS tournament ON tournament.id = registration.tournament_id
    JOIN tl_beachcup_stage AS stage ON stage.id = tournament.stage_id
    JOIN (SELECT
            map.member_id                            AS member_id,
            team.id                                  AS team_id,
            CONCAT(player.name, ' ', player.surname) AS name
          FROM tl_beachcup_member_player AS map
            JOIN tl_beachcup_player AS player ON player.id = map.player_id
            JOIN tl_beachcup_team AS team ON team.player_1 = player.id)
      AS player_1 ON player_1.team_id = registration.team_id
    JOIN (SELECT
            map.member_id                            AS member_id,
            team.id                                  AS team_id,
            CONCAT(player.name, ' ', player.surname) AS name
          FROM tl_beachcup_member_player AS map
            JOIN tl_beachcup_player AS player ON player.id = map.player_id
            JOIN tl_beachcup_team AS team ON team.player_2 = player.id)
      AS player_2 ON player_1.team_id = player_2.team_id AND player_1.member_id = player_2.member_id
  GROUP BY player_1.team_id;