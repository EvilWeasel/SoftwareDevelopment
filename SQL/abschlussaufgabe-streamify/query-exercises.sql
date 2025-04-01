/*
### 5. Abfragen
- Erstelle die folgenden SQL-Abfragen, um zu zeigen, dass die Datenbank wie gewünscht funktioniert:
- **SELECT**: 
1. Liste alle Songs eines bestimmten Albums, sortiert nach Titel.
2. Finde alle Playlists eines bestimmten Benutzers, inklusive der Anzahl der Songs in jeder Playlist.
3. Zeige den Interpreten, welcher am häufigsten in Playlists vorkommt.
- **UPDATE**:
1. Aktualisiere den Titel eines Albums.
2. Setze den Premium-Status eines Benutzers auf `TRUE`, falls der Benutzer eine Playlist mit mehr als 5 Songs besitzt.
- **DELETE**:
1. Lösche alle Playlists, die keinen Song enthalten.
2. Lösche alle Songs, die nicht in einer Playlist enthalten sind.
 */
-- ** Aufgaben Select **
-- 1. Liste alle Songs eines bestimmten Albums, sortiert nach Titel.
SELECT
  song.title,
  song_length,
  song.release_date,
  album.title,
  album.genre,
  album.release_date
FROM
  song
  JOIN song_album ON song.id = song_album.song_id
  JOIN album ON song_album.album_id = album.id
WHERE
  album.title = "Doomsday Disco"
ORDER BY
  song.title ASC;

-- 2. Finde alle Playlists eines bestimmten Benutzers, inklusive der Anzahl der Songs in jeder Playlist.
SELECT
  au.ID AS "User ID",
  au.username AS "Username",
  p.ID AS "Playlist ID",
  p.title AS "Playlist Title",
  COUNT(s.ID) AS "Songs in Playlist"
FROM
  app_user AS au
  JOIN playlist_app_user AS p_au ON au.ID = p_au.app_user_ID
  JOIN playlist AS p ON p.ID = p_au.playlist_ID
  LEFT JOIN song_playlist AS s_p ON p.ID = s_p.playlist_ID
  LEFT JOIN song AS s ON s.ID = s_p.song_ID
WHERE
  au.ID = 1
GROUP BY
  p.ID;

-- Überprüfung
SELECT
  p.id,
  title,
  COUNT(sp.song_id)
FROM
  playlist AS p
  JOIN song_playlist AS sp ON p.id = sp.playlist_id
WHERE
  p.id = 5;

-- Alternative
SELECT
  p.id AS Playlist_ID,
  p.title AS Playlist_Title,
  COUNT(ps.song_id) AS Number_of_Songs
FROM
  app_user AS u
  JOIN playlist_app_user AS up ON u.id = up.app_user_ID
  JOIN playlist AS p ON up.playlist_id = p.id
  LEFT JOIN song_playlist ps ON p.id = ps.playlist_id
WHERE
  u.id = 1
GROUP BY
  p.id,
  p.title;

-- 3. Zeige den Interpreten, welcher am häufigsten in Playlists vorkommt.
SELECT
  artist.id AS "Artist id",
  artist.alias AS "Artist Name",
  COUNT(song_playlist.song_id) AS "Song Count"
FROM
  artist
  JOIN artist_song ON artist.id = artist_song.artist_id
  JOIN song ON song.id = artist_song.song_id
  JOIN song_playlist ON song.id = song_playlist.song_id
GROUP BY
  artist.id
ORDER BY
  `Song Count` DESC
LIMIT
  1;

-- Interpreten, die am häufigsten in Playlists vorkommen
SELECT
  I.Kuenstlername,
  COUNT(*) AS AnzahlPlaylists
FROM
  Interpret I
  JOIN Song S ON I.InterpretID = S.InterpretID
  JOIN PlaylistSongs PS ON S.SongID = PS.SongID
GROUP BY
  I.InterpretID
ORDER BY
  AnzahlPlaylists DESC
LIMIT
  1;

-- UPDATE
-- 1. Aktualisiere den Titel eines Albums.
UPDATE album
SET
  title = 'Shrek_is_Love'
