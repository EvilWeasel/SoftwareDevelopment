DROP DATABASE IF EXISTS Streamify;

CREATE DATABASE Streamify;

USE Streamify;

-- Create all essential entities
CREATE TABLE
  app_user (
    id INT PRIMARY KEY,
    username TEXT (50) NOT NULL UNIQUE,
    email TEXT (100) NOT NULL UNIQUE,
    member_since DATE NOT NULL,
    premium BOOLEAN NOT NULL
  );

CREATE TABLE
  playlist (
    id INT PRIMARY KEY,
    title TEXT (100) NOT NULL,
    date_of_creation DATE NOT NULL DEFAULT CURDATE()
  );

CREATE TABLE
  song (
    id INT PRIMARY KEY,
    title TEXT (100) DEFAULT "Untitled",
    song_length INT NOT NULL,
    release_date DATE
  );

CREATE TABLE
  album (
    id INT PRIMARY KEY,
    title TEXT (100) DEFAULT "Untitled",
    release_date DATE,
    genre TEXT (50)
  );

CREATE TABLE
  artist (
    id INT PRIMARY KEY,
    alias TEXT (100) DEFAULT "Unknown Artist"
  );

-- Create Transfer Tables
CREATE TABLE
  playlist_app_user (
    playlist_id INT NOT NULL,
    app_user_id INT NOT NULL,
    is_creator BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (playlist_id, app_user_id)
  );

CREATE TABLE
  song_playlist (
    song_id INT NOT NULL,
    playlist_id INT NOT NULL,
    song_added_date DATE NOT NULL,
    PRIMARY KEY (song_id, playlist_id)
  );

CREATE TABLE
  artist_song (
    artist_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (artist_id, song_id)
  );

CREATE TABLE
  song_album (
    song_id INT NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (song_id, album_id)
  );

CREATE TABLE
  artist_album (
    artist_id INT NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (artist_id, album_id)
  );

-- Add foreign-key constraints
-- Transfer Playlist_App_User
ALTER TABLE playlist_app_user
ADD CONSTRAINT fk_playlist_app_user_playlist_id
FOREIGN KEY (playlist_id) REFERENCES playlist (id),
ADD CONSTRAINT fk_playlist_app_user_app_user_id
FOREIGN KEY (app_user_id) REFERENCES app_user (id);

-- Transfer Song_Playlist
ALTER TABLE song_playlist
ADD CONSTRAINT fk_song_playlist_song_id
FOREIGN KEY (song_id) REFERENCES song (id),
ADD CONSTRAINT fk_song_playlist_playlist_id
FOREIGN KEY (playlist_id) REFERENCES playlist (id);

-- Transfer Song_Album
ALTER TABLE song_album
ADD CONSTRAINT fk_song_album_song_id
FOREIGN KEY (song_id) REFERENCES song (id)
  ON DELETE CASCADE,
ADD CONSTRAINT fk_song_album_album_id
FOREIGN KEY (album_id) REFERENCES album (id);

-- Transfer Artist-Album
ALTER TABLE artist_album
ADD CONSTRAINT fk_artist_album_artist_id
FOREIGN KEY (artist_id) REFERENCES artist (id),
ADD CONSTRAINT fk_artist_album_album_id
FOREIGN KEY (album_id) REFERENCES album (id);

-- Transfer Artist_Song
ALTER TABLE artist_song
ADD CONSTRAINT fk_artist_song_song_id
FOREIGN KEY (song_id) REFERENCES song (id)
  ON DELETE CASCADE,
ADD CONSTRAINT fk_artist_song_artist_id
FOREIGN KEY (artist_id) REFERENCES artist (id);