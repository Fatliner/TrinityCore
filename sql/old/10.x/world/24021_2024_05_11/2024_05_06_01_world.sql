DELETE FROM `creature_movement_override` WHERE `SpawnId` NOT IN (851331,6000693,6000695,6000700,6000707,6000708,6000709,6000721,6000723,6000727,6000729,6000732,6000736,6000763);
UPDATE `creature_movement_override` SET `HoverInitiallyEnabled`=0 WHERE `SpawnId` IN (6000693,6000695,6000700,6000707,6000708,6000709,6000721,6000723,6000727,6000729,6000732,6000736,6000763);

DELETE FROM `creature_static_flags_override` WHERE `SpawnId` IN (106339, 106340, 125724, 395475, 395522, 395523, 395542, 395570, 460002, 460043, 650356, 850856, 850858, 850861, 850862, 850864, 850865, 850866, 850867, 850868, 850871, 850973, 851014, 851023, 851084, 851100, 851115, 851127, 851155, 851158, 851182, 851194, 851201, 1050851, 1050886, 1050973, 1050980, 1050981, 1051014, 6000695, 8000023, 8000024, 9000012, 9000013, 9000211, 9000224, 9001454, 9001469);
INSERT INTO `creature_static_flags_override` (`SpawnId`, `DifficultyId`, `StaticFlags1`, `StaticFlags2`, `StaticFlags3`, `StaticFlags4`, `StaticFlags5`, `StaticFlags6`, `StaticFlags7`, `StaticFlags8`) VALUES
(106339, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106340, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125724, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395475, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395522, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395523, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395542, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395570, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460002, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460043, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(650356, 0, 0x0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850856, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850858, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850861, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850862, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850864, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850865, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850866, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850867, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850868, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850871, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850973, 0, 0x100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851014, 0, 0x100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851023, 0, 0x100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851084, 0, 0x100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851100, 0, 0x100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851115, 0, 0x100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851127, 0, 0x100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851155, 0, 0x100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851158, 0, 0x100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851182, 0, 0x100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851194, 0, 0x100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851201, 0, 0x100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1050851, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1050886, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1050973, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1050980, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1050981, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1051014, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6000695, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8000023, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8000024, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9000012, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9000013, 0, 0x20000100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9000211, 0, 0x0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9000224, 0, 0x0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9001454, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9001469, 0, 0x20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL);