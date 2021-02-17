--Removes lottery spawn mechanic, sets all to normal spawntype and 5mins 31secs respawn.
UPDATE mob_groups SET spawntype=0,respawntime=331 WHERE spawntype=32;

--Makes seven sin skulls auto spawn vs triggered.
UPDATE mob_groups SET spawntype=0,respawntime=332 WHERE zoneid=195 AND name like 'Skull_of_%';

--Remove duplicate spawn points to make sure only 1 instance of each NM will spawn.
DELETE FROM mob_spawn_points WHERE mobid = 16822423 AND mobname = "Bugbear_Strongman";
DELETE FROM mob_spawn_points WHERE mobid = 16826510 AND mobname = "Swashstox_Beadblinker";
DELETE FROM mob_spawn_points WHERE mobid = 17191189 AND mobname = "Swamfisk";
DELETE FROM mob_spawn_points WHERE mobid = 17203585 AND mobname = "Panzer_Percival";
DELETE FROM mob_spawn_points WHERE mobid = 17211537 AND mobname = "Stinging_Sophie";
DELETE FROM mob_spawn_points WHERE mobid = 17211714 AND mobname = "Maighdean_Uaine";
DELETE FROM mob_spawn_points WHERE mobid = 17215613 AND mobname = "Carnero";
DELETE FROM mob_spawn_points WHERE mobid = 17215868 AND mobname = "Leaping_Lizzy";
DELETE FROM mob_spawn_points WHERE mobid = 17219795 AND mobname = "Stray_Mary";
DELETE FROM mob_spawn_points WHERE mobid = 17227972 AND mobname = "Black_Triple_Stars";
DELETE FROM mob_spawn_points WHERE mobid = 17248486 AND mobname = "Tom_Tit_Tat";
DELETE FROM mob_spawn_points WHERE mobid = 17252508 AND mobname = "Sharp-Eared_Ropipi";
DELETE FROM mob_spawn_points WHERE mobid = 17276982 AND mobname = "Nightmare_Vase";
DELETE FROM mob_spawn_points WHERE mobid = 17424385 AND mobname = "Enkelados";
DELETE FROM mob_spawn_points WHERE mobid = 17424475 AND mobname = "Ixtab";
DELETE FROM mob_spawn_points WHERE mobid = 17547322 AND mobname = "Morgmox_Moldnoggin";
DELETE FROM mob_spawn_points WHERE mobid = 17547324 AND mobname = "Sparkspox_Sweatbrow";
DELETE FROM mob_spawn_points WHERE mobid = 17547402 AND mobname = "Kikklix_Longlegs";
DELETE FROM mob_spawn_points WHERE mobid = 17547424 AND mobname = "Karashix_Swollenskull";
DELETE FROM mob_spawn_points WHERE mobid in (16814320,16814331) AND mobname = "Gyre-Carlin";
DELETE FROM mob_spawn_points WHERE mobid in (17547377, 17547381) AND mobname = "Buffrix_Eargone";
DELETE FROM mob_spawn_points WHERE mobid in (17547378, 17547382) AND mobname = "Humnox_Drumbelly";
DELETE FROM mob_spawn_points WHERE mobid in (17613048, 17613052, 17613054) AND mobname = "Goliath";
DELETE FROM mob_spawn_points WHERE mobid in (16986149, 16986174, 16990294) AND mobname = "Grand_Marid";
