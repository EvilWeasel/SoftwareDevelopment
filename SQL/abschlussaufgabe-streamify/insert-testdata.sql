-- Inert Data album
INSERT INTO
  album (id, title, release_date, genre)
VALUES
  (1, 'Epic Fail Symphony', '1988-09-19', 'hip hop');

INSERT INTO
  album (id, title, release_date, genre)
VALUES
  (
    2,
    'Awkward Silence Serenade',
    '1939-04-23',
    'jazz'
  );

INSERT INTO
  album (id, title, release_date, genre)
VALUES
  (3, 'Rebel Without a Chord', '2010-04-16', 'rock');

INSERT INTO
  album (id, title, release_date, genre)
VALUES
  (4, 'Doomsday Disco', '1925-06-09', 'electronic');

INSERT INTO
  album (id, title, release_date, genre)
VALUES
  (5, 'Metallic Meltdown', '1990-04-04', 'pop');

-- Insert Data app_user
INSERT INTO
  app_user (id, username, email, member_since, premium)
VALUES
  (
    1,
    'xXDarkLord420Xx',
    'johnsmith123@email.com',
    '2022-10-24',
    FALSE
  );

INSERT INTO
  app_user (id, username, email, member_since, premium)
VALUES
  (
    2,
    'S0ulCrusher666',
    'sallylovescats@email.com',
    '2024-02-13',
    FALSE
  );

INSERT INTO
  app_user (id, username, email, member_since, premium)
VALUES
  (
    3,
    'EpicGamerChad',
    'daveiscool@email.com',
    '2020-07-22',
    FALSE
  );

INSERT INTO
  app_user (id, username, email, member_since, premium)
VALUES
  (
    4,
    'QueenOfSass',
    'emilythebest@email.com',
    '2023-09-27',
    TRUE
  );

INSERT INTO
  app_user (id, username, email, member_since, premium)
VALUES
  (
    5,
    'MrMemeMaster',
    'mikerules@email.com',
    '2021-09-18',
    FALSE
  );

INSERT INTO
  app_user (id, username, email, member_since, premium)
VALUES
  (
    6,
    'TheRealDeal123',
    'lucylovespizza@email.com',
    '2021-08-19',
    FALSE
  );

INSERT INTO
  app_user (id, username, email, member_since, premium)
VALUES
  (
    7,
    'NinjaWarrior99',
    'samtheboss@email.com',
    '2022-01-07',
    FALSE
  );

INSERT INTO
  app_user (id, username, email, member_since, premium)
VALUES
  (
    8,
    'PixelPrincess',
    'jennylovesdogs@email.com',
    '2024-10-10',
    FALSE
  );

INSERT INTO
  app_user (id, username, email, member_since, premium)
VALUES
  (
    9,
    'CyberPunkMaster',
    'maxthegreat@email.com',
    '2023-01-29',
    TRUE
  );

INSERT INTO
  app_user (id, username, email, member_since, premium)
VALUES
  (
    10,
    'L33tH4x0r',
    'lauraisawesome@email.com',
    '2023-08-19',
    TRUE
  );

-- Inser Data artist
INSERT INTO
  artist (id, alias)
VALUES
  (1, 'The Electric Skulls');

INSERT INTO
  artist (id, alias)
VALUES
  (2, 'Thunderstorm Warriors');

INSERT INTO
  artist (id, alias)
VALUES
  (3, 'Velvet Unicorns');

INSERT INTO
  artist (id, alias)
VALUES
  (4, 'Metallic Dragons');

INSERT INTO
  artist (id, alias)
VALUES
  (5, 'Psychedelic Vampires');

INSERT INTO
  artist (id, alias)
VALUES
  (6, 'Cyberpunk Rebels');

INSERT INTO
  artist (id, alias)
VALUES
  (7, 'Galactic Gladiators');

INSERT INTO
  artist (id, alias)
VALUES
  (8, 'Atomic Sirens');

INSERT INTO
  artist (id, alias)
VALUES
  (9, 'Sonic Samurai');

INSERT INTO
  artist (id, alias)
VALUES
  (10, 'Inferno Angels');

INSERT INTO
  artist (id, alias)
VALUES
  (11, 'Rogue Renegades');

INSERT INTO
  artist (id, alias)
VALUES
  (12, 'Voodoo Witches');

INSERT INTO
  artist (id, alias)
VALUES
  (13, 'Lunar Lycans');

INSERT INTO
  artist (id, alias)
VALUES
  (14, 'Chaos Chameleons');

INSERT INTO
  artist (id, alias)
VALUES
  (15, 'Mystic Mermaids');

INSERT INTO
  artist (id, alias)
VALUES
  (16, 'Jungle Jesters');

INSERT INTO
  artist (id, alias)
VALUES
  (17, 'Frostbite Phoenix');

INSERT INTO
  artist (id, alias)
VALUES
  (18, 'Shadow Serpents');

INSERT INTO
  artist (id, alias)
VALUES
  (19, 'Blitzkrieg Banshees');

INSERT INTO
  artist (id, alias)
VALUES
  (20, 'Venomous Valkyries');

-- Insert Data playlist
INSERT INTO
  playlist (id, title, date_of_creation)
VALUES
  (1, 'Songs to Cry Alone in the Dark', '2022-10-17');

INSERT INTO
  playlist (id, title, date_of_creation)
VALUES
  (2, 'Cheesy Love Songs', '2021-02-21');

INSERT INTO
  playlist (id, title, date_of_creation)
VALUES
  (3, 'Cringe-tastic Classics', '2022-07-05');

INSERT INTO
  playlist (id, title, date_of_creation)
VALUES
  (4, 'Sad Boy Summer Jams', '2020-04-19');

INSERT INTO
  playlist (id, title, date_of_creation)
VALUES
  (5, 'Embarrassing Throwbacks', '2022-07-30');

INSERT INTO
  playlist (id, title, date_of_creation)
VALUES
  (6, 'Sounds of Silence', '2024-01-27');

-- Insert Data song
INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (1, 'Electric Thunderstorm', 158, '1942-01-27');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (2, 'Rebel Unicorn Anthem', 54, '2014-12-16');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (3, 'Funky Chicken Dance', 326, '1998-08-19');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (4, 'Ninja Disco Inferno', 141, '1957-10-04');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (5, 'Space Cowboy Boogie', 186, '2006-04-18');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (6, 'Zombie Prom Night', 37, '1956-05-07');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (7, 'Alien Invasion Jive', 110, '1929-01-17');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (8, 'Pirate Parrot Party', 266, '1951-04-21');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (9, 'Robot Revolution Rave', 289, '2020-05-22');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (10, 'Sasquatch Salsa Showdown', 313, '1951-04-21');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (11, 'Vampire Vacation Vibes', 298, '2019-05-29');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (12, 'Werewolf Wild West Waltz', 77, '2004-01-03');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (13, 'Mermaid Meltdown Madness', 137, '1998-09-04');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (14, 'Ghostly Gangsta Groove', 271, '1968-12-28');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (
    15,
    'Dragon Dancefloor Delight',
    261,
    '1974-07-25'
  );

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (
    16,
    'Yeti Yodeling Extravaganza',
    309,
    '1954-01-06'
  );

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (17, 'Witchy Wobble Wonderland', 106, '2018-01-29');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (18, 'Mummy Mambo Madness', 142, '1959-01-23');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (19, 'Alien Abduction Acoustic', 167, '1957-02-06');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (
    20,
    'Superhero Shuffle Spectacular',
    353,
    '1982-05-14'
  );

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (21, 'Time Travel Tango', 103, '1923-10-03');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (22, 'Monster Mashup Madness', 307, '2023-01-14');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (23, 'Cyborg Cha-Cha-Cha', 47, '2019-12-01');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (
    24,
    'Bigfoot Breakdance Battle',
    114,
    '1983-09-11'
  );

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (25, 'Zombie Apocalypse Jazz', 165, '1931-12-19');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (26, 'Pirate Plunder Polka', 31, '2003-11-05');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (27, 'Robot Rock ''n'' Roll', 207, '2002-02-02');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (28, 'Sasquatch Swing Soiree', 190, '2020-09-24');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (29, 'Vampire Voodoo Vibe', 331, '1996-01-16');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (30, 'Werewolf Waltz War', 130, '1922-12-17');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (31, 'Mermaid Mania Melody', 175, '1976-11-20');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (32, 'Ghostly Gypsy Gala', 172, '1943-03-17');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (33, 'Dragon Disco Duel', 222, '1954-08-20');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (34, 'Yeti Yacht Yodel', 112, '1937-12-05');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (35, 'Witchy Wizard Waltz', 230, '1960-06-02');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (36, 'Mummy Mambo Mayhem', 209, '1956-12-17');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (37, 'Alien Attack Anthem', 303, '1924-05-02');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (38, 'Superhero Salsa Show', 137, '2024-12-13');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (39, 'Time Warp Tango', 231, '1995-10-22');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (40, 'Monster Mash Madness', 214, '1992-02-05');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (
    41,
    'Cyborg Celebration Cha-Cha',
    208,
    '1972-12-29'
  );

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (42, 'Bigfoot Boogie Bash', 187, '1924-06-18');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (43, 'Zombie Zumba Zone', 214, '2020-03-12');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (44, 'Pirate Party Parade', 102, '1920-05-02');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (45, 'Robot Rave Revolution', 108, '2000-08-01');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (46, 'Sasquatch Siren Serenade', 42, '1951-08-17');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (47, 'Electric Thunderstorm', 356, '1947-05-06');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (48, 'Rebel Unicorn Anthem', 108, '1947-10-06');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (49, 'Funky Chicken Dance', 239, '2022-01-31');

INSERT INTO
  song (id, title, song_length, release_date)
VALUES
  (50, 'Ninja Disco Inferno', 234, '1997-09-06');

