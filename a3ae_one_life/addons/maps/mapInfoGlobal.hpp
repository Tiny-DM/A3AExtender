class mapInfo {
    class altis {
        population[] = {
            {"Therisa",154},{"Zaros",371},{"Poliakko",136},{"Katalaki",95},{"Alikampos",115},{"Neochori",309},{"Stavros",122},{"Lakka",173},{"AgiosDionysios",84},{"Panochori",264},{"Topolia",33},{"Ekali",9},{"Pyrgos",531},{"Orino",45},{"Neri",242},{"Kore",133},{"Kavala",660},{"Aggelochori",395},{"Koroni",32},{"Gravia",291},{"Anthrakia",143},{"Syrta",151},{"Negades",120},{"Galati",151},{"Telos",84},{"Charkia",246},{"Athira",342},{"Dorida",168},{"Ifestiona",48},{"Chalkeia",214},{"AgiosKonstantinos",39},{"Abdera",89},{"Panagia",91},{"Nifi",24},{"Rodopoli",212},{"Kalithea",36},{"Selakano",120},{"Frini",69},{"AgiosPetros",11},{"Feres",92},{"AgiaTriada",8},{"Paros",396},{"Kalochori",189},{"Oreokastro",63},{"Ioannina",48},{"Delfinaki",29},{"Sofia",179},{"Molos",188}
        };
        disabledTowns[] = {};
        antennas[] = {
            {14451.5,16338,0.000354767},{15346.7,15894,-3.8147e-005},{16085.1,16998,7.08781},{17856.7,11734.1,0.863045},{9496.2,19318.5,0.601898},{9222.87,19249.1,0.0348206},{20944.9,19280.9,0.201118},{20642.7,20107.7,0.236603},{18709.3,10222.5,0.716034},{6840.97,16163.4,0.0137177},{19319,9716.22,0.442627},{19351.9,9693.04,0.639175},{10317.3,8704.65,0.117233},{8268.76,10051.6,0.0100708},{4583.61,15401.1,0.262543},{4555.65,15383.2,0.0271606},{4263.82,20664.1,-0.0102234},{26274.6,22188.1,0.0139847},{26455.4,22166.3,0.0223694}
        };
        antennasBlacklistIndex[] = {4,10,12,15,17};
        banks[] = {
            {16586.6,12834.5,-0.638584},{16545.8,12784.5,-0.485485},{16633.3,12807,-0.635017},{3717.34,13391.2,-0.164862},{3692.49,13158.3,-0.0462074},{3664.31,12826.5,-0.379545},{3536.99,13006.6,-0.508585},{3266.42,12969.9,-0.549738}
        };
        garrison[] = {
            {},{"airport_2","seaport_4","outpost_5","control_52","control_33"},{},{"control_52","control_33"}
        };
        fuelStationTypes[] = {
            "Land_Fuelstation_Feed_F","Land_fs_feed_F","Land_FuelStation_01_pump_F","Land_FuelStation_01_pump_malevil_F","Land_FuelStation_03_pump_F","Land_FuelStation_02_pump_F"
        };
        climate = "arid";
        buildObjects[] = {
            // Large vanilla arid structures
            {"Land_BagBunker_Large_F", 300}, {"Land_BagBunker_Tower_F", 300}, {"Land_BagBunker_Small_F", 60},
            {"Land_Shed_09_F", 120}, {"Land_Shed_10_F", 140},
            // Vanilla arid sandbag walls
            {"Land_BagFence_Long_F", 10}, {"Land_BagFence_Round_F", 10}, {"Land_BagFence_Short_F", 10},
            // Non-camo vanilla stuff
            {"Land_SandbagBarricade_01_half_F", 20}, {"Land_SlumWall_01_s_2m_F", 5}, {"Land_PillboxBunker_01_hex_F", 200},
            {"Land_Barricade_01_4m_F", 30}, {"Land_GuardBox_01_brown_F", 80}, {"Land_Tyres_F", 10}
	    };
    };
    class chernarus_summer {
        population[] = {
            {"vill_NovySobor",129},{"city_StarySobor",149},{"vill_Guglovo",26},{"vill_Vyshnoye",41},{"vill_Kabanino",86},{"vill_Rogovo",66},{"vill_Mogilevka",104},{"city_Gorka",115},{"vill_Grishino",168},{"vill_Shakhovka",55},{"vill_Pogorevka",57},{"vill_Pulkovo",26},{"vill_Nadezhdino",109},{"city_Vybor",180},{"vill_Polana",118},{"vill_Staroye",115},{"vill_Dubrovka",86},{"vill_Pustoshka",163},{"vill_Kozlovka",100},{"vill_Pusta",52},{"vill_Dolina",83},{"vill_Gvozdno",78},{"vill_Prigorodki",145},{"vill_Drozhino",58},{"vill_Sosnovka",54},{"vill_Msta",96},{"vill_Lopatino",159},{"city_Zelenogorsk",280},{"vill_Orlovets",65},{"city_Berezino",340},{"vill_Myshkino",49},{"vill_Petrovka",45},{"city_Chernogorsk",761},{"vill_Bor",46},{"vill_Nizhnoye",146},{"vill_Balota",147},{"vill_Khelm",110},{"city_Krasnostav",194},{"vill_Komarovo",127},{"city_Elektrozavodsk",745},{"city_Solnychniy",224},{"vill_Kamyshovo",196},{"vill_Tulga",35},{"vill_Pavlovo",99},{"vill_Kamenka",127},{"vill_Olsha",20}
        };
        disabledTowns[] = {"ACityC_Prigorodki"};
        antennas[] = {
            {3029.11,2350.27,0.229149},{4547.68,3132.05,0.693176},{3715.81,5984.25,0},{6563.68,3405.56,0.0547333},{5264.35,5314.45,-0.00253296},{6443.78,6545.48,0.0928955},{4967.81,9966.56,0},{8127.52,9151.57,0},{13477.6,3345.84,0.0730896},{13010.1,5964.96,-0.0163116},{12937,12763.6,0.164017},{11239.5,4261.76,-0.0221252}
        };
        antennasBlacklistIndex[] = {0,4,8,9};
        banks[] = {}; //no suitable building available
        garrison[] = {
            {},{"outpost_21","control_30","resource_5"},{},{"control_30"}
        };
        fuelStationTypes[] = {"Land_A_FuelStation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_FuelStation_Feed_PMC","Land_Fuelstation","Land_Fuelstation_army","Land_Benzina_schnell"};
        climate = "temperate";
        buildObjects[] = {
            {"Land_fortified_nest_big_EP1", 300}, {"Land_Fort_Watchtower_EP1", 300}, {"Fortress2", 200}, {"Fortress1", 100}, {"Fort_Nest", 60},
            {"Land_Shed_09_F", 120}, {"Land_Shed_10_F", 140}, {"ShedBig", 100}, {"Shed", 100}, {"ShedSmall", 60}, {"Land_GuardShed", 30},
            // CUP sandbag walls
            {"Land_BagFenceLong", 10}, {"Land_BagFenceShort", 10}, {"Land_BagFenceRound", 10},        //{"Land_BagFenceEnd", 0, 5}, 
            // Other CUP fences
            {"Land_fort_artillery_nest_EP1", 200}, {"Land_fort_rampart_EP1", 50}, {"Fort_Barricade", 50}, {"Fence", 20}, {"FenceWood", 10}, {"FenceWoodPalet", 10}, 
            // Non-camo vanilla stuff
            {"Land_SandbagBarricade_01_half_F", 20}, {"Land_SlumWall_01_s_2m_F", 5}, {"Land_PillboxBunker_01_hex_F", 200},
            {"Land_Barricade_01_4m_F", 30}, {"Land_GuardBox_01_brown_F", 80}, {"Land_Tyres_F", 10}
        };
    };
    class cup_chernarus_A3 {
        population[] = {
            {"City_NovayaPetrovka",552},
            {"City_Severograd",362},
            {"Settlement_Arsenovo",25},
            {"Settlement_Kalinovka",133},
            {"Settlement_Kamensk",147},
            {"Settlement_Krasnoe",29},
            {"Settlement_Nagornoe",177},
            {"Settlement_Polesovo",117},
            {"Settlement_Ratnoe",82},
            {"Settlement_Skalka",51},
            {"Settlement_StaryYar",348},
            {"Settlement_Svergino",164},
            {"Settlement_Zaprudnoe",168},
            {"Vil_Sinystok",107},
            {"Vil_Tisy",83},
            {"Vil_Topolniki",234},
            {"city_Berezino",349},
            {"city_Chernogorsk",628},
            {"city_Elektrozavodsk",704},
            {"city_Gorka",159},
            {"city_Krasnostav",221},
            {"city_Novodmitrovsk",596},
            {"city_Solnychniy",225},
            {"city_StarySobor",181},
            {"city_Svetloyarsk",487},
            {"city_Vybor",240},
            {"city_Zelenogorsk",477},
            {"city_cernayapolana",225},
            {"vil_BelayaPolyana",92},
            {"vil_Berezhki",26},
            {"vil_Bogtyrka",146},
            {"vil_Dobroye",49},
            {"vil_Karmanovka",142},
            {"vil_Turovo",97},
            {"vil_Zabolotye",55},
            {"vil_vavilovo",121},
            {"vill_Balota",160},
            {"vill_Bor",63},
            {"vill_Dolina",86},
            {"vill_Drozhino",107},
            {"vill_Dubrovka",102},
            {"vill_Grishino",143},
            {"vill_Guglovo",31},
            {"vill_Gvozdno",95},
            {"vill_Kabanino",80},
            {"vill_Kamenka",130},
            {"vill_Kamyshovo",207},
            {"vill_Khelm",119},
            {"vill_Komarovo",132},
            {"vill_Lopatino",148},
            {"vill_Mogilevka",117},
            {"vill_Msta",94},
            {"vill_Myshkino",97},
            {"vill_Nadezhdino",105},
            {"vill_Nizhnoye",143},
            {"vill_NovySobor",127},
            {"vill_Olsha",117},
            {"vill_Orlovets",62},
            {"vill_Pavlovo",122},
            {"vill_Pogorevka",74},
            {"vill_Polana",136},
            {"vill_Prigorodki",147},
            {"vill_Pulkovo",39},
            {"vill_Pusta",48},
            {"vill_Pustoshka",197},
            {"vill_Rogovo",73},
            {"vill_Shakhovka",62},
            {"vill_Sosnovka",61},
            {"vill_Staroye",106},
            {"vill_Tulga",42},
            {"vill_Vyshnoye",44},
            {"vill_Zvir",102}
        };
        disabledTowns[] = {"vill_Kozlovka"};
        antennas[] = {
            {8128.66,9151.15,-0.195831},
            {6444.28,6545.92,-0.096283},
            {5264.36,5314.46,0.0282288},
            {4968.54,9964.37,0.0121155},
            {3715.81,5984.25,0},
            {6564.42,3405.32,-0.0242767},
            {4548.06,3131.85,0.476025},
            {13008,5963.23,0.223602},
            {1169.04,4979.73,0},
            {3029.08,2350.29,0.219475},
            {13326.5,3257.09,0.15934},
            {12936.7,12762.7,0.0453033},
            {12004,14779.1,0.0237579},
            {304.767,2707.54,0.156723},
            {14126.7,13851.9,0.138626},
            {1779.32,14132.8,-0.00180054},
            {7756.32,14820.1,0.00469971}
        };
        antennasBlacklistIndex[] = {2,8,9,13,14};
        banks[] = {}; //no suitable building available
        garrison[] = {
            {},{"outpost_22","outpost_23","factory_5","factory_6","resource_5","resource_10","control_41","control_42","control_43","control_52","control_53","control_55","control_56"},{},{"control_41","control_42","control_43","control_52","control_53","control_55","control_56"}
        };
        fuelStationTypes[] = {"Land_A_FuelStation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_FuelStation_Feed_PMC","Land_Fuelstation","Land_Fuelstation_army","Land_Benzina_schnell","Land_Fuelstation_Feed_F", "Land_fs_feed_F", "Land_FuelStation_01_pump_F", "Land_FuelStation_01_pump_malevil_F", "Land_FuelStation_03_pump_F", "Land_FuelStation_02_pump_F"};
        climate = "temperate";
        buildObjects[] = {
            {"Land_fortified_nest_big_EP1", 300}, {"Land_Fort_Watchtower_EP1", 300}, {"Fortress2", 200}, {"Fortress1", 100}, {"Fort_Nest", 60},
            {"Land_Shed_09_F", 120}, {"Land_Shed_10_F", 140}, {"ShedBig", 100}, {"Shed", 100}, {"ShedSmall", 60}, {"Land_GuardShed", 30},
            // CUP sandbag walls
            {"Land_BagFenceLong", 10}, {"Land_BagFenceShort", 10}, {"Land_BagFenceRound", 10},        //{"Land_BagFenceEnd", 0, 5}, 
            // Other CUP fences
            {"Land_fort_artillery_nest_EP1", 200}, {"Land_fort_rampart_EP1", 50}, {"Fort_Barricade", 50}, {"Fence", 20}, {"FenceWood", 10}, {"FenceWoodPalet", 10}, 
            // Non-camo vanilla stuff
            {"Land_SandbagBarricade_01_half_F", 20}, {"Land_SlumWall_01_s_2m_F", 5}, {"Land_PillboxBunker_01_hex_F", 200},
            {"Land_Barricade_01_4m_F", 30}, {"Land_GuardBox_01_brown_F", 80}, {"Land_Tyres_F", 10}
        };
    };

    class umb_colombia {
        population[] = {
            {"Monteria",181},{"SanAntero",461},{"Currulao",44},{"Pital",51},{"Charco_Grande",65},{"San_Luis",79},{"Santa_Rosa",103},{"Tubara",164},{"Megua",118},{"San_Cordoba",38},{"Chinu",187},{"Arjona",25},{"Sambrano",69},{"El_Barzal",76},{"El_Cabro",67},{"Catalina",206},{"San_Antonio",289},{"Briceno",46},{"Angostura",76},{"Los_Olivos",103},{"Arboletes",49},{"Sincelejo",78},{"Aquitania",51},{"El_Limon",52},{"Ovejas",17},{"Sonson",134},{"San_Bernando",30},{"Lorica",172},{"Carepa",30},{"Turbo",57},{"San_Bartolo",55},{"La_Travesia",64},{"San_Predro",60},{"Chigorodo",49},{"Necocli",95},{"Montelibano",319},{"Caucasia",394},{"Villa_Melissa",68},{"Normadia_Farm",46},{"Valdivia",61}
        };
        disabledTowns[] = {
            "NameCityCapital_1","NameCity_1","NameVillage_1","CastilloLaVictoria","CastilloSanFelipe","PuertoEscondido","Farm_Villa_Margarita"
        };
        antennas[] = {
            {9627.9,10275.4,0},{9615.31,10467.1,-0.631474},{10139.9,9579.67,0.025341},{10139.9,9579.67,0.025341},{11333.2,12526.2,-0.000583649},
            {8079.74,11970.9,0.00224686},{12805.1,11514.7,4.95911e-005},{12390.9,12486.7,0.0196533},{7878.26,12391.5,0.296963},{7041.11,9828.98,0},
            {13607.5,11507.2,0.00190353},{6718.72,11203.4,0},{6069.12,8688.02,0},{6044.08,8733.01,2.28882e-005},{6307.89,7779.48,0.000106812},
            {7733.04,14246.4,0},{6544.55,13283.1,0.764057},{7813.03,14583,0.754433},{5575.55,8440.37,-4.57764e-005},{5557.57,8377.38,0},
            {7237.98,14406,0.120369},{6969.12,14590.6,-2.33076},{4824.25,10885.8,0.000148773},{6921.77,14592.5,0.228943},{7209.89,14810.5,0.228943},
            {6087.25,14032.4,0.273037},{14653.5,13833.9,0},{15358.8,12873.6,0},{15034,6284.14,0.360443},{16611.2,9279.42,0},
            {5991.19,15138.8,0.763885},{6740.23,4762.59,-0.118572},{4415.32,13228.8,-0.461536},{3753.49,11483.2,0.611931},{3620.12,10066.4,0.0195465},
            {16334,7415.56,0},{3328.04,10896.4,0.000118256},{5560.62,4788.94,0.737709},{3401.81,12546.9,0.0766888},{3203.82,13073.7,0.0882835},
            {16282.7,5504.34,0.341934},{2565.71,8399.48,0.0378532},{16842.3,14618.7,-1.52588e-005},{18261.9,8106.74,0},{15560.9,3771.67,0.580284},
            {1976.39,8605.03,0.373146},{18870.5,10837.2,0},{6579.6,1902.97,0.873871},{4630.65,2895.65,0.00482178},{4537.56,2951.44,0.00798035},
            {1710.74,6623.88,-3.8147e-006},{17387.4,16584.7,2.09808e-005},{684.342,11022.9,0},{18054.3,15953.2,0.558502},{17362.3,3632.32,0},
            {979.755,6795.31,0.0109215},{19573.8,13780.7,0},{1409.14,5531.25,0.133492},{18871.1,15536.2,0.349125},{2112.65,3803.66,-0.000715256},
            {2126.79,3781,-0.000911713},{17888.1,2424.06,0.145622},{1120.5,3545.34,-0.000267029},{19037.1,2909.84,0.201496},{2765.33,819.348,0},
            {2873.69,699.184,0},{2843.89,614.521,0},{2826.27,583.638,0},{2802.01,514.962,0},{18559.9,925.417,0.198654},
            {1648.23,985.494,0},{1518.52,581.076,0},{538.073,1196.59,0.00101471},{9702.91,5738.24,0},{19574.7,13773.1,0},
            {17868.6,16187.8,1.14441e-005}
        };
        antennasBlacklistIndex[] = {0,2,3,6,7,8,11,12,13,16,17,18,19,20,21,22,23,24,25,28,29,30,32,34,36,37,38,40,41,42,44,45,47,48,51,52,53,55,56,57,58,60,63,65,66,67,68,69,70,72};
        banks[] = {
        };
        garrison[] = {
            {},{"airport_7", "factory_8", "outpost_37", "outpost_42", "outpost_45", "outpost_48", "seaport_4", "control_9", "control_10", "control_18", "control_19", "control_20", "control_21", "control_22"},{},
            {"control_9", "control_10", "control_18", "control_19", "control_20", "control_21", "control_22"}
        };
        fuelStationTypes[] = {
            "Land_Fuelstation_Feed_F","Land_fs_feed_F","Land_FuelStation_01_pump_F","Land_FuelStation_01_pump_malevil_F","Land_FuelStation_03_pump_F","Land_FuelStation_02_pump_F"
        };
        climate = "tropical";
        buildObjects[] = {
            // Large vanilla tropical structures
            {"Land_BagBunker_01_large_green_F", 300}, {"Land_HBarrier_01_tower_green_F", 300}, {"Land_BagBunker_01_small_green_F", 60},
            {"Land_Shed_09_F", 120}, {"Land_Shed_10_F", 140},
            // vanilla tropical sandbag walls
            {"Land_BagFence_01_short_green_F", 10}, {"Land_BagFence_01_round_green_F", 10}, {"Land_BagFence_01_long_green_F", 10},
            // Non-camo vanilla stuff
            {"Land_SandbagBarricade_01_half_F", 20}, {"Land_SlumWall_01_s_2m_F", 5}, {"Land_PillboxBunker_01_hex_F", 200},
            {"Land_Barricade_01_4m_F", 30}, {"Land_GuardBox_01_brown_F", 80}, {"Land_Tyres_F", 10}
        };
    };

    class enoch {
        population[] = {
            {"Adamow",200},{"Bielawa",150},{"Borek",150},{"Brena",150},{"Dolnik",100},{"Gieraltow",400},{"Gliniska",150},{"Grabin",250},{"Huta",150},{"Karlin",50},{"Kolembrody",100},{"Lembork",50},{"Lipina",100},{"Lukow",200},{"Muratyn",50},{"Nadbor",600},{"Nidek",100},{"Olszanka",100},{"Polana",100},{"Radacz",150},{"Radunin",150},{"Roztoka",50},{"Sitnik",150},{"Sobotka",100},{"Tarnow",200},{"Topolin",650},{"Zalesie",150},{"Zapadlisko",100}
        };
        disabledTowns[] = {}; //seems no location needs to be disabled
        antennas[] = {
            {3830.61,1827.19,0},{5007.39,2131.27,0},{1583.47,7162.08,0.000152588},{3146.07,7024.41,0.00133514},{1408.43,8675.08,-1.00183},{8894.99,2049.1,0.00387573},{2382.53,11479.5,3.05176e-005},{6293.86,9910.17,-7.62939e-006},{3585.76,11540.7,-0.000236511},{7906.11,9917.2,0.0120544},{7776.88,10082.3,0.0262146},{7866.34,10102.5,3.05176e-005},{6908.45,11119.5,-2.40052},{9257.02,10282.7,0.0631027},{10610.4,10890.6,0.166985},{11172.6,11424.1,-2.82624},{2078.25,7295.17,0.795135},{7620.01,5982.55,0}
        };
        antennasBlacklistIndex[] = {2,3,4,6,8,10,11,12,13,14};
        banks[] = {}; //no suitable building available
        garrison[] = {{},{"airport_3","control_14"},{},{"control_14"}};
        fuelStationTypes[] = {
            "Land_FuelStation_Feed_F","Land_fs_feed_F","Land_FuelStation_01_pump_malevil_F","Land_FuelStation_01_pump_F","Land_FuelStation_02_pump_F","Land_FuelStation_03_pump_F"
        };
        climate = "temperate";
        buildObjects[] = {
            // Large vanilla tropical structures
            {"Land_BagBunker_01_large_green_F", 300}, {"Land_HBarrier_01_tower_green_F", 300}, {"Land_BagBunker_01_small_green_F", 60},
            {"Land_Shed_09_F", 120}, {"Land_Shed_10_F", 140},
            // vanilla tropical sandbag walls
            {"Land_BagFence_01_short_green_F", 10}, {"Land_BagFence_01_round_green_F", 10}, {"Land_BagFence_01_long_green_F", 10},
            // Non-camo vanilla stuff
            {"Land_SandbagBarricade_01_half_F", 20}, {"Land_SlumWall_01_s_2m_F", 5}, {"Land_PillboxBunker_01_hex_F", 200},
            {"Land_Barricade_01_4m_F", 30}, {"Land_GuardBox_01_brown_F", 80}, {"Land_Tyres_F", 10}
        };
    };
    class Napf {
        population[] = {
            {"vil_Lenzburg",584},{"vil_Trueb",148},{"vil_Seltisberg",129},{"vil_NeueWelt",144},{"vil_Bubendorf",124},{"vil_Seewen",46},
            {"vil_Huttwil",134},{"vil_Oberdorf",69},{"vil_Muttenz",386},{"farm_HofHorn",11},
            {"farm_Elbishof",21},{"farm_Rossbode",31},{"vil_Muenchenstein",368},{"vil_Chatzbach",163},{"vil_Bruderholz",36},{"farm_Aegerifeld",16},
            {"vil_Freidorf",83},{"vil_Olten",205},{"vil_Ruemlingen",184},{"Hof_KleineEgg",16},{"farm_Eichmatt",10},
            {"vil_Hirsegg",59},{"Insel_Hasenmatt",5},{"vil_Lausen",121},{"farm_Ey",16},{"farm_Rorighof",6},{"farm_Arxhof",11},{"farm_Ramsebode",12},
            {"vil_Unterdorf",94},{"vil_Luzern",750},{"vil_Emmen",422},{"vil_Wolhusen",151},{"vil_Horw",152},{"vil_Romoos",48},{"vil_Meggen",68},
            {"vil_Liestal",274},{"vil_Sachseln",91},{"vil_Sissach",104},{"vil_Buckten",35},{"vil_Eggwil",48},{"Insel_Pfeffikon",36},
            {"vil_Signau",88},{"vil_Schangen",186},{"vil_Hasle",58},{"vil_Worb",458},{"vil_Munsingen",144},{"vil_Ittingen",152},{"vil_Hindelbank",91},
            {"Hof_Goms",39},{"Hof_Hungerschwand",12},{"vil_Farnen",38},{"vil_Sorenberg",107},
            {"pass_Rorenpass",7},{"Hof_Waldegg",10},{"vil_Brienz",98},{"vil_Nordstern",55},{"vil_Goldwil",20},{"vil_Magden",52},
            {"vil_Bunig", 100},{"vil_Malters",55},{"vil_Wasen",41},{"vil_Seltishafen",53},{"vil_Abach",46}
        };
        disabledTowns[] = {
            "mil_SouthAirstrip","Island_Feldmoos","Island_Bernerplatte","castle_Homburg","Castle_Froburg","ind_Saegewerk",
            "for_Teufelsgraben","lw_Ruchfeld","lw_Lochacker","LandMark_Hubel","Insel_Suhrenfeld","Insel_Hasenmatt","vil_Giswil","farm_Alpnach","lw_Hagacher"
        };
        antennas[] = {
            {10987.7,9465.01,0.0774231},{9135.95,11027.4,-0.783722},{7672.83,9772.95,0.00149536},{8994.92,7573.55,0.0384521},{8994.92,7573.55,-0.444763},{6202.3,10639,-0.000984192},{6186.1,12025.9,-0.0628891},{7919.53,14442.1,0.219131},{15117.9,12586.8,0.00614929},{10898,4404.76,-0.135315},{9393.43,16246.8,-0.00434494},{9393.61,16247,0.0274506},{7021.62,4662.36,0.158585},{5852.23,15093.9,-0.0428619},{9676.3,2933.88,-0.334412},{5258.93,4510.2,-1.52588e-005},{698.401,6726.06,-0.179443},{16327.5,18434.2,-0.105293},{18743.5,2148.42,-0.226135}
        };
        antennasBlacklistIndex[] = {0,3,6,8,9,10,12,13,16};
        distanceForAirAttack = 16000;
        distanceForLandAttack = 5000;
        banks[] = {
            {8770.24,16103.2,0},{14572.2,13863.2,0},{6422.43,9854.96,0},{12736.4,9494.58,0},{6243.64,10474.4,0}
        };
        garrison[] = {
            {},{"airport_3","seaport_9","seaport_10","airport_1","outpost_4"},{},
            {"control_7","control_31","control_30"}
        };
        fuelStationTypes[] = {
            "Land_Fuelstation_Feed_F","Land_fs_feed_F","Land_FuelStation_01_pump_F","Land_FuelStation_01_pump_malevil_F","Land_FuelStation_03_pump_F","Land_FuelStation_02_pump_F","Land_Benzina_schnell","Land_A_FuelStation_Feed",
        };
        climate = "temperate";
        buildObjects[] = {
            {"Land_fortified_nest_big_EP1", 300}, {"Land_Fort_Watchtower_EP1", 300}, {"Fortress2", 200}, {"Fortress1", 100}, {"Fort_Nest", 60},
            {"Land_Shed_09_F", 120}, {"Land_Shed_10_F", 140}, {"ShedBig", 100}, {"Shed", 100}, {"ShedSmall", 60}, {"Land_GuardShed", 30},
            // CUP sandbag walls
            {"Land_BagFenceLong", 10}, {"Land_BagFenceShort", 10}, {"Land_BagFenceRound", 10}, {"Land_BagFenceEnd", 5},
            // Other CUP fences
            {"Land_fort_artillery_nest_EP1", 200}, {"Land_fort_rampart_EP1", 50}, {"Fort_Barricade", 50}, {"Fence", 20}, {"FenceWood", 10}, {"FenceWoodPalet", 10},
            // Non-camo vanilla stuff
            {"Land_SandbagBarricade_01_half_F", 20}, {"Land_SlumWall_01_s_2m_F", 5}, {"Land_PillboxBunker_01_hex_F", 200},
            {"Land_Barricade_01_4m_F", 30}, {"Land_GuardBox_01_brown_F", 80}, {"Land_Tyres_F", 10}
        };
    };
    class vt7 {
        population[] = {
            {"aarre",80},{"Alapihlaja",90},{"Eerikkala",88},{"haavisto",60},{"Hailila",90},{"Hanski",100},{"Harju",100},{"harjula",70},{"Hurppu",80},{"Hyypianvuori",60},{"Jarvenkyla",100},{"Kirkonkyla",400},{"Klamila",150},{"Koivuniemi",100},{"Korpela",80},{"Kouki",90},{"Lansikyla",100},{"Myllynmaki",60},{"Nakarinmaki",90},{"Niemela",60},{"Ojala",80},{"Onnela",100},{"Pajunlahti",90},{"piispa",100},{"Pyterlahti",190},{"Rannanen",80},{"Ravijoki",90},{"Riko",100},{"Santaniemi",100},{"Skippari",80},{"suopelto",80},{"Sydankyla",150},{"uski",80},{"Uutela",100},{"Vilkkila",110},{"Virojoki",500},{"Ylapaa",80},{"Ylapihlaja",80},{"Souvio",70}
        };
        disabledTowns[] = {"Tikanen","toipela","hirvela","kallio","Kuusela","nopala"};
        antennas[] = {
            {907.35,2955.65,0},{6644.62,7275.58,0.00256348},{6242.47,13009.4,0.39426},{13061.2,6487.81,0.760155},{1768.36,15526.1,0.00277328},{15449.2,16603.3,0}
        };
        antennasBlacklistIndex[] = {};
        banks[] = {{14501.2,14607.6,0.0752449},{14669.9,14700.3,-0.102319}};
        garrison[] = {
            {},{"airport_2","control_25","control_29","control_30","control_31","control_32","Seaport_1","Outpost_3"},{},{"control_25","control_29","control_30","control_31","control_32"}
        };
        fuelStationTypes[] = {"Land_FuelStation_Feed_F","Land_fs_feed_F","Land_FuelStation_01_pump_malevil_F","Land_FuelStation_01_pump_F","Land_FuelStation_02_pump_F","Land_FuelStation_03_pump_F","Land_A_FuelStation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_FuelStation_Feed_PMC","Land_Fuelstation","Land_Fuelstation_army","Land_Benzina_schnell"};
        climate = "temperate";
        buildObjects[] = {
            {"Land_fortified_nest_big_EP1", 300}, {"Land_Fort_Watchtower_EP1", 300}, {"Fortress2", 200}, {"Fortress1", 100}, {"Fort_Nest", 60},
            {"Land_Shed_09_F", 120}, {"Land_Shed_10_F", 140}, {"ShedBig", 100}, {"Shed", 100}, {"ShedSmall", 60}, {"Land_GuardShed", 30},
            // CUP sandbag walls
            {"Land_BagFenceLong", 10}, {"Land_BagFenceShort", 10}, {"Land_BagFenceRound", 10},        //{"Land_BagFenceEnd", 0, 5}, 
            // Other CUP fences
            {"Land_fort_artillery_nest_EP1", 200}, {"Land_fort_rampart_EP1", 50}, {"Fort_Barricade", 50}, {"Fence", 20}, {"FenceWood", 10}, {"FenceWoodPalet", 10}, 
            // Non-camo vanilla stuff
            {"Land_SandbagBarricade_01_half_F", 20}, {"Land_SlumWall_01_s_2m_F", 5}, {"Land_PillboxBunker_01_hex_F", 200},
            {"Land_Barricade_01_4m_F", 30}, {"Land_GuardBox_01_brown_F", 80}, {"Land_Tyres_F", 10}
        };
    };
};
