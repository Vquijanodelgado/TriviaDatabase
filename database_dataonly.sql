--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (email, username, password_hash) FROM stdin;
testuser@example.com	testuser	hashedpassword123
mary@gmail.com	mary1013	scrypt:32768:8:1$ixU45YLu43SveB11$83bd9e1ee180fc9e8842a300df2910d50ef5ab16e636a3f2b8b52cfa6beef862eeb6f6d11ff638ae8c40a4911ccf58c396cb73f9cf34ac020bf170b3ec032eba
popcorn@gmail.com	popcorn101	scrypt:32768:8:1$gisbH7RkPGymjzm1$84df3c321c0b071481f03082adeb361eef9cb9c9a186bc72bef6aa66cd2f88474efbd3398727a47ff593d85dfaf80d8b42ee9e3477c57a950bdaf12565de4406
gummybear@gmail.com	lexiebear	scrypt:32768:8:1$mO5csFDmH5PDFQdF$032cdba6a6b93a8ee1c30e29e5d4e039d5f4fcdb0968e19fd08f848206292a5287a6a708ba4a6324b2fb4b51862aa95ad54bb0a2f3e415f0407516ec191ad1e0
sayonara@gmail.com	hotpocket	scrypt:32768:8:1$LF0HfWX6aJ1W887M$d9049c605a375b526a8d4d925ebb8b7aaea1cf3cc544fae1109448bf6960ef601426dc65ced946224a8d4ff0eef26102c807de218b8f7decf18452a72429a0a4
lemonsqueezy@gmail.com	lemonessa	scrypt:32768:8:1$36A0ATuHJH6s3ZCl$ad8bdc1ea8dda87e642065506c608f7e008aeedc47efd58ad6d518e3755609bfaec6856ec0f0de7a8bd2862896dca1db5ca1817126544d588db981e018155cfc
pizzaroll@gmail.com	p_roll1	scrypt:32768:8:1$wwFpSWWccPLweeml$9fc8dace6287be5c16e4527ef85905cbc1b165b7732d3fd272d0357ac246eecc015511a254f42aefa1fc935dcef2192518281759bd6096e01f9a26cf670eb31c
jimmycricket@gmail.com	jimmy2001	scrypt:32768:8:1$QTR2gRVGe5xFBayu$49560d6bd2883b1ba00266d3656051d01084869150062fc91c8042fa55375d428dc0fe762d90881944c136f0bafd21ae8175761673886a75b4b6a090e83dbf79
santaclause@gmail.com	northpole2024	scrypt:32768:8:1$NHY9Uiu6IXkK5Q9Q$f50e875e85486d4f8bc0772cfc54619e1e1ba5a93aba9c57b06615b526b0c34452c0da9b17d0cc3140b4bfafc8a8c4270b4efa5020ab722de879b5905d880358
timmyturner@gmail.com	tim101	scrypt:32768:8:1$m785Yw9n2lBeRMvP$47fc12880d91e52f2b8b17a15e568e28032cd186c0122e10bb898e123245a75638ca7c0afe8bc92a2350454c70976d17926475796b448da4617af19f1729901a
reesespuff@gmail.com	reeses_4ever	scrypt:32768:8:1$PKjUNNCN3ogpLGQC$a6922e3b9abb856f1b7369fa925b25ef36b93633b1a99c3d4237a3d0ae51513603ac37b5d9a7714d06e4092932cf12a882780677d6c4b153761c90f2229e3ee8
beabadoobee@yahoo.com	bea4ever	scrypt:32768:8:1$uKFwZFnYI2gBpIHL$445bc8a3a38fff48393a47f9cc60c5b0b311fc29ff9f2838a53d781970a28056b9dbd8ffdd8e9fbb21c1055be361946d069086989b7b542204d538d13e552330
boogie@gmail.com	boogie_woogie	scrypt:32768:8:1$TOrQ3NgWNUSarprZ$d2657ab91c5d3b6b1295bd948441a37645b8448109c84c508db18194e5d5b25fcf40556843bcc3ffd45045c302b4a3637595380faff35a709be0f979ecae639d
starwars@gmail.com	yoda10	scrypt:32768:8:1$sbXmsrJNTisiE0lc$0ffc3700d8906aaa8e8ee9fc158c07c5d5e48f635747765bc71bc1a9d5f49fea9d67ee2474494cdffe141c9d26f690197aed2fb8a2fc84867e79b3b5905f19e8
lilliana2000@gmail.com	lily	scrypt:32768:8:1$NgsIg4su1wrJImkI$816400cd783c6912f23fd404e9036f68756fd22c31c438877cab78acb4519098772a38b55b751d74bc8cc945efe6236887dcd087817a1aedc06a5c95ded32e69
tester@gmail.com	testy	scrypt:32768:8:1$pivrgIEOhMVvFLEZ$be14c662fa1c134d387bc4a6ea28005a7c7ebaef986ab30a3125ad30e5b9c528d6c0f4af0801ac016a48994d66df816f867e5031b636dc99a027a4acec3dd389
zoomies@gmail.com	zoomie1013	scrypt:32768:8:1$4319tCAPDTXvfQ4g$2353c8697a8df83f96bb6d4d1c18303c95c125a3b350fdae70a1590acbde48f44da6b1476ad47b28be65b7b5046ce3a1ef5314d6c06fbf3c63fbc34920f0ebde
\.


--
-- Data for Name: attempts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attempts (email, attempt_date_time, start_time, end_time, total_score, duration) FROM stdin;
testuser@example.com	2024-12-10 14:30:00	14:30:00	14:45:00	5	900
testuser@example.com	2024-12-10 07:36:42.166746	12:00:00	00:00:00	0	0
gummybear@gmail.com	2024-12-10 07:46:46.643312	07:46:46.643312	07:47:07.825877	6	21
jimmycricket@gmail.com	2024-12-10 07:54:24.126245	07:54:24.126245	07:54:49.863945	6	25
santaclause@gmail.com	2024-12-10 08:15:48.888785	08:15:48.888785	08:16:20.410404	4	31
timmyturner@gmail.com	2024-12-10 08:23:27.215402	08:23:27.215402	08:23:40.199039	7	12
reesespuff@gmail.com	2024-12-11 09:30:50.007999	09:30:50.007999	09:31:07.445464	7	17
reesespuff@gmail.com	2024-12-11 09:42:03.773266	09:42:03.773266	09:42:33.640359	6	29
reesespuff@gmail.com	2024-12-11 09:50:14.076427	09:50:14.076427	09:50:26.332607	3	12
beabadoobee@yahoo.com	2024-12-11 10:22:33.092699	10:22:33.092699	10:22:54.143997	4	21
beabadoobee@yahoo.com	2024-12-11 10:42:18.918151	10:42:18.918151	10:42:33.213986	4	14
boogie@gmail.com	2024-12-11 11:17:46.859982	11:17:46.859982	11:18:06.063811	8	19
starwars@gmail.com	2024-12-11 11:34:29.957463	11:34:29.957463	11:34:42.828069	5	12
starwars@gmail.com	2024-12-11 11:36:54.940982	11:36:54.940982	11:37:03.902548	7	8
lilliana2000@gmail.com	2024-12-11 11:57:56.065478	11:57:56.065478	11:58:08.597403	4	12
tester@gmail.com	2024-12-11 12:11:53.564061	12:11:53.564061	12:12:09.461658	7	15
zoomies@gmail.com	2024-12-11 12:58:19.765292	12:58:19.765292	12:58:30.669284	8	10
zoomies@gmail.com	2024-12-11 12:59:34.271304	12:59:34.271304	12:59:45.644528	3	11
zoomies@gmail.com	2024-12-11 14:01:43.433984	14:01:43.433984	14:02:02.84784	5	19
zoomies@gmail.com	2024-12-11 14:04:25.395027	14:04:25.395027	14:04:35.778578	5	10
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (category_name, description) FROM stdin;
General Knowledge	Trivia about general and random facts
Entertainment: Books	Trivia about popular novels and book characters 
Entertainment: Film	Trivia about popular movies and movie characters
Entertainment: Music	Trivia about popular albums and singers
Entertainment: Video Games	Trivia about popular studios and video game development
Science: Nature	Trivia about scientific nature and elements
Science: Computers	Trivia about computer related science and systems
Geography	Trivia about random geography facts and countries
History	Trivia about historical events and historical figures
\.


