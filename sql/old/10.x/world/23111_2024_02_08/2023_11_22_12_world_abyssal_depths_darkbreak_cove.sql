SET @OGUID := 3006190;

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=51886 WHERE `entry`=208132; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1732 WHERE `entry`=208132; -- Candy Bucket

-- Quests
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=51886 WHERE `ID`=28985; -- Candy Bucket

DELETE FROM `quest_offer_reward` WHERE `ID`=28985;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(28985, 0, 0, 0, 0, 0, 0, 0, 0, 'Candy buckets like this are located in inns throughout the realms. Go ahead... take some!', 51886); -- Candy Bucket

DELETE FROM `gameobject_queststarter` WHERE `id`=208132;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(208132, 28985, 51886);

UPDATE `gameobject_questender` SET `VerifiedBuild`=51886 WHERE (`id`=208132 AND `quest`=28985);

DELETE FROM `game_event_gameobject_quest` WHERE `id`=208132;

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+61;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 180405, 0, 5145, 4976, '0', 0, 0, -6880.1005859375, 5941.791015625, -760.52716064453125, 4.468043327331542968, 0, 0, -0.7880105972290039, 0.615661680698394775, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+1, 180405, 0, 5145, 4976, '0', 0, 0, -6856.60791015625, 5998.84716796875, -762.5745849609375, 4.852017402648925781, 0, 0, -0.65605831146240234, 0.754710197448730468, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+2, 180406, 0, 5145, 4976, '0', 0, 0, -6848.3505859375, 6013.109375, -757.63861083984375, 5.113816738128662109, 0, 0, -0.55193614959716796, 0.833886384963989257, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+3, 180406, 0, 5145, 4976, '0', 0, 0, -6858.60791015625, 5994.21875, -762.6826171875, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+4, 180407, 0, 5145, 4976, '0', 0, 0, -6874.2099609375, 5945.28564453125, -760.05792236328125, 4.223697185516357421, 0, 0, -0.85716724395751953, 0.515038192272186279, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+5, 180407, 0, 5145, 4976, '0', 0, 0, -6860.83154296875, 5989.8818359375, -763.06903076171875, 4.223697185516357421, 0, 0, -0.85716724395751953, 0.515038192272186279, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+6, 180408, 0, 5145, 4976, '0', 0, 0, -6848.35791015625, 6013.04931640625, -755.968994140625, 4.904376029968261718, 0, 0, -0.636077880859375, 0.771624863147735595, 120, 255, 1, 51886), -- G_WitchHat_01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+7, 180414, 0, 5145, 4976, '0', 0, 0, -6852.859375, 6004.859375, -762.453125, 5.759587764739990234, 0, 0, -0.25881862640380859, 0.965925931930541992, 120, 255, 1, 51886), -- Cauldron (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+8, 180415, 0, 5145, 4976, '0', 0, 0, -6881.08154296875, 5942.38916015625, -763.26019287109375, 5.969027042388916015, 0, 0, -0.1564340591430664, 0.987688362598419189, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+9, 180415, 0, 5145, 4976, '0', 0, 0, -6881.73095703125, 5941.8359375, -763.05743408203125, 5.375615119934082031, 0, 0, -0.4383707046508789, 0.898794233798980712, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+10, 180415, 0, 5145, 4976, '0', 0, 0, -6880.26025390625, 5942.93408203125, -763.04815673828125, 5.218535900115966796, 0, 0, -0.507537841796875, 0.861629426479339599, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+11, 180415, 0, 5145, 4976, '0', 0, 0, -6886.375, 5930.30029296875, -757.18292236328125, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+12, 180415, 0, 5145, 4976, '0', 0, 0, -6877.54541015625, 5946.126953125, -764.1541748046875, 4.328419685363769531, 0, 0, -0.82903671264648437, 0.559194147586822509, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+13, 180415, 0, 5145, 4976, '0', 0, 0, -6876.65966796875, 5946.67529296875, -764.27911376953125, 5.6897735595703125, 0, 0, -0.29237174987792968, 0.956304728984832763, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+14, 180415, 0, 5145, 4976, '0', 0, 0, -6877.126953125, 5945.796875, -763.40313720703125, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+15, 180415, 0, 5145, 4976, '0', 0, 0, -6889.83837890625, 5927.44287109375, -758.4693603515625, 0, 0, 0, 0, 1, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+16, 180415, 0, 5145, 4976, '0', 0, 0, -6887.35595703125, 5932.46533203125, -753.97503662109375, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+17, 180415, 0, 5145, 4976, '0', 0, 0, -6871.392578125, 5948.69189453125, -758.208984375, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+18, 180415, 0, 5145, 4976, '0', 0, 0, -6891.1337890625, 5924.6552734375, -758.7484130859375, 0, 0, 0, 0, 1, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+19, 180415, 0, 5145, 4976, '0', 0, 0, -6873.43408203125, 5951.84228515625, -758.93560791015625, 6.056293010711669921, 0, 0, -0.11320304870605468, 0.993571877479553222, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+20, 180415, 0, 5145, 4976, '0', 0, 0, -6849.546875, 6012.6162109375, -759.173095703125, 5.166176319122314453, 0, 0, -0.52991867065429687, 0.84804844856262207, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+21, 180415, 0, 5145, 4976, '0', 0, 0, -6849.6962890625, 6013.39501953125, -760.3284912109375, 4.817109584808349609, 0, 0, -0.66913032531738281, 0.74314504861831665, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+22, 180415, 0, 5145, 4976, '0', 0, 0, -6846.21337890625, 6005.1474609375, -757.23077392578125, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+23, 180415, 0, 5145, 4976, '0', 0, 0, -6845.00341796875, 6020.8505859375, -757.28350830078125, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+24, 180415, 0, 5145, 4976, '0', 0, 0, -6843.95849609375, 6007.22900390625, -757.2421875, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+25, 180415, 0, 5145, 4976, '0', 0, 0, -6849.4150390625, 6012.0068359375, -759.0504150390625, 3.385940074920654296, 0, 0, -0.99254608154296875, 0.121869951486587524, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+26, 180415, 0, 5145, 4976, '0', 0, 0, -6850.29150390625, 6014.587890625, -761.8104248046875, 0.575957298278808593, 0, 0, 0.284014701843261718, 0.958819925785064697, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+27, 180415, 0, 5145, 4976, '0', 0, 0, -6849.6318359375, 6012.93310546875, -758.98516845703125, 6.265733242034912109, 0, 0, -0.00872611999511718, 0.999961912631988525, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+28, 180415, 0, 5145, 4976, '0', 0, 0, -6841.68408203125, 6026.02685546875, -756.010009765625, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+29, 180415, 0, 5145, 4976, '0', 0, 0, -6844.14599609375, 6024.6884765625, -752.98663330078125, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+30, 180415, 0, 5145, 4976, '0', 0, 0, -6847.345703125, 6022.90869140625, -757.312744140625, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+31, 180415, 0, 5145, 4976, '0', 0, 0, -6874.3037109375, 6045.244140625, -759.26385498046875, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+32, 180415, 0, 5145, 4976, '0', 0, 0, -6848.6181640625, 6035.88037109375, -759.16961669921875, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+33, 180415, 0, 5145, 4976, '0', 0, 0, -6857.1787109375, 6040.15966796875, -765.3016357421875, 5.026549339294433593, 0, 0, -0.5877847671508789, 0.809017360210418701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+34, 180415, 0, 5145, 4976, '0', 0, 0, -6875.89404296875, 6042.96337890625, -756.33758544921875, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+35, 180415, 0, 5145, 4976, '0', 0, 0, -6847.40283203125, 6036.75, -755.3746337890625, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+36, 180415, 0, 5145, 4976, '0', 0, 0, -6867.642578125, 6046.9287109375, -759.85614013671875, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+37, 180415, 0, 5145, 4976, '0', 0, 0, -6870.59912109375, 6047.806640625, -760.02178955078125, 5.759587764739990234, 0, 0, -0.25881862640380859, 0.965925931930541992, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+38, 180415, 0, 5145, 4976, '0', 0, 0, -6859.85400390625, 6068.291015625, -756.64923095703125, 5.532694816589355468, 0, 0, -0.3665008544921875, 0.93041771650314331, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+39, 180415, 0, 5145, 4976, '0', 0, 0, -6860.9599609375, 6077.087890625, -760.18280029296875, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+40, 180415, 0, 5145, 4976, '0', 0, 0, -6857.6474609375, 6070.41650390625, -759.28509521484375, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+41, 180415, 0, 5145, 4976, '0', 0, 0, -6863.91650390625, 6076.30712890625, -760.61090087890625, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 120, 255, 1, 51886), -- CandleBlack01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+42, 180425, 0, 5145, 4976, '0', 0, 0, -6880.61474609375, 5942.69091796875, -762.90997314453125, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344, 120, 255, 1, 51886), -- SkullCandle01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+43, 180425, 0, 5145, 4976, '0', 0, 0, -6876.90625, 5945.97412109375, -763.02923583984375, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249, 120, 255, 1, 51886), -- SkullCandle01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+44, 180425, 0, 5145, 4976, '0', 0, 0, -6891.4150390625, 5967.6474609375, -763.99566650390625, 0, 0, 0, 0, 1, 120, 255, 1, 51886), -- SkullCandle01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+45, 180425, 0, 5145, 4976, '0', 0, 0, -6849.98095703125, 6012.0390625, -761.28399658203125, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437, 120, 255, 1, 51886), -- SkullCandle01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+46, 180425, 0, 5145, 4976, '0', 0, 0, -6857.88720703125, 6040.61181640625, -765.0418701171875, 4.694936752319335937, 0, 0, -0.71325016021728515, 0.700909554958343505, 120, 255, 1, 51886), -- SkullCandle01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+47, 180471, 0, 5145, 4976, '0', 0, 0, -6859.80712890625, 5994.99853515625, -760.16778564453125, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+48, 180471, 0, 5145, 4976, '0', 0, 0, -6857.7744140625, 5999.00341796875, -760.08441162109375, 4.502951622009277343, 0, 0, -0.7771453857421875, 0.629321098327636718, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+49, 180471, 0, 5145, 4976, '0', 0, 0, -6866.15478515625, 6007.68310546875, -761.50079345703125, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+50, 180471, 0, 5145, 4976, '0', 0, 0, -6862.046875, 5991.046875, -760.49261474609375, 3.94444584846496582, 0, 0, -0.92050457000732421, 0.3907318115234375, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+51, 180471, 0, 5145, 4976, '0', 0, 0, -6863.02783203125, 6004.7177734375, -761.384033203125, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+52, 180471, 0, 5145, 4976, '0', 0, 0, -6858.74462890625, 6030.0390625, -763.69207763671875, 4.642575740814208984, 0, 0, -0.731353759765625, 0.681998312473297119, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+53, 180472, 0, 5145, 4976, '0', 0, 0, -6862.64404296875, 6035.67529296875, -761.94061279296875, 4.625123500823974609, 0, 0, -0.73727703094482421, 0.67559051513671875, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+54, 180523, 0, 5145, 4976, '0', 0, 0, -6863.68603515625, 5997.23681640625, -762.946533203125, 0, 0, 0, 0, 1, 120, 255, 1, 51886), -- Apple Bob (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+55, 208069, 0, 5145, 4976, '0', 0, 0, -6880.15966796875, 5946.98876953125, -764.90069580078125, 4.502951622009277343, 0, 0, -0.7771453857421875, 0.629321098327636718, 120, 255, 1, 51886), -- G_Pumpkin_02 Scale 0.5 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+56, 208069, 0, 5145, 4976, '0', 0, 0, -6859.42041015625, 6038.330078125, -766.0528564453125, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111, 120, 255, 1, 51886), -- G_Pumpkin_02 Scale 0.5 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+57, 208072, 0, 5145, 4976, '0', 0, 0, -6884.57275390625, 5940.3349609375, -763.77313232421875, 4.520402908325195312, 0, 0, -0.77162456512451171, 0.636078238487243652, 120, 255, 1, 51886), -- G_Pumpkin_03 Scale 0.5 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+58, 208072, 0, 5145, 4976, '0', 0, 0, -6848.40087890625, 6011.34033203125, -758.751220703125, 5.253442287445068359, 0, 0, -0.49242305755615234, 0.870355963706970214, 120, 255, 1, 51886), -- G_Pumpkin_03 Scale 0.5 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+59, 208078, 0, 5145, 4976, '0', 0, 0, -6874.64404296875, 5952.31787109375, -765.11865234375, 4.223697185516357421, 0, 0, -0.85716724395751953, 0.515038192272186279, 120, 255, 1, 51886), -- G_Pumpkin_01 scale 0.5 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+60, 208078, 0, 5145, 4976, '0', 0, 0, -6848.828125, 6014.31005859375, -758.8798828125, 4.991643905639648437, 0, 0, -0.60181427001953125, 0.798636078834533691, 120, 255, 1, 51886), -- G_Pumpkin_01 scale 0.5 (Area: Darkbreak Cove - Difficulty: 0) CreateObject1
(@OGUID+61, 208132, 0, 5145, 4976, '0', 0, 0, -6865.40283203125, 6005.45556640625, -763.8397216796875, 5.480334281921386718, 0, 0, -0.39073085784912109, 0.920504987239837646, 120, 255, 1, 51886); -- Candy Bucket (Area: Darkbreak Cove - Difficulty: 0) CreateObject1

