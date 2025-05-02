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
};