WHERE
  id = 1;

-- 2. Setze den Premium-Status eines Benutzers auf `TRUE`, falls der Benutzer eine Playlist mit mehr als 5 Songs besitzt.
--Christoph
UPDATE app_user
SET
  premium = TRUE
WHERE
  app_user.username IN (
    SELECT
      app_user.username
    FROM
      app_user
      JOIN playlist_app_user ON playlist_app_user.app_user_id = app_user.id
      JOIN playlist ON playlist.ID = playlist_app_user.playlist_id
      JOIN song_playlist ON song_playlist.playlist_id = playlist.id
    WHERE
      playlist_app_user.is_creator = TRUE
    GROUP BY
      app_user.id,
      playlist.id
    HAVING
      COUNT(song_playlist.song_id) > 12
  );

-- Jonas
UPDATE users
SET
  premium = 1
WHERE
  username IN (
    SELECT
      u.username
    FROM
      USERS AS u
      JOIN user_playlists AS up ON up.user_ID = u.id
      JOIN playlists_songs AS ps ON ps.playlist_ID = up.playlist_ID
    WHERE
      up.is_creator = 1
    GROUP BY
      u.id
    HAVING
      COUNT(ps.playlist_ID) > 5
  );

-- Alex G. 
UPDATE Benutzer
SET
  PremiumStatus = TRUE
WHERE
  BenutzerID IN (
    SELECT
      P.EigentümerID
    FROM
      Playlist P
      JOIN PlaylistSongs PS ON P.PlaylistID = PS.PlaylistID
    GROUP BY
      P.EigentümerID,
      P.PlaylistID
    HAVING
      COUNT(PS.SongID) > 5
  );

-- 1. Lösche alle Playlists, die keinen Song enthalten.
-- Yaroslav
DELETE FROM saved_playlists
WHERE
  playlist_id IN (
    SELECT
      saved_playlists.playlist_id
    FROM
      saved_playlists
      LEFT JOIN songs_playlists ON saved_playlists.playlist_id = songs_playlists.playlist_id
    WHERE
      songs_playlists.playlist_id IS NULL
  );

-- Jonas
DELETE FROM playlists AS p
WHERE
  NOT EXISTS (
    SELECT
      *
    FROM
      playlists_songs AS ps
    WHERE
      ps.playlist_ID = p.id
  );

-- 2. Lösche alle Songs, die nicht in einer Playlist enthalten sind.

DELETE FROM Songs AS s
WHERE
  NOT EXISTS (
    SELECT
      *
    FROM
      Playlists_Songs AS ps
    WHERE
      ps.song_ID = s.ID
  );

SET
  Foreign_key_checks = 0;

DELETE FROM songs
WHERE
  songs.id IN (
    SELECT
      songs.id
    FROM
      songs
      LEFT JOIN songs_playlist ON songs.id = songs_playlist.songs_id
    WHERE
      songs_playlist.songs_id IS NULL
  );

SET
  Foreign_KEY_Checks = 1;

DELETE FROM song
WHERE
  id NOT IN (
    SELECT DISTINCT
      song_id
    FROM
      song_playlist
  );

-- Zusatzaufgabe 
-- 3. Zeige alle Benutzer, die unter sich mindestens eine Playlist teilen, aber keine eigene Playlist besitzen
-- eg. User 1 hört Playlist 4, die ihm nicht gehört und User 2 hört Playlist 4, welche ihm auch nicht gehört. Beide User haben keine Playlist, deshalb werden sie ausgegeben
 
 SELECT
	u.id,
	u.username
FROM
	app_user as u
WHERE EXISTS (
	SELECT
		*
	FROM
		playlist_app_user as up
		JOIN playlist as p ON up.playlist_id = p.id
	WHERE
		up.app_user_id = u.id
		AND up.is_creator = 0  
)
AND NOT EXISTS (
	SELECT
		*
	FROM
		playlist_app_user as up
	WHERE
		up.app_user_id = u.id
		AND up.is_creator = 1
);