--
-- Data for Name: difficulty_levels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.difficulty_levels (difficulty_level, description) FROM stdin;
easy	Basic questions suitable for beginners
medium	Moderately challenging questions for intermediate players
hard	Challenging and tricky trivia questions
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questions (question_text, category_name, difficulty_level, correct_answer) FROM stdin;
The Great Wall of China is visible from the moon.	General Knowledge	easy	f
Jingle Bells was originally meant for Thanksgiving	General Knowledge	easy	t
Nutella is produced by the German company Ferrero.	General Knowledge	easy	f
The bikini is named after the Bikini Atoll, an island where the United States conducted tests on atomic bombs.	General Knowledge	medium	t
French is an official language in Canada.	General Knowledge	easy	t
This is the correct spelling of Supercalifragilisticexpialidocious.	General Knowledge	hard	t
The mitochondria is the powerhouse of the cell.	General Knowledge	easy	t
The Lego Group was founded in 1932.	General Knowledge	easy	t
Typewriter is the longest word that can be typed using only the first row on a QWERTY keyboard.	General Knowledge	medium	t
The term Spam came before the food product Spam.	General Knowledge	medium	f
Video streaming website YouTube was purchased in it's entirety by Facebook for US$1.65 billion in stock.	General Knowledge	easy	f
Popcorn was invented in 1871 by Frederick W. Rueckheim in the USA where he sold the snack on the streets of Chicago.	General Knowledge	medium	f
Stagecoach owned South West Trains before losing the rights to FirstGroup and MTR in March of 2017.	General Knowledge	hard	t
Kissing someone for one minute burns about 2 calories.	General Knowledge	medium	t
Santa Claus is a variety of melon.	General Knowledge	medium	t
You can legally drink alcohol while driving in Mississippi.	General Knowledge	easy	t
The scientific name for the Southern Lights is Aurora Australis?	General Knowledge	medium	t
Buffalo buffalo Buffalo buffalo buffalo buffalo Buffalo buffalo. is a grammatically correct sentence.	General Knowledge	medium	t
Fast food restaurant chains Carl's Jr. and Hardee's are owned by the same company.	General Knowledge	medium	t
Ananas is mostly used as the word for Pineapple in other languages.	General Knowledge	easy	t
The vapor produced by e-cigarettes is actually water.	General Knowledge	medium	f
Dihydrogen Monoxide was banned due to health risks after being discovered in 1983 inside swimming pools and drinking water.	General Knowledge	easy	f
It is automatically considered entrapment in the United States if the police sell you illegal substances without revealing themselves.	General Knowledge	easy	f
Number 16 Bus Shelter was a child's name that was approved by the New Zealand government.	General Knowledge	hard	t
The color orange is named after the fruit.	General Knowledge	easy	t
A scientific study on peanuts in bars found traces of over 100 unique specimens of urine.	General Knowledge	easy	f
The word news originates from the first letters of the 4 main directions on a compass (North, East, West, South).	General Knowledge	medium	f
Sitting for more than three hours a day can cut two years off a person's life expectancy.	General Knowledge	medium	t
When you cry in space, your tears stick to your face.	General Knowledge	easy	t
The British organisation CAMRA stands for The Campaign for Real Ale.	General Knowledge	medium	t
Cucumbers are usually more than 90% water.	General Knowledge	medium	t
The average woman is 5 inches / 13 centimeters shorter than the average man.	General Knowledge	medium	t
There are 86400 seconds in a day.	General Knowledge	medium	t
Haggis is traditionally ate on Burns Night.	General Knowledge	medium	t
Romanian belongs to the Romance language family, shared with French, Spanish, Portuguese and Italian. 	General Knowledge	easy	t
The French word for glass is glace.	General Knowledge	medium	f
Francis Bacon died from a fatal case of pneumonia while he was attempting to preserve meat by stuffing a chicken with snow.	General Knowledge	medium	t
The Sun rises from the North.	General Knowledge	easy	f
In 2010, Twitter and the United States Library of Congress partnered together to archive every tweet by American citizens.	General Knowledge	easy	t
NCIS stands for Navy Corps Investigative Service	General Knowledge	hard	f
27 Club is a term used to refer to a list of famous actors, musicians, and artists who died at the age of 27.	General Knowledge	easy	t
Bulls are attracted to the color red.	General Knowledge	easy	f
Instant mashed potatoes were invented by Canadian Edward Asselbergs in 1962.	General Knowledge	medium	t
The pickled gherkin was first added to hamburgers because a US health law required all fast-food to include a source of Vitamin C.	General Knowledge	medium	f
The National Animal of Scotland is the Unicorn.	General Knowledge	easy	t
The French word to travel is Travail	General Knowledge	medium	f
In Harry Potter and the Deathly Hallows, Hermione destroyed the fourth Horcrux by stabbing it with the Sword of Gryffindor.	Entertainment: Books	hard	f
Harry Potter was born on July 31st, 1980.	Entertainment: Books	hard	t
The Berenstein Bears is the correct spelling of the educational children's book series' name.	Entertainment: Books	easy	f
Green Eggs and Ham consists of only 50 different words.	Entertainment: Books	easy	t
Stephen Chbosky wrote the book 'The Perks of Being A Wallflower'.	Entertainment: Books	easy	t
Elementary, my dear Watson is a phrase that is never truly said within the Conan Doyle books of Sherlock Holmes.	Entertainment: Books	easy	t
Shub-Niggurath is a creature that was created by \tJ. R. R. Tolkien in his novel The Lord of The Rings.	Entertainment: Books	easy	f
The book 1984 was published in 1949.	Entertainment: Books	easy	t
The Harry Potter series of books, combined, are over 1,000,000 words in length.	Entertainment: Books	easy	t
The movie Tron received an Oscar nomination for Best Visual Effects.	Entertainment: Film	medium	f
In the original Star Wars trilogy, Alec Guinness provided the voice for Darth Vader.	Entertainment: Film	easy	f
Samuel L. Jackson had the words, 'Bad Motherf*cker' in-scripted on his lightsaber during the filming of Star Wars.	Entertainment: Film	easy	t
Brandon Routh plays the titular character in the movie John Wick.	Entertainment: Film	easy	f
The weapon Clint Eastwood uses in Dirty Harry was a .44 Automag.	Entertainment: Film	hard	f
Ewan McGregor did not know the name of the second prequel film of Star Wars during and after filming.	Entertainment: Film	easy	t
Leonardo DiCaprio won an Oscar for Best Actor in 2004's The Aviator.	Entertainment: Film	easy	f
The 2010 film The Social Network is a biographical drama film about MySpace founder Tom Anderson.	Entertainment: Film	easy	f
In the original script of The Matrix, the machines used humans as additional computing power instead of batteries.	Entertainment: Film	easy	t
Cube, Cube 2: Hypercube and Cube Zero were directed by the same person.	Entertainment: Film	hard	f
The color of the pills in the Matrix were Blue and Yellow.	Entertainment: Film	medium	f
Actor Tommy Chong served prison time.	Entertainment: Film	easy	t
Minions was released on the June 10th, 2015.	Entertainment: Film	easy	f
Matt Damon played an astronaut stranded on an extraterrestrial planet in both of the movies Interstellar and The Martian.	Entertainment: Film	easy	t
In the original Star Wars trilogy, David Prowse was the actor who physically portrayed Darth Vader.	Entertainment: Film	easy	t
In Alfred Hitchcock's film 'Psycho' it is said he used chocolate syrup to simulate the blood in the famous shower scene from 	Entertainment: Film	easy	t
The Xenomorph from the science fiction film Alien has acidic blood.	Entertainment: Film	medium	t
There aren't any live-action clones in Star Wars: Episode III - Revenge of the Sith.	Entertainment: Film	medium	t
In the movie The Revenant, DiCaprio's character hunts down the killer of his son.	Entertainment: Film	easy	t
The movie The Nightmare before Christmas was all done with physical objects.	Entertainment: Film	easy	t
The song Mystery Train was released by artist Little Junior's Blue Flames in 1953.	Entertainment: Music	hard	t
In 1993, Prince changed his name to an unpronounceable symbol because he was unhappy with his contract with Warner Bros.	Entertainment: Music	easy	t
American rapper Dr. Dre actually has a Ph.D. doctorate.	Entertainment: Music	easy	f
3 members of 2 Live Crew were arrested for playing songs from their album, As Nasty As They Wanna Be, live.	Entertainment: Music	medium	t
EDM label Monstercat signs tracks instead of artists.	Entertainment: Music	medium	t
Pete Townshend's solo album, White City: A Novel, is set in the metropolitan area of Chicago.	Entertainment: Music	hard	f
The alternative rock band, They Might Be Giants, released their album 'Flood' in 1990. 	Entertainment: Music	easy	t
Scatman John's real name was John Paul Larkin.	Entertainment: Music	easy	t
Eurobeat is primarily an Italian genre of music.	Entertainment: Music	easy	t
Ashley Frangipane performs under the stage name Halsey.	Entertainment: Music	medium	t
The Division Bell is the final album of the progressive rock band Pink Floyd.	Entertainment: Music	medium	f
Stevie Wonder's real name is Stevland Hardaway Morris.	Entertainment: Music	easy	t
Arcade Fire's 'The Suburbs' won the Album of the Year award in the 2011 Grammys.	Entertainment: Music	medium	t
The band STRFKR was also briefly known as Pyramiddd.	Entertainment: Music	hard	t
A Saxophone is a brass instrument.	Entertainment: Music	easy	f
Nick Mason is the only member to appear on every Pink Floyd album.	Entertainment: Music	medium	t
Muse is a British (English) rock band	Entertainment: Music	easy	t
Metallica collaborated with Rowan Atkinson's Mr Bean on a 1992 comic relief single.	Entertainment: Music	medium	f
Soulja Boy's 'Crank That' won a Grammy for Best Rap Song in 2007.	Entertainment: Music	medium	f
Lead Singer Rivers Cuomo of American rock band Weezer attended Harvard.	Entertainment: Music	easy	t
Dave Grohl recorded the Foo Fighters' debut, Foo Fighters, by himself.	Entertainment: Music	medium	t
The singer Billie Holiday was also known as Lady Day.	Entertainment: Music	hard	t
Neutral Milk Hotel is a real band.	Entertainment: Music	medium	t
The cover of The Beatles album Abbey Road featured a Volkswagen Beetle in the background.	Entertainment: Music	medium	t
Scottish producer Calvin Harris is from the town of Dumfries, Scotland.	Entertainment: Music	medium	t
The music group Daft Punk got their name from a negative review they recieved.	Entertainment: Music	easy	t
The music video to The Buggle's Video Killed the Radio Star was the first music video to broadcast on MTV.	Entertainment: Music	easy	t
Pink Guy's debut album was Pink Season.	Entertainment: Music	medium	f
Green Day's album 'American Idiot' is considered a punk rock opera.	Entertainment: Music	medium	t
For his performance at ComplexCon 2016 in Long Beach, California, Skrillex revived his Mothership set piece for one night only.	Entertainment: Music	medium	t
Big the Cat is a playable character in Sonic Generations.	Entertainment: Video Games	easy	f
Metal Gear Solid V: The Phantom Pain runs on the Fox Engine.	Entertainment: Video Games	medium	t
In Super Mario Bros., the clouds and bushes have the same artwork and are just different colors.	Entertainment: Video Games	easy	t
Pac-Man was invented by the designer Toru Iwatani while he was eating pizza.	Entertainment: Video Games	easy	t
In Rocket League, you can play Basketball.	Entertainment: Video Games	medium	t
In Terraria, you can craft the Cell Phone pre-hardmode.	Entertainment: Video Games	easy	t
Nintendo's Luigi was originally just called Green Mario?	Entertainment: Video Games	easy	f
The game Jetpack Joyride was created by Redbrick Studios.	Entertainment: Video Games	easy	f
In Until Dawn, both characters Sam and Mike cannot be killed under any means until the final chapter of the game.	Entertainment: Video Games	easy	t
Amazon acquired Twitch in August 2014 for $970 million dollars.	Entertainment: Video Games	medium	t
In Minecraft, gold tools are faster than diamond tools.	Entertainment: Video Games	hard	t
Half-Life 2 runs on the Source Engine.	Entertainment: Video Games	easy	t
In Monster Hunter Generations, guild style is a type of hunting style.	Entertainment: Video Games	medium	t
In RuneScape, one must complete the Dragon Slayer quest before equipping Rune Platelegs.	Entertainment: Video Games	easy	f
In the game Until Dawn Emily is the only playable character who can be killed by another playable character directly.	Entertainment: Video Games	medium	t
The ghosts in Pac-Man and Ms. Pac-Man have completely different behavior.	Entertainment: Video Games	easy	t
In League of Legends, there exists four different types of Dragon.	Entertainment: Video Games	medium	f
TF2: The Heavy's voice actor, Gary Schwartz, voices the Demoman as well 	Entertainment: Video Games	medium	t
During pre-production of Super Mario Bros., Mario originally was meant to shoot bullets.	Entertainment: Video Games	medium	t
The song Megalovania by Toby Fox made its third appearence in the 2015 RPG Undertale.	Entertainment: Video Games	easy	t
The ultimate phrase used by Pharah from Overwatch is: Justice rains from above!	Entertainment: Video Games	easy	t
In Sonic the Hedgehog universe, Tails' real name is Miles Prower.	Entertainment: Video Games	easy	t
The game Pocket Morty has a Morty called Pocket Mortys Morty?	Entertainment: Video Games	easy	t
There are 6 legendary cards in Clash Royale.	Entertainment: Video Games	easy	f
In Super Mario 64, collecting 100 coins on a level will give you a 1-UP.	Entertainment: Video Games	easy	f
In Super Mario 3D World, the Double Cherry power-up originated from a developer accidentally making two characters controllable.	Entertainment: Video Games	easy	t
The names of Tom Nook's cousins in the Animal Crossing franchise are named Timmy and Jimmy.	Entertainment: Video Games	easy	f
Resident Evil 4 was originally meant to be a Nintendo GameCube exclusive.	Entertainment: Video Games	medium	t
Luigi is taller than Mario?	Entertainment: Video Games	easy	t
In the video game Splatoon, the playable characters were originally going to be rabbits instead of squids.	Entertainment: Video Games	easy	t
Unturned originally started as a Roblox game.	Entertainment: Video Games	hard	t
In Resident Evil 4, the Chicago Typewriter has infinite ammo.	Entertainment: Video Games	easy	t
In Overwatch, an allied McCree will say Step right up upon using his ultimate ability Deadeye.	Entertainment: Video Games	medium	t
In the Monster Hunter Series, it is possible to capture Elder Dragons.	Entertainment: Video Games	easy	f
In Undertale, the main character of the game is Sans.	Entertainment: Video Games	easy	f
In Call Of Duty: World At War, the first appearance of the PPSH-41 in Zombies was in the map Der Riese.	Entertainment: Video Games	hard	f
The Mann Co. Store from Team Fortress 2 has the slogan We hire mercenaries and get in fights.	Entertainment: Video Games	easy	f
In Team Fortress 2, being disguised as a scout or medic results in a speed boost.	Entertainment: Video Games	easy	f
In Undertale, having a Fun Value set to 56-57 will play the Wrong Number Song Call.	Entertainment: Video Games	hard	f
All of these maps were in Tom Clancy's Rainbow Six Siege on its initial release: House, Clubhouse, Border, Consulate.	Entertainment: Video Games	hard	f
Pistons were added to Minecraft in Beta 1.5.	Entertainment: Video Games	medium	f
Solid Snake is actually a clone from the DNA of Big Boss in the Metal Gear Solid series' history.	Entertainment: Video Games	easy	t
The ADAM collecters in the Bioshock series are known as Little Sisters.	Entertainment: Video Games	medium	t
In the game Subnautica, a Cave Crawler will attack you.	Entertainment: Video Games	medium	t
In Starbound, the track played by the Decorated Music Box is named Atlas.	Entertainment: Video Games	medium	t
In Pok&eacute;mon Sun and Moon, a male Salandit can evolve to a Salazzle.	Entertainment: Video Games	easy	f
In Sonic Adventure, you are able to transform into Super Sonic at will after completing the main story.	Entertainment: Video Games	easy	f
The Konami Code is known as Up, Up, Down, Down, Left, Right, Right, Left, B, A, Start.	Entertainment: Video Games	easy	f
The main character in the Half-Life franchise is named Morgan Freeman.	Entertainment: Video Games	easy	f
Resident Evil 7 is the first first-person Resident Evil game.	Entertainment: Video Games	easy	f
Tachycardia or Tachyarrhythmia refers to a resting heart-rate near or over 100 BPM.	Science: Nature	medium	t
The planet Mars has two moons orbiting it.	Science: Nature	medium	t
Type 1 diabetes is a result of the liver working improperly.	Science: Nature	medium	f
Pneumonoultramicroscopicsilicovolcanoconiosis is a synonym for the disease known as silicosis.	Science: Nature	medium	t
Anatomy considers the forms of macroscopic structures such as organs and organ systems.	Science: Nature	medium	t
Like with the Neanderthals, Homo sapiens sapiens also interbred with the Denisovans.	Science: Nature	medium	t
Igneous rocks are formed by excessive heat and pressure.	Science: Nature	easy	f
Water always boils at 100 degrees C, 212 degrees F, 373.15K, no matter where you are.	Science: Nature	easy	f
A person can get sunburned on a cloudy day.	Science: Nature	medium	t
The Gympie Stinger is the deadliest plant in the world.	Science: Nature	medium	f
The value of one Calorie is different than the value of one calorie.	Science: Nature	hard	t
In the periodic table, Potassium's symbol is the letter K.	Science: Nature	medium	t
It was once believed that injecting shark cartilage into people would prevent them from contracting cancer.	Science: Nature	hard	t
Scientists accidentally killed the once known world's oldest living creature, a mollusc, known to be aged as 507 years old.	Science: Nature	medium	t
A defibrillator is used to start up a heartbeat once a heart has stopped beating.	Science: Nature	medium	f
Steel is an alloy of Iron and Carbon.	Science: Nature	medium	t
An atom contains a nucleus.	Science: Nature	easy	t
The Doppler effect applies to light.	Science: Nature	medium	t
A plant that has a life cycle for more than a year is known as an annual.	Science: Nature	easy	f
An Astronomical Unit is the distance between Earth and the Moon.	Science: Nature	easy	f
All program codes have to be compiled into an executable file in order to be run. This file can then be executed on any machine.	Science: Computers	medium	f
HTML stands for Hypertext Markup Language.	Science: Computers	easy	t
FLAC stands for Free Lossless Audio Condenser	Science: Computers	medium	f
Linux was first created as an alternative to Windows XP.	Science: Computers	easy	f
Ada Lovelace is often considered the first computer programmer.	Science: Computers	easy	t
The common software-programming acronym I18N comes from the term Interlocalization.	Science: Computers	medium	f
The last Windows operating system to be based on the Windows 9x kernel was Windows 98.	Science: Computers	medium	f
DHCP stands for Dynamic Host Configuration Port.	Science: Computers	hard	f
The very first recorded computer bug was a moth found inside a Harvard Mark II computer.	Science: Computers	medium	t
Pointers were not used in the original C programming language; they were added later on in C++.	Science: Computers	easy	f
The Windows ME operating system was released in the year 2000.	Science: Computers	easy	t
RAM stands for Random Access Memory.	Science: Computers	easy	t
A Boolean value of 0 represents which of these words?	Science: Computers	medium	f
It's not possible to format a write-protected DVD-R Hard Disk.	Science: Computers	medium	t
The Python programming language gets its name from the British comedy group Monty Python.	Science: Computers	easy	t
Linus Torvalds created Linux and Git.	Science: Computers	easy	t
Linus Sebastian is the creator of the Linux kernel, which went on to be used in Linux, Android, and Chrome OS.	Science: Computers	medium	f
The HTML5 standard was published in 2014.	Science: Computers	medium	t
Time on Computers is measured via the EPOX System.	Science: Computers	easy	f
The Windows 7 operating system has six main editions.	Science: Computers	easy	t
Tokyo is the capital of Japan.	Geography	easy	t
Antarctica is the largest desert in the world.	Geography	medium	t
The Sonoran Desert is located in eastern Africa.	Geography	medium	f
The capital of the US State Ohio is the city of Chillicothe.	Geography	medium	f
Is Tartu the capital of Estonia?	Geography	medium	f
The two largest ethnic groups of Belgium are Flemish and Walloon. 	Geography	hard	t
Greenland is covered with grass and Iceland covered with ice.	Geography	easy	f
Nova Scotia is on the east coast of Canada.	Geography	easy	t
There are no deserts in Europe.	Geography	easy	t
Rhode Island is actually located on the US mainland, despite its name.	Geography	easy	t
California is larger than Japan.	Geography	easy	t
St. Louis is the capital of the US State Missouri.	Geography	easy	f
The Southeast Asian island of Borneo is politically divided among 3 countries.	Geography	medium	t
New Haven is the capital city of the state of Connecticut in the United States.	Geography	easy	f
Switzerland has four national languages, English being one of them.	Geography	hard	f
Vatican City is a country.	Geography	easy	t
Gothenburg is the capital of Sweden.	Geography	medium	f
Hungary is the only country in the world beginning with H.	Geography	easy	f
There exists an island named Java.	Geography	medium	t
Japan has left-hand side traffic.	Geography	medium	t
Alaska is the largest state in the United States.	Geography	easy	t
San Marino is the only country completely surrounded by another country.	Geography	easy	f
The title of the 1969 film Krakatoa, East_of Java is incorrect, as Krakatoa is in fact west of Java.	Geography	medium	t
Mongolia was a part of the now non-existent U.S.S.R.	Geography	medium	f
You could walk from Norway to North Korea while only passing through Russia.	Geography	medium	t
A group of islands is called an 'archipelago'.	Geography	easy	t
Seoul is the capital of North Korea.	Geography	medium	f
Liechtenstein does not have an airport.	Geography	medium	t
Ottawa is the capital of Canada.	Geography	easy	t
There is an island in Japan called Ōkunoshima, A.K.A. Rabbit Island, so named because of it's huge population of rabbits.	Geography	easy	t
There are no roads in/out of Juneau, Alaska.	Geography	medium	t
The flag of South Africa features 7 colours.	Geography	medium	f
Greenland is almost as big as Africa.	Geography	easy	f
Toronto is the capital city of the North American country of Canada.	Geography	easy	f
The longest place named in the United States is Lake Chargoggagoggmanchauggagoggchaubunagungamaugg, located near Webster, MA.	Geography	medium	t
Vietnam is the only country in the world that starts with V. 	Geography	medium	f
The Republic of Malta is the smallest microstate worldwide.	Geography	easy	f
The surface area of Russia is slightly larger than that of the dwarf planet Pluto.	Geography	medium	t
Only one country in the world starts with the letter Q.	Geography	hard	t
There is a city called Rome in every continent on Earth.	Geography	easy	f
The fourth funnel of the RMS Titanic was fake designed to make the ship look more powerful and symmetrical.	History	hard	t
Sargon II, a king of the Neo-Assyrian Empire, was a direct descendant of Sargon of Akkad.	History	medium	f
Former United States Presidents John Adams and Thomas Jefferson died within hours of each other.	History	easy	t
Japan was part of the Allied Powers during World War I.	History	hard	t
In World War ll, Great Britian used inflatable tanks on the ports of Great Britain to divert Hitler away from Normandy/D-day landing.	History	easy	t
Thomas Crapper was a plumber who invented the flushing toilet.	History	easy	f
Abraham Lincoln was the first U.S. President to be born outside the borders of the thirteen original states. 	History	medium	t
Adolf Hitler was tried at the Nuremberg trials.	History	easy	f
Sir Issac Newton served as a Member of Parliament, but the only recorded time he spoke was to complain about a draft in the chambers.	History	medium	t
The M41 Walker Bulldog remains in service in some countries to this day.	History	medium	t
The Kingdom of Prussia briefly held land in Estonia.	History	hard	f
In World War II, Hawker Typhoons served in the Pacific theater.	History	medium	f
The Tiananmen Square protests of 1989 were held in Hong Kong.	History	easy	f
The Battle of Trafalgar took place on October 23rd, 1805	History	hard	f
Theodore Roosevelt Jr. was the only General involved in the initial assault on D-Day.	History	medium	t
The Cold War ended with Joseph Stalin's death.	History	easy	f
The first televised presidential debate was between Jimmy Carter and Gerald Ford.	History	medium	f
The Hundred Years' War was fought for more than a hundred years.	History	medium	t
\.