-- Inser Transfer Table Data
-- artist_album
INSERT INTO
  artist_album (artist_id, album_id)
VALUES
  (13, 5);

INSERT INTO
  artist_album (artist_id, album_id)
VALUES
  (4, 1);

INSERT INTO
  artist_album (artist_id, album_id)
VALUES
  (20, 2);

INSERT INTO
  artist_album (artist_id, album_id)
VALUES
  (8, 3);

INSERT INTO
  artist_album (artist_id, album_id)
VALUES
  (2, 4);

-- artist_song
INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (1, 11);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (2, 9);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (3, 4);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (4, 10);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (5, 4);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (6, 8);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (7, 14);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (8, 4);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (9, 14);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (10, 5);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (11, 8);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (12, 1);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (13, 11);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (14, 11);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (15, 14);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (16, 9);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (17, 5);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (18, 5);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (19, 10);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (20, 7);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (21, 8);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (22, 5);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (23, 2);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (24, 4);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (25, 6);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (26, 11);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (27, 14);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (28, 6);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (29, 1);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (30, 5);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (31, 20);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (32, 3);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (33, 11);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (34, 12);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (35, 17);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (36, 15);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (37, 8);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (38, 18);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (39, 3);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (40, 4);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (41, 4);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (42, 9);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (43, 6);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (44, 9);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (45, 1);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (46, 2);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (47, 16);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (48, 12);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (49, 17);

INSERT INTO
  artist_song (song_id, artist_id)
VALUES
  (50, 9);

-- playlist_app_user
INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (4, 1, TRUE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (1, 4, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (1, 5, TRUE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (5, 2, TRUE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (5, 7, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (4, 5, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (1, 6, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (5, 10, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (2, 10, TRUE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (3, 5, TRUE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (2, 3, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (4, 8, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (4, 10, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (2, 9, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (3, 9, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (4, 4, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (2, 5, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (3, 8, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (3, 7, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (1, 8, FALSE);

INSERT INTO
  playlist_app_user (playlist_id, app_user_id, is_creator)
VALUES
  (6, 1, TRUE);

-- song_album
INSERT INTO
  song_album (song_id, album_id)
VALUES
  (1, 3);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (2, 2);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (3, 4);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (4, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (5, 3);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (6, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (7, 4);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (8, 3);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (9, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (10, 2);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (11, 4);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (12, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (13, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (14, 3);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (15, 5);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (16, 5);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (17, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (18, 2);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (19, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (20, 3);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (21, 3);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (22, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (23, 2);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (24, 2);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (25, 2);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (26, 5);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (27, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (28, 4);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (29, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (30, 5);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (31, 3);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (32, 5);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (33, 4);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (34, 2);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (35, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (36, 3);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (37, 4);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (38, 2);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (39, 5);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (40, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (41, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (42, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (43, 2);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (44, 4);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (45, 2);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (46, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (47, 1);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (48, 4);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (49, 2);

INSERT INTO
  song_album (song_id, album_id)
VALUES
  (50, 1);

-- song_playlist
INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (1, 5, '2024-04-07');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (15, 5, '2020-05-03');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (2, 4, '2024-04-18');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (7, 4, '2024-08-07');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (44, 2, '2021-05-17');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (40, 5, '2023-06-13');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (34, 5, '2024-10-14');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (24, 4, '2023-06-13');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (15, 3, '2021-01-19');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (13, 4, '2021-03-25');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (44, 3, '2022-12-27');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (27, 5, '2023-09-30');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (5, 1, '2022-12-14');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (9, 1, '2024-03-16');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (3, 1, '2023-01-22');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (5, 5, '2020-04-09');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (25, 4, '2020-05-28');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (38, 3, '2023-12-12');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (39, 1, '2020-10-18');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (12, 5, '2023-10-24');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (35, 2, '2022-06-12');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (46, 4, '2020-04-21');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (2, 1, '2024-04-27');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (19, 4, '2022-01-21');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (34, 2, '2021-03-13');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (47, 2, '2020-09-01');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (16, 3, '2023-04-25');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (22, 1, '2022-06-20');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (35, 1, '2020-08-30');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (41, 2, '2020-11-22');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (48, 5, '2020-01-09');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (11, 5, '2023-11-03');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (37, 1, '2022-08-03');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (2, 5, '2022-03-26');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (32, 4, '2024-07-20');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (1, 3, '2022-07-06');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (7, 3, '2022-02-18');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (35, 5, '2021-03-06');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (48, 2, '2022-12-26');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (13, 3, '2020-01-21');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (42, 1, '2022-02-25');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (33, 1, '2021-03-21');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (40, 4, '2022-10-02');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (47, 5, '2023-06-13');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (20, 4, '2021-06-13');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (17, 5, '2023-07-03');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (34, 1, '2021-03-13');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (40, 2, '2023-06-13');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (12, 3, '2023-10-24');

INSERT INTO
  song_playlist (song_id, playlist_id, song_added_date)
VALUES
  (27, 4, '2023-10-24');