-- Event spawns
DELETE FROM `game_event_gameobject` WHERE `eventEntry`=12 AND `guid` BETWEEN @OGUID+0 AND @OGUID+61;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(12, @OGUID+0),
(12, @OGUID+1),
(12, @OGUID+2),
(12, @OGUID+3),
(12, @OGUID+4),
(12, @OGUID+5),
(12, @OGUID+6),
(12, @OGUID+7),
(12, @OGUID+8),
(12, @OGUID+9),
(12, @OGUID+10),
(12, @OGUID+11),
(12, @OGUID+12),
(12, @OGUID+13),
(12, @OGUID+14),
(12, @OGUID+15),
(12, @OGUID+16),
(12, @OGUID+17),
(12, @OGUID+18),
(12, @OGUID+19),
(12, @OGUID+20),
(12, @OGUID+21),
(12, @OGUID+22),
(12, @OGUID+23),
(12, @OGUID+24),
(12, @OGUID+25),
(12, @OGUID+26),
(12, @OGUID+27),
(12, @OGUID+28),
(12, @OGUID+29),
(12, @OGUID+30),
(12, @OGUID+31),
(12, @OGUID+32),
(12, @OGUID+33),
(12, @OGUID+34),
(12, @OGUID+35),
(12, @OGUID+36),
(12, @OGUID+37),
(12, @OGUID+38),
(12, @OGUID+39),
(12, @OGUID+40),
(12, @OGUID+41),
(12, @OGUID+42),
(12, @OGUID+43),
(12, @OGUID+44),
(12, @OGUID+45),
(12, @OGUID+46),
(12, @OGUID+47),
(12, @OGUID+48),
(12, @OGUID+49),
(12, @OGUID+50),
(12, @OGUID+51),
(12, @OGUID+52),
(12, @OGUID+53),
(12, @OGUID+54),
(12, @OGUID+55),
(12, @OGUID+56),
(12, @OGUID+57),
(12, @OGUID+58),
(12, @OGUID+59),
(12, @OGUID+60),
(12, @OGUID+61);