--
-- Data for Name: attempt_answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attempt_answers (email, attempt_date_time, question_text, user_answer, is_correct) FROM stdin;
testuser@example.com	2024-12-10 14:30:00	The Great Wall of China is visible from the moon.	f	t
gummybear@gmail.com	2024-12-10 07:46:46.643312	Unturned originally started as a Roblox game.	t	t
gummybear@gmail.com	2024-12-10 07:46:46.643312	The 2010 film The Social Network is a biographical drama film about MySpace founder Tom Anderson.	f	t
gummybear@gmail.com	2024-12-10 07:46:46.643312	The National Animal of Scotland is the Unicorn.	t	t
gummybear@gmail.com	2024-12-10 07:46:46.643312	The Sonoran Desert is located in eastern Africa.	t	f
gummybear@gmail.com	2024-12-10 07:46:46.643312	The Sun rises from the North.	t	f
gummybear@gmail.com	2024-12-10 07:46:46.643312	In League of Legends, there exists four different types of Dragon.	t	f
gummybear@gmail.com	2024-12-10 07:46:46.643312	Cucumbers are usually more than 90% water.	t	t
gummybear@gmail.com	2024-12-10 07:46:46.643312	In Minecraft, gold tools are faster than diamond tools.	t	t
gummybear@gmail.com	2024-12-10 07:46:46.643312	You could walk from Norway to North Korea while only passing through Russia.	t	t
gummybear@gmail.com	2024-12-10 07:46:46.643312	The Konami Code is known as Up, Up, Down, Down, Left, Right, Right, Left, B, A, Start.	t	f
jimmycricket@gmail.com	2024-12-10 07:54:24.126245	Samuel L. Jackson had the words, 'Bad Motherf*cker' in-scripted on his lightsaber during the filming of Star Wars.	t	t
jimmycricket@gmail.com	2024-12-10 07:54:24.126245	The cover of The Beatles album Abbey Road featured a Volkswagen Beetle in the background.	t	t
jimmycricket@gmail.com	2024-12-10 07:54:24.126245	In Starbound, the track played by the Decorated Music Box is named Atlas.	f	f
jimmycricket@gmail.com	2024-12-10 07:54:24.126245	The planet Mars has two moons orbiting it.	f	f
jimmycricket@gmail.com	2024-12-10 07:54:24.126245	A plant that has a life cycle for more than a year is known as an annual.	t	f
jimmycricket@gmail.com	2024-12-10 07:54:24.126245	Big the Cat is a playable character in Sonic Generations.	t	f
jimmycricket@gmail.com	2024-12-10 07:54:24.126245	In World War ll, Great Britian used inflatable tanks on the ports of Great Britain to divert Hitler away from Normandy/D-day landing.	t	t
jimmycricket@gmail.com	2024-12-10 07:54:24.126245	Liechtenstein does not have an airport.	t	t
jimmycricket@gmail.com	2024-12-10 07:54:24.126245	In the original script of The Matrix, the machines used humans as additional computing power instead of batteries.	t	t
jimmycricket@gmail.com	2024-12-10 07:54:24.126245	French is an official language in Canada.	t	t
santaclause@gmail.com	2024-12-10 08:15:48.888785	Buffalo buffalo Buffalo buffalo buffalo buffalo Buffalo buffalo. is a grammatically correct sentence.	f	f
santaclause@gmail.com	2024-12-10 08:15:48.888785	It was once believed that injecting shark cartilage into people would prevent them from contracting cancer.	t	t
santaclause@gmail.com	2024-12-10 08:15:48.888785	Neutral Milk Hotel is a real band.	f	f
santaclause@gmail.com	2024-12-10 08:15:48.888785	In Until Dawn, both characters Sam and Mike cannot be killed under any means until the final chapter of the game.	f	f
santaclause@gmail.com	2024-12-10 08:15:48.888785	The music video to The Buggle's Video Killed the Radio Star was the first music video to broadcast on MTV.	f	f
santaclause@gmail.com	2024-12-10 08:15:48.888785	NCIS stands for Navy Corps Investigative Service	t	f
santaclause@gmail.com	2024-12-10 08:15:48.888785	The singer Billie Holiday was also known as Lady Day.	f	f
santaclause@gmail.com	2024-12-10 08:15:48.888785	Time on Computers is measured via the EPOX System.	f	t
santaclause@gmail.com	2024-12-10 08:15:48.888785	The Kingdom of Prussia briefly held land in Estonia.	f	t
santaclause@gmail.com	2024-12-10 08:15:48.888785	The 2010 film The Social Network is a biographical drama film about MySpace founder Tom Anderson.	f	t
timmyturner@gmail.com	2024-12-10 08:23:27.215402	The movie Tron received an Oscar nomination for Best Visual Effects.	t	f
timmyturner@gmail.com	2024-12-10 08:23:27.215402	Ottawa is the capital of Canada.	t	t
timmyturner@gmail.com	2024-12-10 08:23:27.215402	The main character in the Half-Life franchise is named Morgan Freeman.	t	f
timmyturner@gmail.com	2024-12-10 08:23:27.215402	The Windows ME operating system was released in the year 2000.	t	t
timmyturner@gmail.com	2024-12-10 08:23:27.215402	The song Megalovania by Toby Fox made its third appearence in the 2015 RPG Undertale.	t	t
timmyturner@gmail.com	2024-12-10 08:23:27.215402	A Boolean value of 0 represents which of these words?	t	f
timmyturner@gmail.com	2024-12-10 08:23:27.215402	HTML stands for Hypertext Markup Language.	t	t
timmyturner@gmail.com	2024-12-10 08:23:27.215402	Steel is an alloy of Iron and Carbon.	t	t
timmyturner@gmail.com	2024-12-10 08:23:27.215402	Former United States Presidents John Adams and Thomas Jefferson died within hours of each other.	t	t
timmyturner@gmail.com	2024-12-10 08:23:27.215402	RAM stands for Random Access Memory.	t	t
reesespuff@gmail.com	2024-12-11 09:30:50.007999	The value of one Calorie is different than the value of one calorie.	t	t
reesespuff@gmail.com	2024-12-11 09:30:50.007999	The game Jetpack Joyride was created by Redbrick Studios.	t	f
reesespuff@gmail.com	2024-12-11 09:30:50.007999	Like with the Neanderthals, Homo sapiens sapiens also interbred with the Denisovans.	t	t
reesespuff@gmail.com	2024-12-11 09:30:50.007999	Matt Damon played an astronaut stranded on an extraterrestrial planet in both of the movies Interstellar and The Martian.	t	t
reesespuff@gmail.com	2024-12-11 09:30:50.007999	The singer Billie Holiday was also known as Lady Day.	t	t
reesespuff@gmail.com	2024-12-11 09:30:50.007999	Water always boils at 100 degrees C, 212 degrees F, 373.15K, no matter where you are.	t	f
reesespuff@gmail.com	2024-12-11 09:30:50.007999	The color of the pills in the Matrix were Blue and Yellow.	t	f
reesespuff@gmail.com	2024-12-11 09:30:50.007999	Elementary, my dear Watson is a phrase that is never truly said within the Conan Doyle books of Sherlock Holmes.	t	t
reesespuff@gmail.com	2024-12-11 09:30:50.007999	Alaska is the largest state in the United States.	t	t
reesespuff@gmail.com	2024-12-11 09:30:50.007999	There exists an island named Java.	t	t
reesespuff@gmail.com	2024-12-11 09:42:03.773266	Cube, Cube 2: Hypercube and Cube Zero were directed by the same person.	t	f
reesespuff@gmail.com	2024-12-11 09:42:03.773266	Sitting for more than three hours a day can cut two years off a person's life expectancy.	t	t
reesespuff@gmail.com	2024-12-11 09:42:03.773266	27 Club is a term used to refer to a list of famous actors, musicians, and artists who died at the age of 27.	t	t
reesespuff@gmail.com	2024-12-11 09:42:03.773266	The pickled gherkin was first added to hamburgers because a US health law required all fast-food to include a source of Vitamin C.	t	f
reesespuff@gmail.com	2024-12-11 09:42:03.773266	In Alfred Hitchcock's film 'Psycho' it is said he used chocolate syrup to simulate the blood in the famous shower scene from 	t	t
reesespuff@gmail.com	2024-12-11 09:42:03.773266	In the periodic table, Potassium's symbol is the letter K.	t	t
reesespuff@gmail.com	2024-12-11 09:42:03.773266	French is an official language in Canada.	t	t
reesespuff@gmail.com	2024-12-11 09:42:03.773266	Arcade Fire's 'The Suburbs' won the Album of the Year award in the 2011 Grammys.	t	t
reesespuff@gmail.com	2024-12-11 09:42:03.773266	Toronto is the capital city of the North American country of Canada.	t	f
reesespuff@gmail.com	2024-12-11 09:42:03.773266	Is Tartu the capital of Estonia?	t	f
reesespuff@gmail.com	2024-12-11 09:50:14.076427	Minions was released on the June 10th, 2015.	f	t
reesespuff@gmail.com	2024-12-11 09:50:14.076427	The HTML5 standard was published in 2014.	f	f
reesespuff@gmail.com	2024-12-11 09:50:14.076427	The Windows ME operating system was released in the year 2000.	f	f
reesespuff@gmail.com	2024-12-11 09:50:14.076427	The M41 Walker Bulldog remains in service in some countries to this day.	f	f
reesespuff@gmail.com	2024-12-11 09:50:14.076427	Sir Issac Newton served as a Member of Parliament, but the only recorded time he spoke was to complain about a draft in the chambers.	f	f
reesespuff@gmail.com	2024-12-11 09:50:14.076427	The color of the pills in the Matrix were Blue and Yellow.	f	t
reesespuff@gmail.com	2024-12-11 09:50:14.076427	All of these maps were in Tom Clancy's Rainbow Six Siege on its initial release: House, Clubhouse, Border, Consulate.	f	t
reesespuff@gmail.com	2024-12-11 09:50:14.076427	The surface area of Russia is slightly larger than that of the dwarf planet Pluto.	f	f
reesespuff@gmail.com	2024-12-11 09:50:14.076427	Santa Claus is a variety of melon.	f	f
reesespuff@gmail.com	2024-12-11 09:50:14.076427	In the movie The Revenant, DiCaprio's character hunts down the killer of his son.	f	f
beabadoobee@yahoo.com	2024-12-11 10:22:33.092699	The band STRFKR was also briefly known as Pyramiddd.	f	f
beabadoobee@yahoo.com	2024-12-11 10:22:33.092699	It was once believed that injecting shark cartilage into people would prevent them from contracting cancer.	t	t
beabadoobee@yahoo.com	2024-12-11 10:22:33.092699	In Call Of Duty: World At War, the first appearance of the PPSH-41 in Zombies was in the map Der Riese.	t	f
beabadoobee@yahoo.com	2024-12-11 10:22:33.092699	In Minecraft, gold tools are faster than diamond tools.	f	f
beabadoobee@yahoo.com	2024-12-11 10:22:33.092699	The song Mystery Train was released by artist Little Junior's Blue Flames in 1953.	f	f
beabadoobee@yahoo.com	2024-12-11 10:22:33.092699	The Kingdom of Prussia briefly held land in Estonia.	f	t
beabadoobee@yahoo.com	2024-12-11 10:22:33.092699	Japan was part of the Allied Powers during World War I.	f	f
beabadoobee@yahoo.com	2024-12-11 10:22:33.092699	The Battle of Trafalgar took place on October 23rd, 1805	f	t
beabadoobee@yahoo.com	2024-12-11 10:22:33.092699	Stagecoach owned South West Trains before losing the rights to FirstGroup and MTR in March of 2017.	f	f
beabadoobee@yahoo.com	2024-12-11 10:22:33.092699	Switzerland has four national languages, English being one of them.	f	t
beabadoobee@yahoo.com	2024-12-11 10:42:18.918151	Shub-Niggurath is a creature that was created by \tJ. R. R. Tolkien in his novel The Lord of The Rings.	t	f
beabadoobee@yahoo.com	2024-12-11 10:42:18.918151	Half-Life 2 runs on the Source Engine.	t	t
beabadoobee@yahoo.com	2024-12-11 10:42:18.918151	Resident Evil 7 is the first first-person Resident Evil game.	t	f
beabadoobee@yahoo.com	2024-12-11 10:42:18.918151	Adolf Hitler was tried at the Nuremberg trials.	t	f
beabadoobee@yahoo.com	2024-12-11 10:42:18.918151	The movie The Nightmare before Christmas was all done with physical objects.	t	t
beabadoobee@yahoo.com	2024-12-11 10:42:18.918151	In Sonic Adventure, you are able to transform into Super Sonic at will after completing the main story.	t	f
beabadoobee@yahoo.com	2024-12-11 10:42:18.918151	Stevie Wonder's real name is Stevland Hardaway Morris.	t	t
beabadoobee@yahoo.com	2024-12-11 10:42:18.918151	When you cry in space, your tears stick to your face.	t	t
beabadoobee@yahoo.com	2024-12-11 10:42:18.918151	The game Jetpack Joyride was created by Redbrick Studios.	t	f
beabadoobee@yahoo.com	2024-12-11 10:42:18.918151	Leonardo DiCaprio won an Oscar for Best Actor in 2004's The Aviator.	t	f
boogie@gmail.com	2024-12-11 11:17:46.859982	The Doppler effect applies to light.	t	t
boogie@gmail.com	2024-12-11 11:17:46.859982	Like with the Neanderthals, Homo sapiens sapiens also interbred with the Denisovans.	t	t
boogie@gmail.com	2024-12-11 11:17:46.859982	Gothenburg is the capital of Sweden.	t	f
boogie@gmail.com	2024-12-11 11:17:46.859982	Amazon acquired Twitch in August 2014 for $970 million dollars.	t	t
boogie@gmail.com	2024-12-11 11:17:46.859982	Tachycardia or Tachyarrhythmia refers to a resting heart-rate near or over 100 BPM.	t	t
boogie@gmail.com	2024-12-11 11:17:46.859982	In the game Subnautica, a Cave Crawler will attack you.	t	t
boogie@gmail.com	2024-12-11 11:17:46.859982	In Rocket League, you can play Basketball.	t	t
boogie@gmail.com	2024-12-11 11:17:46.859982	3 members of 2 Live Crew were arrested for playing songs from their album, As Nasty As They Wanna Be, live.	t	t
boogie@gmail.com	2024-12-11 11:17:46.859982	A Boolean value of 0 represents which of these words?	t	f
boogie@gmail.com	2024-12-11 11:17:46.859982	Instant mashed potatoes were invented by Canadian Edward Asselbergs in 1962.	t	t
starwars@gmail.com	2024-12-11 11:34:29.957463	In the video game Splatoon, the playable characters were originally going to be rabbits instead of squids.	t	t
starwars@gmail.com	2024-12-11 11:34:29.957463	The Great Wall of China is visible from the moon.	t	f
starwars@gmail.com	2024-12-11 11:34:29.957463	The Windows ME operating system was released in the year 2000.	t	t
starwars@gmail.com	2024-12-11 11:34:29.957463	In the Monster Hunter Series, it is possible to capture Elder Dragons.	t	f
starwars@gmail.com	2024-12-11 11:34:29.957463	Stevie Wonder's real name is Stevland Hardaway Morris.	t	t
starwars@gmail.com	2024-12-11 11:34:29.957463	The Konami Code is known as Up, Up, Down, Down, Left, Right, Right, Left, B, A, Start.	t	f
starwars@gmail.com	2024-12-11 11:34:29.957463	In World War ll, Great Britian used inflatable tanks on the ports of Great Britain to divert Hitler away from Normandy/D-day landing.	t	t
starwars@gmail.com	2024-12-11 11:34:29.957463	The Sun rises from the North.	t	f
starwars@gmail.com	2024-12-11 11:34:29.957463	In Sonic the Hedgehog universe, Tails' real name is Miles Prower.	t	t
starwars@gmail.com	2024-12-11 11:34:29.957463	In Super Mario 64, collecting 100 coins on a level will give you a 1-UP.	t	f
starwars@gmail.com	2024-12-11 11:36:54.940982	All of these maps were in Tom Clancy's Rainbow Six Siege on its initial release: House, Clubhouse, Border, Consulate.	f	t
starwars@gmail.com	2024-12-11 11:36:54.940982	The song Mystery Train was released by artist Little Junior's Blue Flames in 1953.	f	f
starwars@gmail.com	2024-12-11 11:36:54.940982	In Call Of Duty: World At War, the first appearance of the PPSH-41 in Zombies was in the map Der Riese.	f	t
starwars@gmail.com	2024-12-11 11:36:54.940982	The value of one Calorie is different than the value of one calorie.	t	t
starwars@gmail.com	2024-12-11 11:36:54.940982	The Kingdom of Prussia briefly held land in Estonia.	f	t
starwars@gmail.com	2024-12-11 11:36:54.940982	This is the correct spelling of Supercalifragilisticexpialidocious.	t	t
starwars@gmail.com	2024-12-11 11:36:54.940982	Cube, Cube 2: Hypercube and Cube Zero were directed by the same person.	f	t
starwars@gmail.com	2024-12-11 11:36:54.940982	In Harry Potter and the Deathly Hallows, Hermione destroyed the fourth Horcrux by stabbing it with the Sword of Gryffindor.	t	f
starwars@gmail.com	2024-12-11 11:36:54.940982	The fourth funnel of the RMS Titanic was fake designed to make the ship look more powerful and symmetrical.	t	t
starwars@gmail.com	2024-12-11 11:36:54.940982	Harry Potter was born on July 31st, 1980.	f	f
lilliana2000@gmail.com	2024-12-11 11:57:56.065478	In Undertale, having a Fun Value set to 56-57 will play the Wrong Number Song Call.	f	t
lilliana2000@gmail.com	2024-12-11 11:57:56.065478	All of these maps were in Tom Clancy's Rainbow Six Siege on its initial release: House, Clubhouse, Border, Consulate.	f	t
lilliana2000@gmail.com	2024-12-11 11:57:56.065478	NCIS stands for Navy Corps Investigative Service	f	t
lilliana2000@gmail.com	2024-12-11 11:57:56.065478	Unturned originally started as a Roblox game.	f	f
lilliana2000@gmail.com	2024-12-11 11:57:56.065478	This is the correct spelling of Supercalifragilisticexpialidocious.	f	f
lilliana2000@gmail.com	2024-12-11 11:57:56.065478	Number 16 Bus Shelter was a child's name that was approved by the New Zealand government.	f	f
lilliana2000@gmail.com	2024-12-11 11:57:56.065478	Switzerland has four national languages, English being one of them.	f	t
lilliana2000@gmail.com	2024-12-11 11:57:56.065478	The fourth funnel of the RMS Titanic was fake designed to make the ship look more powerful and symmetrical.	f	f
lilliana2000@gmail.com	2024-12-11 11:57:56.065478	In Minecraft, gold tools are faster than diamond tools.	f	f
lilliana2000@gmail.com	2024-12-11 11:57:56.065478	Only one country in the world starts with the letter Q.	f	f
tester@gmail.com	2024-12-11 12:11:53.564061	HTML stands for Hypertext Markup Language.	t	t
tester@gmail.com	2024-12-11 12:11:53.564061	The game Jetpack Joyride was created by Redbrick Studios.	t	f
tester@gmail.com	2024-12-11 12:11:53.564061	New Haven is the capital city of the state of Connecticut in the United States.	t	f
tester@gmail.com	2024-12-11 12:11:53.564061	RAM stands for Random Access Memory.	t	t
tester@gmail.com	2024-12-11 12:11:53.564061	Green Eggs and Ham consists of only 50 different words.	t	t
tester@gmail.com	2024-12-11 12:11:53.564061	In RuneScape, one must complete the Dragon Slayer quest before equipping Rune Platelegs.	t	f
tester@gmail.com	2024-12-11 12:11:53.564061	The color orange is named after the fruit.	t	t
tester@gmail.com	2024-12-11 12:11:53.564061	In the video game Splatoon, the playable characters were originally going to be rabbits instead of squids.	t	t
tester@gmail.com	2024-12-11 12:11:53.564061	Ananas is mostly used as the word for Pineapple in other languages.	t	t
tester@gmail.com	2024-12-11 12:11:53.564061	The National Animal of Scotland is the Unicorn.	t	t
zoomies@gmail.com	2024-12-11 12:58:19.765292	In Sonic the Hedgehog universe, Tails' real name is Miles Prower.	t	t
zoomies@gmail.com	2024-12-11 12:58:19.765292	In Until Dawn, both characters Sam and Mike cannot be killed under any means until the final chapter of the game.	t	t
zoomies@gmail.com	2024-12-11 12:58:19.765292	Matt Damon played an astronaut stranded on an extraterrestrial planet in both of the movies Interstellar and The Martian.	t	t
zoomies@gmail.com	2024-12-11 12:58:19.765292	Muse is a British (English) rock band	t	t
zoomies@gmail.com	2024-12-11 12:58:19.765292	The color orange is named after the fruit.	t	t
zoomies@gmail.com	2024-12-11 12:58:19.765292	Jingle Bells was originally meant for Thanksgiving	t	t
zoomies@gmail.com	2024-12-11 12:58:19.765292	Ewan McGregor did not know the name of the second prequel film of Star Wars during and after filming.	t	t
zoomies@gmail.com	2024-12-11 12:58:19.765292	Shub-Niggurath is a creature that was created by \tJ. R. R. Tolkien in his novel The Lord of The Rings.	t	f
zoomies@gmail.com	2024-12-11 12:58:19.765292	In 2010, Twitter and the United States Library of Congress partnered together to archive every tweet by American citizens.	t	t
zoomies@gmail.com	2024-12-11 12:58:19.765292	The Great Wall of China is visible from the moon.	t	f
zoomies@gmail.com	2024-12-11 12:59:34.271304	In Harry Potter and the Deathly Hallows, Hermione destroyed the fourth Horcrux by stabbing it with the Sword of Gryffindor.	f	t
zoomies@gmail.com	2024-12-11 12:59:34.271304	This is the correct spelling of Supercalifragilisticexpialidocious.	f	f
zoomies@gmail.com	2024-12-11 12:59:34.271304	Harry Potter was born on July 31st, 1980.	f	f
zoomies@gmail.com	2024-12-11 12:59:34.271304	It was once believed that injecting shark cartilage into people would prevent them from contracting cancer.	f	f
zoomies@gmail.com	2024-12-11 12:59:34.271304	Cube, Cube 2: Hypercube and Cube Zero were directed by the same person.	f	t
zoomies@gmail.com	2024-12-11 12:59:34.271304	Number 16 Bus Shelter was a child's name that was approved by the New Zealand government.	f	f
zoomies@gmail.com	2024-12-11 12:59:34.271304	Unturned originally started as a Roblox game.	f	f
zoomies@gmail.com	2024-12-11 12:59:34.271304	Only one country in the world starts with the letter Q.	f	f
zoomies@gmail.com	2024-12-11 12:59:34.271304	The weapon Clint Eastwood uses in Dirty Harry was a .44 Automag.	f	t
zoomies@gmail.com	2024-12-11 12:59:34.271304	The band STRFKR was also briefly known as Pyramiddd.	f	f
zoomies@gmail.com	2024-12-11 14:01:43.433984	In the original Star Wars trilogy, Alec Guinness provided the voice for Darth Vader.	t	f
zoomies@gmail.com	2024-12-11 14:01:43.433984	A Saxophone is a brass instrument.	t	f
zoomies@gmail.com	2024-12-11 14:01:43.433984	The book 1984 was published in 1949.	f	f
zoomies@gmail.com	2024-12-11 14:01:43.433984	In Team Fortress 2, being disguised as a scout or medic results in a speed boost.	f	t
zoomies@gmail.com	2024-12-11 14:01:43.433984	In Pok&eacute;mon Sun and Moon, a male Salandit can evolve to a Salazzle.	f	t
zoomies@gmail.com	2024-12-11 14:01:43.433984	American rapper Dr. Dre actually has a Ph.D. doctorate.	f	t
zoomies@gmail.com	2024-12-11 14:01:43.433984	In the movie The Revenant, DiCaprio's character hunts down the killer of his son.	f	f
zoomies@gmail.com	2024-12-11 14:01:43.433984	Water always boils at 100 degrees C, 212 degrees F, 373.15K, no matter where you are.	f	t
zoomies@gmail.com	2024-12-11 14:01:43.433984	In Sonic Adventure, you are able to transform into Super Sonic at will after completing the main story.	f	t
zoomies@gmail.com	2024-12-11 14:01:43.433984	Linus Torvalds created Linux and Git.	f	f
zoomies@gmail.com	2024-12-11 14:04:25.395027	Vietnam is the only country in the world that starts with V. 	f	t
zoomies@gmail.com	2024-12-11 14:04:25.395027	There aren't any live-action clones in Star Wars: Episode III - Revenge of the Sith.	f	f
zoomies@gmail.com	2024-12-11 14:04:25.395027	The M41 Walker Bulldog remains in service in some countries to this day.	f	f
zoomies@gmail.com	2024-12-11 14:04:25.395027	The capital of the US State Ohio is the city of Chillicothe.	f	t
zoomies@gmail.com	2024-12-11 14:04:25.395027	Popcorn was invented in 1871 by Frederick W. Rueckheim in the USA where he sold the snack on the streets of Chicago.	f	t
zoomies@gmail.com	2024-12-11 14:04:25.395027	Sargon II, a king of the Neo-Assyrian Empire, was a direct descendant of Sargon of Akkad.	f	t
zoomies@gmail.com	2024-12-11 14:04:25.395027	Ashley Frangipane performs under the stage name Halsey.	f	f
zoomies@gmail.com	2024-12-11 14:04:25.395027	Sitting for more than three hours a day can cut two years off a person's life expectancy.	f	f
zoomies@gmail.com	2024-12-11 14:04:25.395027	FLAC stands for Free Lossless Audio Condenser	f	t
zoomies@gmail.com	2024-12-11 14:04:25.395027	The Xenomorph from the science fiction film Alien has acidic blood.	f	f
\.


--
-- PostgreSQL database dump complete
--

