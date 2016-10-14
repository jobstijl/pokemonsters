--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pokemon_go_kaggle; Type: TABLE; Schema: public; Owner: jobstijl
--

CREATE TABLE pokemon_go_kaggle (
    index integer NOT NULL,
    name character varying(128),
    type_1 character varying(128),
    type_2 character varying(128),
    max_cp integer,
    max_hp integer,
    image_url character varying(1024)
);


ALTER TABLE pokemon_go_kaggle OWNER TO jobstijl;

--
-- Data for Name: pokemon_go_kaggle; Type: TABLE DATA; Schema: public; Owner: jobstijl
--

COPY pokemon_go_kaggle (index, name, type_1, type_2, max_cp, max_hp, image_url) FROM stdin;
1	Bulbasaur	Grass	Poison	1079	83	http://cdn.bulbagarden.net/upload/thumb/2/21/001Bulbasaur.png/250px-001Bulbasaur.png
2	Ivysaur	Grass	Poison	1643	107	http://cdn.bulbagarden.net/upload/thumb/7/73/002Ivysaur.png/250px-002Ivysaur.png
3	Venusaur	Grass	Poison	2598	138	http://cdn.bulbagarden.net/upload/thumb/a/ae/003Venusaur.png/250px-003Venusaur.png
6	Charizard	Fire	Flying	2620	135	http://cdn.bulbagarden.net/upload/thumb/7/7e/006Charizard.png/250px-006Charizard.png
7	Squirtle	Water	\N	1015	81	http://cdn.bulbagarden.net/upload/thumb/3/39/007Squirtle.png/250px-007Squirtle.png
8	Wartortle	Water	\N	1594	105	http://cdn.bulbagarden.net/upload/thumb/0/0c/008Wartortle.png/250px-008Wartortle.png
9	Blastoise	Water	\N	2560	137	http://cdn.bulbagarden.net/upload/thumb/0/02/009Blastoise.png/250px-009Blastoise.png
10	Caterpie	Bug	\N	446	83	http://cdn.bulbagarden.net/upload/thumb/5/5d/010Caterpie.png/250px-010Caterpie.png
11	Metapod	Bug	\N	481	91	http://cdn.bulbagarden.net/upload/thumb/c/cd/011Metapod.png/250px-011Metapod.png
12	Butterfree	Bug	Flying	1465	107	http://cdn.bulbagarden.net/upload/thumb/d/d1/012Butterfree.png/250px-012Butterfree.png
13	Weedle	Bug	Poison	452	75	http://cdn.bulbagarden.net/upload/thumb/d/df/013Weedle.png/250px-013Weedle.png
14	Kakuna	Bug	Poison	488	83	http://cdn.bulbagarden.net/upload/thumb/f/f0/014Kakuna.png/250px-014Kakuna.png
15	Beedrill	Bug	Poison	1450	115	http://cdn.bulbagarden.net/upload/thumb/6/61/015Beedrill.png/250px-015Beedrill.png
16	Pidgey	Normal	Flying	684	75	http://cdn.bulbagarden.net/upload/thumb/5/55/016Pidgey.png/250px-016Pidgey.png
17	Pidgeotto	Normal	Flying	1232	111	http://cdn.bulbagarden.net/upload/thumb/7/7a/017Pidgeotto.png/250px-017Pidgeotto.png
18	Pidgeot	Normal	Flying	2106	143	http://cdn.bulbagarden.net/upload/thumb/5/57/018Pidgeot.png/250px-018Pidgeot.png
19	Rattata	Normal	\N	585	59	http://cdn.bulbagarden.net/upload/thumb/4/46/019Rattata.png/250px-019Rattata.png
20	Raticate	Normal	\N	1454	99	http://cdn.bulbagarden.net/upload/thumb/f/f4/020Raticate.png/250px-020Raticate.png
21	Spearow	Normal	Flying	691	75	http://cdn.bulbagarden.net/upload/thumb/8/8b/021Spearow.png/250px-021Spearow.png
22	Fearow	Normal	Flying	1758	115	http://cdn.bulbagarden.net/upload/thumb/a/a0/022Fearow.png/250px-022Fearow.png
23	Ekans	Poison	\N	830	67	http://cdn.bulbagarden.net/upload/thumb/f/fa/023Ekans.png/250px-023Ekans.png
24	Arbok	Poison	\N	1779	107	http://cdn.bulbagarden.net/upload/thumb/c/cd/024Arbok.png/250px-024Arbok.png
25	Pikachu	Electric	\N	894	67	http://cdn.bulbagarden.net/upload/thumb/0/0d/025Pikachu.png/250px-025Pikachu.png
26	Raichu	Electric	\N	2042	107	http://cdn.bulbagarden.net/upload/thumb/8/88/026Raichu.png/250px-026Raichu.png
27	Sandshrew	Ground	\N	804	91	http://cdn.bulbagarden.net/upload/thumb/9/9e/027Sandshrew.png/250px-027Sandshrew.png
28	Sandslash	Ground	\N	1823	130	http://cdn.bulbagarden.net/upload/thumb/0/0b/028Sandslash.png/250px-028Sandslash.png
29	Nidoran♀	Poison	\N	882	99	http://cdn.bulbagarden.net/upload/thumb/8/81/029Nidoran.png/250px-029Nidoran.png
30	Nidorina	Poison	\N	1414	122	http://cdn.bulbagarden.net/upload/thumb/c/cd/030Nidorina.png/250px-030Nidorina.png
31	Nidoqueen	Poison	Ground	2502	154	http://cdn.bulbagarden.net/upload/thumb/b/bf/031Nidoqueen.png/250px-031Nidoqueen.png
32	Nidoran♂	Poison	\N	849	84	http://cdn.bulbagarden.net/upload/thumb/4/4a/032Nidoran.png/250px-032Nidoran.png
33	Nidorino	Poison	\N	1382	108	http://cdn.bulbagarden.net/upload/thumb/9/9f/033Nidorino.png/250px-033Nidorino.png
34	Nidoking	Poison	Ground	2492	140	http://cdn.bulbagarden.net/upload/thumb/c/c6/034Nidoking.png/250px-034Nidoking.png
35	Clefairy	Fairy	\N	1209	122	http://cdn.bulbagarden.net/upload/thumb/f/f4/035Clefairy.png/250px-035Clefairy.png
36	Clefable	Fairy	\N	2414	162	http://cdn.bulbagarden.net/upload/thumb/a/a9/036Clefable.png/250px-036Clefable.png
37	Vulpix	Fire	\N	837	72	http://cdn.bulbagarden.net/upload/thumb/6/60/037Vulpix.png/250px-037Vulpix.png
38	Ninetales	Fire	\N	2203	127	http://cdn.bulbagarden.net/upload/thumb/0/05/038Ninetales.png/250px-038Ninetales.png
39	Jigglypuff	Normal	Fairy	924	194	http://cdn.bulbagarden.net/upload/thumb/3/3e/039Jigglypuff.png/250px-039Jigglypuff.png
40	Wigglytuff	Normal	Fairy	2192	233	http://cdn.bulbagarden.net/upload/thumb/9/92/040Wigglytuff.png/250px-040Wigglytuff.png
41	Zubat	Poison	Flying	647	75	http://cdn.bulbagarden.net/upload/thumb/d/da/041Zubat.png/250px-041Zubat.png
42	Golbat	Poison	Flying	1935	130	http://cdn.bulbagarden.net/upload/thumb/0/0c/042Golbat.png/250px-042Golbat.png
43	Oddish	Grass	Poison	1156	83	http://cdn.bulbagarden.net/upload/thumb/4/43/043Oddish.png/250px-043Oddish.png
44	Gloom	Grass	Poison	1701	107	http://cdn.bulbagarden.net/upload/thumb/2/2a/044Gloom.png/250px-044Gloom.png
45	Vileplume	Grass	Poison	2510	130	http://cdn.bulbagarden.net/upload/thumb/6/6a/045Vileplume.png/250px-045Vileplume.png
46	Paras	Bug	Grass	923	67	http://cdn.bulbagarden.net/upload/thumb/d/d4/046Paras.png/250px-046Paras.png
47	Parasect	Bug	Grass	1759	107	http://cdn.bulbagarden.net/upload/thumb/8/80/047Parasect.png/250px-047Parasect.png
48	Venonat	Bug	Poison	1036	107	http://cdn.bulbagarden.net/upload/thumb/a/ad/048Venonat.png/250px-048Venonat.png
49	Venomoth	Bug	Poison	1903	122	http://cdn.bulbagarden.net/upload/thumb/d/d3/049Venomoth.png/250px-049Venomoth.png
50	Diglett	Ground	\N	460	27	http://cdn.bulbagarden.net/upload/thumb/3/31/050Diglett.png/250px-050Diglett.png
51	Dugtrio	Ground	\N	1176	67	http://cdn.bulbagarden.net/upload/thumb/e/e5/051Dugtrio.png/250px-051Dugtrio.png
52	Meowth	Normal	\N	761	75	http://cdn.bulbagarden.net/upload/thumb/d/d6/052Meowth.png/250px-052Meowth.png
53	Persian	Normal	\N	1643	115	http://cdn.bulbagarden.net/upload/thumb/1/13/053Persian.png/250px-053Persian.png
54	Psyduck	Water	\N	1117	91	http://cdn.bulbagarden.net/upload/thumb/5/53/054Psyduck.png/250px-054Psyduck.png
55	Golduck	Water	\N	2403	138	http://cdn.bulbagarden.net/upload/thumb/f/fe/055Golduck.png/250px-055Golduck.png
56	Mankey	Fighting	\N	884	75	http://cdn.bulbagarden.net/upload/thumb/4/41/056Mankey.png/250px-056Mankey.png
5	Charmeleon	Fire		1568	103	http://cdn.bulbagarden.net/upload/thumb/4/4a/005Charmeleon.png/250px-005Charmeleon.png
57	Primeape	Fighting	\N	1877	115	http://cdn.bulbagarden.net/upload/thumb/9/9a/057Primeape.png/250px-057Primeape.png
58	Growlithe	Fire	\N	1344	99	http://cdn.bulbagarden.net/upload/thumb/3/3d/058Growlithe.png/250px-058Growlithe.png
59	Arcanine	Fire	\N	3005	154	http://cdn.bulbagarden.net/upload/thumb/b/b8/059Arcanine.png/250px-059Arcanine.png
60	Poliwag	Water	\N	801	75	http://cdn.bulbagarden.net/upload/thumb/4/49/060Poliwag.png/250px-060Poliwag.png
61	Poliwhirl	Water	\N	1350	115	http://cdn.bulbagarden.net/upload/thumb/a/a9/061Poliwhirl.png/250px-061Poliwhirl.png
62	Poliwrath	Water	Fighting	2523	154	http://cdn.bulbagarden.net/upload/thumb/2/2d/062Poliwrath.png/250px-062Poliwrath.png
63	Abra	Psychic	\N	604	51	http://cdn.bulbagarden.net/upload/thumb/6/62/063Abra.png/250px-063Abra.png
64	Kadabra	Psychic	\N	1140	75	http://cdn.bulbagarden.net/upload/thumb/9/97/064Kadabra.png/250px-064Kadabra.png
65	Alakazam	Psychic	\N	1826	99	http://cdn.bulbagarden.net/upload/thumb/c/cc/065Alakazam.png/250px-065Alakazam.png
66	Machop	Fighting	\N	1097	122	http://cdn.bulbagarden.net/upload/thumb/8/85/066Machop.png/250px-066Machop.png
67	Machoke	Fighting	\N	1773	138	http://cdn.bulbagarden.net/upload/thumb/8/8e/067Machoke.png/250px-067Machoke.png
68	Machamp	Fighting	\N	2612	154	http://cdn.bulbagarden.net/upload/thumb/8/8f/068Machamp.png/250px-068Machamp.png
69	Bellsprout	Grass	Poison	1125	91	http://cdn.bulbagarden.net/upload/thumb/a/a2/069Bellsprout.png/250px-069Bellsprout.png
70	Weepinbell	Grass	Poison	1736	115	http://cdn.bulbagarden.net/upload/thumb/9/9f/070Weepinbell.png/250px-070Weepinbell.png
71	Victreebel	Grass	Poison	2548	138	http://cdn.bulbagarden.net/upload/thumb/b/be/071Victreebel.png/250px-071Victreebel.png
72	Tentacool	Water	Poison	911	75	http://cdn.bulbagarden.net/upload/thumb/4/4e/072Tentacool.png/250px-072Tentacool.png
73	Tentacruel	Water	Poison	2236	138	http://cdn.bulbagarden.net/upload/thumb/f/f6/073Tentacruel.png/250px-073Tentacruel.png
74	Geodude	Rock	Ground	855	75	http://cdn.bulbagarden.net/upload/thumb/9/98/074Geodude.png/250px-074Geodude.png
75	Graveler	Rock	Ground	1443	99	http://cdn.bulbagarden.net/upload/thumb/7/75/075Graveler.png/250px-075Graveler.png
76	Golem	Rock	Ground	2319	138	http://cdn.bulbagarden.net/upload/thumb/f/f2/076Golem.png/250px-076Golem.png
77	Ponyta	Fire	\N	1526	91	http://cdn.bulbagarden.net/upload/thumb/3/3b/077Ponyta.png/250px-077Ponyta.png
78	Rapidash	Fire	\N	2215	115	http://cdn.bulbagarden.net/upload/thumb/3/3f/078Rapidash.png/250px-078Rapidash.png
79	Slowpoke	Water	Psychic	1227	154	http://cdn.bulbagarden.net/upload/thumb/7/70/079Slowpoke.png/250px-079Slowpoke.png
80	Slowbro	Water	Psychic	2615	162	http://cdn.bulbagarden.net/upload/thumb/8/80/080Slowbro.png/250px-080Slowbro.png
81	Magnemite	Electric	Steel	897	51	http://cdn.bulbagarden.net/upload/thumb/6/6c/081Magnemite.png/250px-081Magnemite.png
82	Magneton	Electric	Steel	1893	91	http://cdn.bulbagarden.net/upload/thumb/7/72/082Magneton.png/250px-082Magneton.png
83	Farfetch'd	Normal	Flying	1272	94	http://cdn.bulbagarden.net/upload/thumb/f/f8/083Farfetch'd.png/250px-083Farfetch'd.png
84	Doduo	Normal	Flying	861	67	http://cdn.bulbagarden.net/upload/thumb/5/54/084Doduo.png/250px-084Doduo.png
85	Dodrio	Normal	Flying	1849	107	http://cdn.bulbagarden.net/upload/thumb/9/93/085Dodrio.png/250px-085Dodrio.png
86	Seel	Water	\N	1114	115	http://cdn.bulbagarden.net/upload/thumb/1/1f/086Seel.png/250px-086Seel.png
87	Dewgong	Water	Ice	2161	154	http://cdn.bulbagarden.net/upload/thumb/c/c7/087Dewgong.png/250px-087Dewgong.png
88	Grimer	Poison	\N	1293	138	http://cdn.bulbagarden.net/upload/thumb/a/a0/088Grimer.png/250px-088Grimer.png
89	Muk	Poison	\N	2621	178	http://cdn.bulbagarden.net/upload/thumb/7/7c/089Muk.png/250px-089Muk.png
90	Shellder	Water	\N	828	59	http://cdn.bulbagarden.net/upload/thumb/4/40/090Shellder.png/250px-090Shellder.png
91	Cloyster	Water	Ice	2067	91	http://cdn.bulbagarden.net/upload/thumb/1/1d/091Cloyster.png/250px-091Cloyster.png
92	Gastly	Ghost	Poison	810	59	http://cdn.bulbagarden.net/upload/thumb/c/ca/092Gastly.png/250px-092Gastly.png
93	Haunter	Ghost	Poison	1390	83	http://cdn.bulbagarden.net/upload/thumb/6/62/093Haunter.png/250px-093Haunter.png
94	Gengar	Ghost	Poison	2093	107	http://cdn.bulbagarden.net/upload/thumb/c/c6/094Gengar.png/250px-094Gengar.png
95	Onix	Rock	Ground	863	67	http://cdn.bulbagarden.net/upload/thumb/9/9a/095Onix.png/250px-095Onix.png
96	Drowzee	Psychic	\N	1082	107	http://cdn.bulbagarden.net/upload/thumb/3/3e/096Drowzee.png/250px-096Drowzee.png
97	Hypno	Psychic	\N	2199	146	http://cdn.bulbagarden.net/upload/thumb/0/0a/097Hypno.png/250px-097Hypno.png
98	Krabby	Water	\N	797	59	http://cdn.bulbagarden.net/upload/thumb/a/a7/098Krabby.png/250px-098Krabby.png
99	Kingler	Water	\N	1836	99	http://cdn.bulbagarden.net/upload/thumb/7/71/099Kingler.png/250px-099Kingler.png
100	Voltorb	Electric	\N	845	75	http://cdn.bulbagarden.net/upload/thumb/d/da/100Voltorb.png/250px-100Voltorb.png
101	Electrode	Electric	\N	1657	107	http://cdn.bulbagarden.net/upload/thumb/8/84/101Electrode.png/250px-101Electrode.png
102	Exeggcute	Grass	Psychic	1107	107	http://cdn.bulbagarden.net/upload/thumb/a/af/102Exeggcute.png/250px-102Exeggcute.png
103	Exeggutor	Grass	Psychic	2976	162	http://cdn.bulbagarden.net/upload/thumb/2/24/103Exeggutor.png/250px-103Exeggutor.png
104	Cubone	Ground	\N	1013	91	http://cdn.bulbagarden.net/upload/thumb/2/2a/104Cubone.png/250px-104Cubone.png
105	Marowak	Ground	\N	1668	107	http://cdn.bulbagarden.net/upload/thumb/9/98/105Marowak.png/250px-105Marowak.png
106	Hitmonlee	Fighting	\N	1503	91	http://cdn.bulbagarden.net/upload/thumb/3/32/106Hitmonlee.png/250px-106Hitmonlee.png
107	Hitmonchan	Fighting	\N	1527	91	http://cdn.bulbagarden.net/upload/thumb/a/a3/107Hitmonchan.png/250px-107Hitmonchan.png
108	Lickitung	Normal	\N	1638	154	http://cdn.bulbagarden.net/upload/thumb/0/00/108Lickitung.png/250px-108Lickitung.png
109	Koffing	Poison	\N	1160	75	http://cdn.bulbagarden.net/upload/thumb/1/17/109Koffing.png/250px-109Koffing.png
110	Weezing	Poison	\N	2266	115	http://cdn.bulbagarden.net/upload/thumb/4/42/110Weezing.png/250px-110Weezing.png
111	Rhyhorn	Ground	Rock	1190	138	http://cdn.bulbagarden.net/upload/thumb/9/9b/111Rhyhorn.png/250px-111Rhyhorn.png
112	Rhydon	Ground	Rock	2259	178	http://cdn.bulbagarden.net/upload/thumb/4/47/112Rhydon.png/250px-112Rhydon.png
113	Chansey	Normal	\N	679	408	http://cdn.bulbagarden.net/upload/thumb/c/cd/113Chansey.png/250px-113Chansey.png
114	Tangela	Grass	\N	1752	115	http://cdn.bulbagarden.net/upload/thumb/3/3e/114Tangela.png/250px-114Tangela.png
115	Kangaskhan	Normal	\N	2057	178	http://cdn.bulbagarden.net/upload/thumb/4/4e/115Kangaskhan.png/250px-115Kangaskhan.png
116	Horsea	Water	\N	800	59	http://cdn.bulbagarden.net/upload/thumb/5/5a/116Horsea.png/250px-116Horsea.png
117	Seadra	Water	\N	1725	99	http://cdn.bulbagarden.net/upload/thumb/2/26/117Seadra.png/250px-117Seadra.png
118	Goldeen	Water	\N	972	83	http://cdn.bulbagarden.net/upload/thumb/7/7b/118Goldeen.png/250px-118Goldeen.png
119	Seaking	Water	\N	2058	138	http://cdn.bulbagarden.net/upload/thumb/6/6a/119Seaking.png/250px-119Seaking.png
120	Staryu	Water	\N	944	59	http://cdn.bulbagarden.net/upload/thumb/4/4f/120Staryu.png/250px-120Staryu.png
121	Starmie	Water	Psychic	2197	107	http://cdn.bulbagarden.net/upload/thumb/c/cd/121Starmie.png/250px-121Starmie.png
122	Mr. Mime	Psychic	Fairy	1505	75	http://cdn.bulbagarden.net/upload/thumb/e/ec/122Mr._Mime.png/250px-122Mr._Mime.png
123	Scyther	Bug	Flying	2088	122	http://cdn.bulbagarden.net/upload/thumb/b/ba/123Scyther.png/250px-123Scyther.png
124	Jynx	Ice	Psychic	1728	115	http://cdn.bulbagarden.net/upload/thumb/7/7c/124Jynx.png/250px-124Jynx.png
125	Electabuzz	Electric	\N	2134	115	http://cdn.bulbagarden.net/upload/thumb/d/de/125Electabuzz.png/250px-125Electabuzz.png
126	Magmar	Fire	\N	2281	115	http://cdn.bulbagarden.net/upload/thumb/8/8c/126Magmar.png/250px-126Magmar.png
127	Pinsir	Bug	\N	2137	115	http://cdn.bulbagarden.net/upload/thumb/7/71/127Pinsir.png/250px-127Pinsir.png
128	Tauros	Normal	\N	1857	130	http://cdn.bulbagarden.net/upload/thumb/b/b8/128Tauros.png/250px-128Tauros.png
129	Magikarp	Water	\N	264	43	http://cdn.bulbagarden.net/upload/thumb/0/02/129Magikarp.png/250px-129Magikarp.png
130	Gyarados	Water	Flying	2708	162	http://cdn.bulbagarden.net/upload/thumb/4/41/130Gyarados.png/250px-130Gyarados.png
131	Lapras	Water	Ice	3002	218	http://cdn.bulbagarden.net/upload/thumb/a/ab/131Lapras.png/250px-131Lapras.png
132	Ditto	Normal	\N	926	88	http://cdn.bulbagarden.net/upload/thumb/3/36/132Ditto.png/250px-132Ditto.png
133	Eevee	Normal	\N	1084	99	http://cdn.bulbagarden.net/upload/thumb/e/e2/133Eevee.png/250px-133Eevee.png
134	Vaporeon	Water	\N	2836	218	http://cdn.bulbagarden.net/upload/thumb/f/fd/134Vaporeon.png/250px-134Vaporeon.png
135	Jolteon	Electric	\N	2155	115	http://cdn.bulbagarden.net/upload/thumb/b/bb/135Jolteon.png/250px-135Jolteon.png
136	Flareon	Fire	\N	2662	115	http://cdn.bulbagarden.net/upload/thumb/d/dd/136Flareon.png/250px-136Flareon.png
137	Porygon	Normal	\N	1703	115	http://cdn.bulbagarden.net/upload/thumb/6/6b/137Porygon.png/250px-137Porygon.png
138	Omanyte	Rock	Water	1127	67	http://cdn.bulbagarden.net/upload/thumb/7/79/138Omanyte.png/250px-138Omanyte.png
139	Omastar	Rock	Water	2249	122	http://cdn.bulbagarden.net/upload/thumb/4/43/139Omastar.png/250px-139Omastar.png
140	Kabuto	Rock	Water	1112	59	http://cdn.bulbagarden.net/upload/thumb/f/f9/140Kabuto.png/250px-140Kabuto.png
141	Kabutops	Rock	Water	2145	107	http://cdn.bulbagarden.net/upload/thumb/2/29/141Kabutops.png/250px-141Kabutops.png
142	Aerodactyl	Rock	Flying	2180	138	http://cdn.bulbagarden.net/upload/thumb/e/e8/142Aerodactyl.png/250px-142Aerodactyl.png
143	Snorlax	Normal	\N	3135	265	http://cdn.bulbagarden.net/upload/thumb/f/fb/143Snorlax.png/250px-143Snorlax.png
144	Articuno	Ice	Flying	2999	154	http://cdn.bulbagarden.net/upload/thumb/4/4e/144Articuno.png/250px-144Articuno.png
145	Zapdos	Electric	Flying	3136	154	http://cdn.bulbagarden.net/upload/thumb/e/e3/145Zapdos.png/250px-145Zapdos.png
146	Moltres	Fire	Flying	3263	154	http://cdn.bulbagarden.net/upload/thumb/1/1b/146Moltres.png/250px-146Moltres.png
147	Dratini	Dragon	\N	990	76	http://cdn.bulbagarden.net/upload/thumb/c/cc/147Dratini.png/250px-147Dratini.png
148	Dragonair	Dragon	\N	1760	108	http://cdn.bulbagarden.net/upload/thumb/9/93/148Dragonair.png/250px-148Dragonair.png
149	Dragonite	Dragon	Flying	3525	156	http://cdn.bulbagarden.net/upload/thumb/8/8b/149Dragonite.png/250px-149Dragonite.png
150	Mewtwo	Psychic	\N	4174	180	http://cdn.bulbagarden.net/upload/thumb/7/78/150Mewtwo.png/250px-150Mewtwo.png
151	Mew	Psychic	\N	3322	170	http://cdn.bulbagarden.net/upload/thumb/b/b1/151Mew.png/250px-151Mew.png
4	Charmander	Fire		962	73	http://cdn.bulbagarden.net/upload/thumb/7/73/004Charmander.png/250px-004Charmander.png
\.


--
-- Name: pokemon_go_kaggle_pkey; Type: CONSTRAINT; Schema: public; Owner: jobstijl
--

ALTER TABLE ONLY pokemon_go_kaggle
    ADD CONSTRAINT pokemon_go_kaggle_pkey PRIMARY KEY (index);


--
-- Name: public; Type: ACL; Schema: -; Owner: jobstijl
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM jobstijl;
GRANT ALL ON SCHEMA public TO jobstijl;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

