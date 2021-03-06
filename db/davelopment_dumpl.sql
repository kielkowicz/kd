BEGIN TRANSACTION;
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('opinions',12);
INSERT INTO "sqlite_sequence" VALUES('series',12);
INSERT INTO "sqlite_sequence" VALUES('cards',25);
CREATE TABLE "opinions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "description" text, "language" varchar(255), "card_id" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO "opinions" VALUES(1,'Opis po polsku karty HD5870 4GB TOXIC','pl',1,'2011-03-01 12:27:54','2011-03-01 12:27:54');
INSERT INTO "opinions" VALUES(2,'English description for HD5870 4GB TOXIC','en',1,'2011-03-01 12:27:54','2011-03-01 12:27:54');
INSERT INTO "opinions" VALUES(3,'Opis po polsku karty HD5970 2GB TOXIC','pl',2,'2011-03-01 12:27:54','2011-03-01 12:27:54');
INSERT INTO "opinions" VALUES(4,'English description for HD5970 2GB TOXIC','en',2,'2011-03-01 12:27:54','2011-03-01 12:27:54');
INSERT INTO "opinions" VALUES(5,'Opis po polsku karty HD5770 2GB TOXIC','pl',3,'2011-03-01 12:27:54','2011-03-01 12:27:54');
INSERT INTO "opinions" VALUES(6,'English description for HD5770 2GB TOXIC','en',3,'2011-03-01 12:27:54','2011-03-01 12:27:54');
INSERT INTO "opinions" VALUES(7,'Polski opis karty hr121..
Bardzo dobra karta!','pl',4,'2011-03-01 12:32:39','2011-03-01 12:32:39');
INSERT INTO "opinions" VALUES(8,'This is engliseh description for hr121!','en',4,'2011-03-01 12:32:39','2011-03-01 12:32:39');
INSERT INTO "opinions" VALUES(9,'To jest super fajna karta...bierzcie i kupujcie!','pl',5,'2011-03-01 12:34:23','2011-03-01 12:41:07');
INSERT INTO "opinions" VALUES(10,'This''s is really grat card...go&buy it!','en',5,'2011-03-01 12:34:23','2011-03-01 12:41:07');
INSERT INTO "opinions" VALUES(11,'Opis polski','pl',6,'2011-03-01 12:36:49','2011-03-01 12:36:49');
INSERT INTO "opinions" VALUES(12,'This is description in English','en',6,'2011-03-01 12:36:49','2011-03-01 12:52:52');
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "login" varchar(255) NOT NULL, "crypted_password" varchar(255) NOT NULL, "password_salt" varchar(255) NOT NULL, "persistence_token" varchar(255) NOT NULL, "single_access_token" varchar(255) NOT NULL, "perishable_token" varchar(255) NOT NULL, "created_at" datetime, "updated_at" datetime);
CREATE TABLE `schema_migrations` (`version` varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20101106183158');
INSERT INTO "schema_migrations" VALUES('20101106183311');
INSERT INTO "schema_migrations" VALUES('20101106213716');
INSERT INTO "schema_migrations" VALUES('20110104161109');
INSERT INTO "schema_migrations" VALUES('20110104162635');
CREATE TABLE `series` (`id` integer PRIMARY KEY AUTOINCREMENT, `name` varchar(255), `created_at` timestamp, `updated_at` timestamp);
INSERT INTO "series" VALUES(10,'SAPPHIRE HD 5000','2011-01-05 14:24:10.224596+0000','2011-01-05 14:59:15.217645+0000');
INSERT INTO "series" VALUES(11,'SAPPHIRE HD 6000','2011-01-05 14:59:39.298065+0000','2011-01-05 14:59:39.298065+0000');
INSERT INTO "series" VALUES(12,'SAPPHIRE HD 4000','2011-01-17 12:32:14.354512+0000','2011-01-17 12:32:23.399166+0000');
CREATE TABLE `cards` (`id` integer PRIMARY KEY AUTOINCREMENT, `name` varchar(255), `serie_id` integer, `created_at` timestamp, `updated_at` timestamp, `description` text, `sku` varchar(255), `process` varchar(255), `memory_options` varchar(255), `core_frequency` varchar(255), `memory_frequency` varchar(255), `unified_shader_pipelines` varchar(255), `memory_bus` varchar(255), `memory_type` varchar(255), `peak_memory_bandwidth` varchar(255), `standard_cooling` varchar(255), `standard_slot_solution` varchar(255), `external_power_need` varchar(255), `directX` varchar(255), `openGL` varchar(255), `vga` varchar(255), `dvi_i` varchar(255), `tv_out` varchar(255), `hdmi` varchar(255), `display_port` varchar(255), `hdmi_compliance` varchar(255), `hdmi_modes` varchar(255), `graphics_resolution` varchar(255), `min_power` varchar(255), `max_power` varchar(255), `link_to_gallery` varchar(255));
INSERT INTO "cards" VALUES(15,'HD5970 4GB TOXIC',10,'2011-01-05 14:24:10.243203+0000','2011-01-17 16:45:47.445577+0000','some information about card 1 from serie 1','11165-01','40 nm','2 x 2GB','900','1200','3200','2 x 256','GDDR5','2 x 153,6','Aktywne, Arctic Cooling','3','Tak, 2 x 8-pin','11','4.0','Przez adapter','2','0','Przez adapter','1 x mini-DP','HDMI 1.3 / tak','480p, 720p, 1080i, 1080p','3 x 2560x1600','60','370','http://www1.sapphiretech.com/us/gallery/main.php?id=601');
INSERT INTO "cards" VALUES(16,'HD5870 1 GB Vapor-X',10,'2011-01-05 14:24:10.284736+0000','2011-01-17 12:48:44.346474+0000','some information about card 2 from serie 1','11161-03','40 nm','1GB','875','1250','1600','256','GDDR5','160','Aktywne Vapor-X','2','Tak, 2 x 6-pin','11','4.0','Przez adapter','2','0','1','1','HDMI 1.3','480p, 720p, 1080i, 1080p','3 x 2560x1600','27','188','http://www1.sapphiretech.com/us/gallery/main.php?id=516');
INSERT INTO "cards" VALUES(17,'HD5970 4GB',10,'2011-01-05 14:24:10.292440+0000','2011-01-17 12:46:30.401943+0000','some information about card 3 from serie 1','11165-02','40 nm','2 x 2GB','850','1200','2 x 1600','256','GDDR5','2 x 153,6','Aktywne','3','tak, 2 x 8pin','11','4,0','Przez adapter','2','0','Przez adapter','1 x mini-DP','HDMI 1.3','480p, 720p, 1080i, 1080p','3 x 2560x1600','60','350','http://www1.sapphiretech.com/us/gallery/main.php?id=600');
INSERT INTO "cards" VALUES(18,'HD6970 2GB',11,'2011-01-05 15:04:50.013258+0000','2011-01-17 12:59:26.820316+0000',NULL,'21187-00','40 nm','2GB','880','1375','1536','256','GDDR5','176','Aktywne','2','tak, 8pin + 6pin','11','4.1','przez adapter','1','','1','2 x mini DP','1.4a / tak','480p, 720p, 1080i, 1080p','4 x 1920x1200','20 W','250 W','http://www1.sapphiretech.com/us/gallery/main.php?id=649');
INSERT INTO "cards" VALUES(19,'HD4890 Atomic',12,'2011-01-17 12:38:21.103100+0000','2011-01-17 12:38:21.103100+0000',NULL,'11150-03','55 nm','1GB','1000','1050','800','256','GDDR5','134,4','Aktywne Vapor-X','2','tak, 8pin + 6pin','10.1','3.3','przez adapter','2','1','przez adapter','0','1.3','480p, 720p, 1080i, 1080p','2560x1600','','','http://www1.sapphiretech.com/us/gallery/main.php?id=460');
INSERT INTO "cards" VALUES(20,'HD4870X2',12,'2011-01-17 12:41:14.948569+0000','2011-01-17 12:41:14.948569+0000',NULL,'21137-00','55 nm','2 x 1GB','750','900','2 x 800','256','GDDR5','2 x 115,2','Aktywne','2','tak, 8pin + 6pin','10.1','3.3','przez adapter','2','1','przez adapter','0','1.3','480p, 720p, 1080i, 1080p','2560x1600','','','http://www1.sapphiretech.com/us/gallery/main.php?id=451');
INSERT INTO "cards" VALUES(21,'HD4850 TOXIC',12,'2011-01-17 12:44:06.408799+0000','2011-01-17 12:44:06.408799+0000',NULL,'11132-04','55 nm','512MB','625','993','800','256','GDDR3','63,55','Aktywne Vapor-X','2','tak, 6pin','1.01','3.3','przez adapter','2','1','przez adapter','0','1.3','480p, 720p, 1080i, 1080p','2560x1600','','','http://www1.sapphiretech.com/us/gallery/main.php?id=316');
INSERT INTO "cards" VALUES(22,'HD6850 1GB TOXIC',11,'2011-01-17 12:50:59.876256+0000','2011-01-17 12:50:59.876256+0000',NULL,'11180-03','40 nm','1GB','820','1000','960','256','GDDR5','128','Aktywne','2','tak, 6pin','11','4.1','przez adapter','1','1','1','1','1.4a','480p, 720p, 1080i, 1080p','3 x 1920x1200','19','135','http://www1.sapphiretech.com/us/gallery/main.php?id=639');
INSERT INTO "cards" VALUES(23,'HD6850 1GB',11,'2011-01-17 12:53:05.208357+0000','2011-01-17 12:53:49.885613+0000',NULL,'11180-00','40 nm','1GB','775','1000','960','256','GDDR5','128','Aktywne','2','tak, 6pin','11','4.1','przez adapter','1','1','1','1','1.4a','480p, 720p, 1080i, 1080p','3 x 1920x1200','19','127','http://www1.sapphiretech.com/us/gallery/main.php?id=635');
INSERT INTO "cards" VALUES(24,'HD6870 1GB',11,'2011-01-17 12:56:22.437454+0000','2011-01-17 12:56:22.437454+0000',NULL,'11179-00','40 nm','1GB','900','1050','1120','256','GDDR5','134,4','Aktywne','2','Tak, 2 x 6-pin','11','4.1','przez adapter','1','1','1','1','1.4a','480p, 720p, 1080i, 1080p','4 x 1920x1200','19','151','http://www1.sapphiretech.com/us/gallery/main.php?id=637');
INSERT INTO "cards" VALUES(25,'HD6950 2GB',11,'2011-01-17 12:58:05.921420+0000','2011-01-17 12:58:05.921420+0000',NULL,'21188-00','40 nm','2 GB','800','1250','1408','256','GDDR5','160','Aktywne','2','Tak, 2 x 6-pin','11','4.1','przez adapter','1','1','1','1','1.4a','480p, 720p, 1080i, 1080p','4 x 1920x1200','20','200','http://www1.sapphiretech.com/us/gallery/main.php?id=645');
CREATE UNIQUE INDEX `unique_schema_migrations` ON `schema_migrations` (`version`);
COMMIT;
