library ieee;
use ieee.std_logic_1164.all;

entity rng_width512_taps3 is
  generic(init : std_logic_vector(511 downto 0) := (others=>'1') );
  port(clk : in std_logic;
    reset : in std_logic;
    rng : out std_logic_vector(511 downto 0) );
end rng_width512_taps3;

architecture RTL of rng_width512_taps3 is
  signal s:std_logic_vector(511 downto 0) := init;
begin
  rng <= s;
  regs : process(clk, reset) begin
    if(reset='1') then
      s <= init;
    elsif(clk'event and clk = '1') then
      s(142)<=( ('0' xor s(273) xor s(497) xor s(76)) );
      s(273)<=( ('0' xor s(118) xor s(135) xor s(215)) );
      s(118)<=( ('0' xor s(1) xor s(37) xor s(510)) );
      s(1)<=( ('0' xor s(59) xor s(216) xor s(164)) );
      s(59)<=( ('0' xor s(238) xor s(351) xor s(330)) );
      s(238)<=( ('0' xor s(388) xor s(125) xor s(468)) );
      s(388)<=( ('0' xor s(176) xor s(216) xor s(476)) );
      s(176)<=( ('0' xor s(316) xor s(508) xor s(439)) );
      s(316)<=( ('0' xor s(400) xor s(195) xor s(285)) );
      s(400)<=( ('0' xor s(253) xor s(457) xor s(377)) );
      s(253)<=( ('0' xor s(249) xor s(255) xor s(156)) );
      s(249)<=( ('0' xor s(109) xor s(318) xor s(378)) );
      s(109)<=( ('0' xor s(317) xor s(96) xor s(34)) );
      s(317)<=( ('0' xor s(81) xor s(199) xor s(480)) );
      s(81)<=( ('0' xor s(51) xor s(55) xor s(481)) );
      s(51)<=( ('0' xor s(318) xor s(157) xor s(221)) );
      s(318)<=( ('0' xor s(457) xor s(461) xor s(32)) );
      s(457)<=( ('0' xor s(339) xor s(184) xor s(486)) );
      s(339)<=( ('0' xor s(112) xor s(342) xor s(359)) );
      s(112)<=( ('0' xor s(77) xor s(374) xor s(328)) );
      s(77)<=( ('0' xor s(401) xor s(149) xor s(410)) );
      s(401)<=( ('0' xor s(144) xor s(344) xor s(342)) );
      s(144)<=( ('0' xor s(12) xor s(92) xor s(152)) );
      s(12)<=( ('0' xor s(266) xor s(203) xor s(40)) );
      s(266)<=( ('0' xor s(134) xor s(194) xor s(361)) );
      s(134)<=( ('0' xor s(378) xor s(492) xor s(464)) );
      s(378)<=( ('0' xor s(264) xor s(392) xor s(177)) );
      s(264)<=( ('0' xor s(312) xor s(280) xor s(152)) );
      s(312)<=( ('0' xor s(59) xor s(372) xor s(383)) );
      s(372)<=( ('0' xor s(382) xor s(158) xor s(61)) );
      s(382)<=( ('0' xor s(216) xor s(68) xor s(333)) );
      s(216)<=( ('0' xor s(154) xor s(493) xor s(119)) );
      s(154)<=( ('0' xor s(492) xor s(195) xor s(335)) );
      s(492)<=( ('0' xor s(154) xor s(124) xor s(66)) );
      s(124)<=( ('0' xor s(384) xor s(366) xor s(322)) );
      s(384)<=( ('0' xor s(303) xor s(391) xor s(420)) );
      s(303)<=( ('0' xor s(304) xor s(501) xor s(407)) );
      s(304)<=( ('0' xor s(281) xor s(300) xor s(267)) );
      s(281)<=( ('0' xor s(509) xor s(445) xor s(110)) );
      s(509)<=( ('0' xor s(372) xor s(283) xor s(220)) );
      s(283)<=( ('0' xor s(400) xor s(211) xor s(334)) );
      s(211)<=( ('0' xor s(450) xor s(121) xor s(218)) );
      s(450)<=( ('0' xor s(62) xor s(88) xor s(507)) );
      s(62)<=( ('0' xor s(300) xor s(389) xor s(430)) );
      s(300)<=( ('0' xor s(264) xor s(283) xor s(295)) );
      s(295)<=( ('0' xor s(316) xor s(462) xor s(299)) );
      s(462)<=( ('0' xor s(231) xor s(23) xor s(86)) );
      s(231)<=( ('0' xor s(247) xor s(163) xor s(478)) );
      s(247)<=( ('0' xor s(475) xor s(280) xor s(454)) );
      s(475)<=( ('0' xor s(123) xor s(95) xor s(301)) );
      s(123)<=( ('0' xor s(370) xor s(78) xor s(173)) );
      s(370)<=( ('0' xor s(386) xor s(268) xor s(158)) );
      s(386)<=( ('0' xor s(306) xor s(75) xor s(443)) );
      s(306)<=( ('0' xor s(360) xor s(28) xor s(331)) );
      s(360)<=( ('0' xor s(151) xor s(25) xor s(89)) );
      s(151)<=( ('0' xor s(282) xor s(26) xor s(74)) );
      s(282)<=( ('0' xor s(332) xor s(161) xor s(227)) );
      s(332)<=( ('0' xor s(293) xor s(178) xor s(63)) );
      s(293)<=( ('0' xor s(12) xor s(163) xor s(425)) );
      s(163)<=( ('0' xor s(23) xor s(270) xor s(503)) );
      s(23)<=( ('0' xor s(50) xor s(448) xor s(407)) );
      s(50)<=( ('0' xor s(134) xor s(125) xor s(379)) );
      s(125)<=( ('0' xor s(6) xor s(452) xor s(411)) );
      s(6)<=( ('0' xor s(137) xor s(83) xor s(453)) );
      s(137)<=( ('0' xor s(88) xor s(418) xor s(421)) );
      s(88)<=( ('0' xor s(187) xor s(205) xor s(452)) );
      s(187)<=( ('0' xor s(43) xor s(416) xor s(355)) );
      s(43)<=( ('0' xor s(123) xor s(168) xor s(24)) );
      s(168)<=( ('0' xor s(356) xor s(259) xor s(485)) );
      s(356)<=( ('0' xor s(332) xor s(90) xor s(92)) );
      s(90)<=( ('0' xor s(423) xor s(257) xor s(402)) );
      s(423)<=( ('0' xor s(371) xor s(424) xor s(390)) );
      s(371)<=( ('0' xor s(102) xor s(502) xor s(18)) );
      s(102)<=( ('0' xor s(250) xor s(25) xor s(404)) );
      s(250)<=( ('0' xor s(458) xor s(387) xor s(16)) );
      s(458)<=( ('0' xor s(360) xor s(75) xor s(31)) );
      s(75)<=( ('0' xor s(81) xor s(22) xor s(503)) );
      s(22)<=( ('0' xor s(44) xor s(36) xor s(87)) );
      s(44)<=( ('0' xor s(312) xor s(291) xor s(271)) );
      s(291)<=( ('0' xor s(293) xor s(236) xor s(455)) );
      s(236)<=( ('0' xor s(303) xor s(211) xor s(105)) );
      s(105)<=( ('0' xor s(237) xor s(377) xor s(315)) );
      s(237)<=( ('0' xor s(498) xor s(427) xor s(376)) );
      s(498)<=( ('0' xor s(371) xor s(470) xor s(159)) );
      s(470)<=( ('0' xor s(19) xor s(235) xor s(35)) );
      s(19)<=( ('0' xor s(318) xor s(29) xor s(160)) );
      s(29)<=( ('0' xor s(212) xor s(442) xor s(35)) );
      s(212)<=( ('0' xor s(33) xor s(326) xor s(189)) );
      s(33)<=( ('0' xor s(170) xor s(302) xor s(129)) );
      s(170)<=( ('0' xor s(44) xor s(326) xor s(262)) );
      s(326)<=( ('0' xor s(306) xor s(21) xor s(298)) );
      s(21)<=( ('0' xor s(112) xor s(162) xor s(375)) );
      s(162)<=( ('0' xor s(117) xor s(426) xor s(34)) );
      s(117)<=( ('0' xor s(125) xor s(230) xor s(80)) );
      s(230)<=( ('0' xor s(313) xor s(444) xor s(116)) );
      s(313)<=( ('0' xor s(126) xor s(11) xor s(297)) );
      s(126)<=( ('0' xor s(270) xor s(424) xor s(338)) );
      s(270)<=( ('0' xor s(130) xor s(101) xor s(406)) );
      s(130)<=( ('0' xor s(403) xor s(146) xor s(56)) );
      s(403)<=( ('0' xor s(291) xor s(393) xor s(210)) );
      s(393)<=( ('0' xor s(154) xor s(460) xor s(219)) );
      s(460)<=( ('0' xor s(162) xor s(17) xor s(451)) );
      s(17)<=( ('0' xor s(164) xor s(209) xor s(60)) );
      s(164)<=( ('0' xor s(343) xor s(178) xor s(114)) );
      s(343)<=( ('0' xor s(161) xor s(246) xor s(116)) );
      s(161)<=( ('0' xor s(144) xor s(302) xor s(455)) );
      s(302)<=( ('0' xor s(212) xor s(191) xor s(319)) );
      s(191)<=( ('0' xor s(412) xor s(265) xor s(104)) );
      s(412)<=( ('0' xor s(159) xor s(413) xor s(411)) );
      s(159)<=( ('0' xor s(380) xor s(115) xor s(8)) );
      s(380)<=( ('0' xor s(5) xor s(11) xor s(361)) );
      s(5)<=( ('0' xor s(445) xor s(233) xor s(417)) );
      s(445)<=( ('0' xor s(124) xor s(428) xor s(165)) );
      s(428)<=( ('0' xor s(377) xor s(479) xor s(177)) );
      s(377)<=( ('0' xor s(198) xor s(93) xor s(398)) );
      s(198)<=( ('0' xor s(231) xor s(29) xor s(286)) );
      s(286)<=( ('0' xor s(233) xor s(248) xor s(288)) );
      s(233)<=( ('0' xor s(507) xor s(285) xor s(365)) );
      s(507)<=( ('0' xor s(498) xor s(185) xor s(200)) );
      s(185)<=( ('0' xor s(137) xor s(108) xor s(182)) );
      s(108)<=( ('0' xor s(502) xor s(41) xor s(84)) );
      s(502)<=( ('0' xor s(45) xor s(385) xor s(489)) );
      s(45)<=( ('0' xor s(178) xor s(344) xor s(511)) );
      s(178)<=( ('0' xor s(508) xor s(68) xor s(501)) );
      s(508)<=( ('0' xor s(506) xor s(128) xor s(437)) );
      s(506)<=( ('0' xor s(474) xor s(135) xor s(443)) );
      s(474)<=( ('0' xor s(230) xor s(135) xor s(258)) );
      s(135)<=( ('0' xor s(114) xor s(365) xor s(120)) );
      s(114)<=( ('0' xor s(457) xor s(353) xor s(97)) );
      s(353)<=( ('0' xor s(171) xor s(113) xor s(486)) );
      s(171)<=( ('0' xor s(137) xor s(64) xor s(484)) );
      s(64)<=( ('0' xor s(475) xor s(31) xor s(100)) );
      s(31)<=( ('0' xor s(346) xor s(214) xor s(76)) );
      s(346)<=( ('0' xor s(22) xor s(21) xor s(364)) );
      s(364)<=( ('0' xor s(222) xor s(433) xor s(480)) );
      s(222)<=( ('0' xor s(499) xor s(274) xor s(255)) );
      s(499)<=( ('0' xor s(231) xor s(26) xor s(491)) );
      s(26)<=( ('0' xor s(147) xor s(72) xor s(213)) );
      s(147)<=( ('0' xor s(36) xor s(338) xor s(167)) );
      s(36)<=( ('0' xor s(314) xor s(39) xor s(292)) );
      s(314)<=( ('0' xor s(356) xor s(202) xor s(215)) );
      s(202)<=( ('0' xor s(418) xor s(232) xor s(56)) );
      s(418)<=( ('0' xor s(289) xor s(181) xor s(145)) );
      s(289)<=( ('0' xor s(151) xor s(443) xor s(320)) );
      s(443)<=( ('0' xor s(483) xor s(490) xor s(437)) );
      s(483)<=( ('0' xor s(147) xor s(58) xor s(444)) );
      s(58)<=( ('0' xor s(59) xor s(107) xor s(194)) );
      s(107)<=( ('0' xor s(93) xor s(214) xor s(279)) );
      s(93)<=( ('0' xor s(277) xor s(196) xor s(309)) );
      s(277)<=( ('0' xor s(344) xor s(489) xor s(321)) );
      s(344)<=( ('0' xor s(50) xor s(353) xor s(444)) );
      s(444)<=( ('0' xor s(144) xor s(277) xor s(459)) );
      s(459)<=( ('0' xor s(304) xor s(391) xor s(174)) );
      s(391)<=( ('0' xor s(248) xor s(145) xor s(48)) );
      s(248)<=( ('0' xor s(295) xor s(308) xor s(325)) );
      s(308)<=( ('0' xor s(149) xor s(229) xor s(71)) );
      s(149)<=( ('0' xor s(195) xor s(139) xor s(449)) );
      s(195)<=( ('0' xor s(136) xor s(27) xor s(429)) );
      s(136)<=( ('0' xor s(401) xor s(113) xor s(373)) );
      s(113)<=( ('0' xor s(29) xor s(229) xor s(186)) );
      s(229)<=( ('0' xor s(367) xor s(430) xor s(431)) );
      s(367)<=( ('0' xor s(136) xor s(397) xor s(422)) );
      s(397)<=( ('0' xor s(141) xor s(106) xor s(55)) );
      s(141)<=( ('0' xor s(450) xor s(228) xor s(275)) );
      s(228)<=( ('0' xor s(317) xor s(90) xor s(217)) );
      s(217)<=( ('0' xor s(215) xor s(69) xor s(32)) );
      s(215)<=( ('0' xor s(247) xor s(3) xor s(0)) );
      s(3)<=( ('0' xor s(212) xor s(353) xor s(415)) );
      s(415)<=( ('0' xor s(342) xor s(464) xor s(422)) );
      s(342)<=( ('0' xor s(474) xor s(83) xor s(297)) );
      s(83)<=( ('0' xor s(483) xor s(106) xor s(120)) );
      s(106)<=( ('0' xor s(187) xor s(57) xor s(495)) );
      s(57)<=( ('0' xor s(141) xor s(143) xor s(119)) );
      s(143)<=( ('0' xor s(112) xor s(18) xor s(24)) );
      s(18)<=( ('0' xor s(302) xor s(389) xor s(67)) );
      s(389)<=( ('0' xor s(250) xor s(157) xor s(138)) );
      s(157)<=( ('0' xor s(159) xor s(488) xor s(14)) );
      s(488)<=( ('0' xor s(115) xor s(426) xor s(169)) );
      s(115)<=( ('0' xor s(383) xor s(46) xor s(180)) );
      s(383)<=( ('0' xor s(285) xor s(357) xor s(91)) );
      s(285)<=( ('0' xor s(223) xor s(87) xor s(368)) );
      s(223)<=( ('0' xor s(364) xor s(196) xor s(259)) );
      s(196)<=( ('0' xor s(451) xor s(347) xor s(131)) );
      s(451)<=( ('0' xor s(205) xor s(272) xor s(138)) );
      s(205)<=( ('0' xor s(295) xor s(374) xor s(241)) );
      s(374)<=( ('0' xor s(232) xor s(307) xor s(94)) );
      s(232)<=( ('0' xor s(62) xor s(459) xor s(235)) );
      s(235)<=( ('0' xor s(142) xor s(296) xor s(490)) );
      s(296)<=( ('0' xor s(68) xor s(399) xor s(352)) );
      s(68)<=( ('0' xor s(132) xor s(500) xor s(54)) );
      s(132)<=( ('0' xor s(326) xor s(92) xor s(336)) );
      s(92)<=( ('0' xor s(43) xor s(235) xor s(482)) );
      s(482)<=( ('0' xor s(339) xor s(435) xor s(260)) );
      s(435)<=( ('0' xor s(475) xor s(57) xor s(67)) );
      s(67)<=( ('0' xor s(107) xor s(228) xor s(468)) );
      s(468)<=( ('0' xor s(108) xor s(354) xor s(65)) );
      s(354)<=( ('0' xor s(456) xor s(224) xor s(70)) );
      s(456)<=( ('0' xor s(245) xor s(362) xor s(49)) );
      s(245)<=( ('0' xor s(118) xor s(379) xor s(497)) );
      s(379)<=( ('0' xor s(43) xor s(3) xor s(98)) );
      s(98)<=( ('0' xor s(191) xor s(233) xor s(95)) );
      s(95)<=( ('0' xor s(88) xor s(261) xor s(9)) );
      s(261)<=( ('0' xor s(283) xor s(75) xor s(465)) );
      s(465)<=( ('0' xor s(174) xor s(204) xor s(491)) );
      s(174)<=( ('0' xor s(424) xor s(63) xor s(340)) );
      s(424)<=( ('0' xor s(236) xor s(482) xor s(351)) );
      s(351)<=( ('0' xor s(500) xor s(477) xor s(305)) );
      s(500)<=( ('0' xor s(87) xor s(496) xor s(208)) );
      s(87)<=( ('0' xor s(446) xor s(447) xor s(408)) );
      s(446)<=( ('0' xor s(168) xor s(416) xor s(148)) );
      s(416)<=( ('0' xor s(412) xor s(314) xor s(197)) );
      s(197)<=( ('0' xor s(346) xor s(347) xor s(328)) );
      s(347)<=( ('0' xor s(121) xor s(420) xor s(101)) );
      s(121)<=( ('0' xor s(25) xor s(180) xor s(260)) );
      s(25)<=( ('0' xor s(108) xor s(461) xor s(175)) );
      s(461)<=( ('0' xor s(102) xor s(496) xor s(274)) );
      s(496)<=( ('0' xor s(379) xor s(78) xor s(395)) );
      s(78)<=( ('0' xor s(281) xor s(374) xor s(471)) );
      s(471)<=( ('0' xor s(126) xor s(199) xor s(463)) );
      s(199)<=( ('0' xor s(430) xor s(263) xor s(434)) );
      s(430)<=( ('0' xor s(134) xor s(209) xor s(179)) );
      s(209)<=( ('0' xor s(314) xor s(184) xor s(179)) );
      s(184)<=( ('0' xor s(274) xor s(206) xor s(287)) );
      s(274)<=( ('0' xor s(272) xor s(268) xor s(206)) );
      s(272)<=( ('0' xor s(5) xor s(328) xor s(122)) );
      s(328)<=( ('0' xor s(509) xor s(351) xor s(420)) );
      s(420)<=( ('0' xor s(22) xor s(387) xor s(254)) );
      s(387)<=( ('0' xor s(312) xor s(42) xor s(441)) );
      s(42)<=( ('0' xor s(77) xor s(122) xor s(207)) );
      s(122)<=( ('0' xor s(496) xor s(86) xor s(355)) );
      s(86)<=( ('0' xor s(378) xor s(129) xor s(40)) );
      s(129)<=( ('0' xor s(240) xor s(392) xor s(53)) );
      s(240)<=( ('0' xor s(347) xor s(173) xor s(172)) );
      s(173)<=( ('0' xor s(247) xor s(345) xor s(284)) );
      s(345)<=( ('0' xor s(181) xor s(66) xor s(166)) );
      s(181)<=( ('0' xor s(261) xor s(174) xor s(503)) );
      s(503)<=( ('0' xor s(164) xor s(182) xor s(96)) );
      s(182)<=( ('0' xor s(222) xor s(242) xor s(505)) );
      s(242)<=( ('0' xor s(12) xor s(33) xor s(204)) );
      s(204)<=( ('0' xor s(428) xor s(327) xor s(251)) );
      s(327)<=( ('0' xor s(19) xor s(479) xor s(363)) );
      s(479)<=( ('0' xor s(403) xor s(129) xor s(431)) );
      s(431)<=( ('0' xor s(3) xor s(96) xor s(4)) );
      s(96)<=( ('0' xor s(500) xor s(301) xor s(46)) );
      s(301)<=( ('0' xor s(234) xor s(315) xor s(467)) );
      s(234)<=( ('0' xor s(6) xor s(102) xor s(440)) );
      s(440)<=( ('0' xor s(109) xor s(111) xor s(150)) );
      s(111)<=( ('0' xor s(267) xor s(463) xor s(82)) );
      s(267)<=( ('0' xor s(354) xor s(203) xor s(323)) );
      s(203)<=( ('0' xor s(40) xor s(16) xor s(504)) );
      s(40)<=( ('0' xor s(223) xor s(392) xor s(484)) );
      s(392)<=( ('0' xor s(465) xor s(319) xor s(394)) );
      s(319)<=( ('0' xor s(30) xor s(2) xor s(38)) );
      s(30)<=( ('0' xor s(315) xor s(511) xor s(175)) );
      s(315)<=( ('0' xor s(202) xor s(189) xor s(227)) );
      s(189)<=( ('0' xor s(208) xor s(349) xor s(0)) );
      s(208)<=( ('0' xor s(30) xor s(493) xor s(504)) );
      s(493)<=( ('0' xor s(44) xor s(455) xor s(94)) );
      s(455)<=( ('0' xor s(273) xor s(165) xor s(469)) );
      s(165)<=( ('0' xor s(265) xor s(405) xor s(9)) );
      s(265)<=( ('0' xor s(447) xor s(298) xor s(476)) );
      s(447)<=( ('0' xor s(388) xor s(17) xor s(145)) );
      s(145)<=( ('0' xor s(234) xor s(478) xor s(449)) );
      s(478)<=( ('0' xor s(132) xor s(104) xor s(453)) );
      s(104)<=( ('0' xor s(458) xor s(268) xor s(140)) );
      s(268)<=( ('0' xor s(423) xor s(469) xor s(79)) );
      s(469)<=( ('0' xor s(101) xor s(256) xor s(334)) );
      s(101)<=( ('0' xor s(105) xor s(64) xor s(259)) );
      s(259)<=( ('0' xor s(335) xor s(224) xor s(310)) );
      s(335)<=( ('0' xor s(52) xor s(201) xor s(278)) );
      s(52)<=( ('0' xor s(367) xor s(433) xor s(65)) );
      s(433)<=( ('0' xor s(81) xor s(51) xor s(477)) );
      s(477)<=( ('0' xor s(388) xor s(136) xor s(276)) );
      s(276)<=( ('0' xor s(205) xor s(263) xor s(358)) );
      s(263)<=( ('0' xor s(346) xor s(232) xor s(341)) );
      s(341)<=( ('0' xor s(339) xor s(304) xor s(257)) );
      s(257)<=( ('0' xor s(93) xor s(204) xor s(258)) );
      s(258)<=( ('0' xor s(266) xor s(240) xor s(37)) );
      s(37)<=( ('0' xor s(107) xor s(157) xor s(4)) );
      s(4)<=( ('0' xor s(506) xor s(288) xor s(190)) );
      s(288)<=( ('0' xor s(51) xor s(485) xor s(213)) );
      s(485)<=( ('0' xor s(319) xor s(15) xor s(413)) );
      s(15)<=( ('0' xor s(52) xor s(65) xor s(438)) );
      s(65)<=( ('0' xor s(391) xor s(421) xor s(241)) );
      s(421)<=( ('0' xor s(170) xor s(4) xor s(329)) );
      s(329)<=( ('0' xor s(58) xor s(160) xor s(85)) );
      s(160)<=( ('0' xor s(211) xor s(459) xor s(153)) );
      s(153)<=( ('0' xor s(442) xor s(311) xor s(323)) );
      s(442)<=( ('0' xor s(173) xor s(15) xor s(227)) );
      s(227)<=( ('0' xor s(185) xor s(139) xor s(373)) );
      s(139)<=( ('0' xor s(367) xor s(63) xor s(495)) );
      s(63)<=( ('0' xor s(171) xor s(298) xor s(385)) );
      s(298)<=( ('0' xor s(99) xor s(133) xor s(225)) );
      s(99)<=( ('0' xor s(199) xor s(242) xor s(254)) );
      s(254)<=( ('0' xor s(131) xor s(156) xor s(324)) );
      s(131)<=( ('0' xor s(286) xor s(133) xor s(219)) );
      s(133)<=( ('0' xor s(168) xor s(290) xor s(251)) );
      s(290)<=( ('0' xor s(337) xor s(510) xor s(244)) );
      s(337)<=( ('0' xor s(445) xor s(265) xor s(55)) );
      s(55)<=( ('0' xor s(416) xor s(358) xor s(13)) );
      s(358)<=( ('0' xor s(382) xor s(478) xor s(146)) );
      s(146)<=( ('0' xor s(300) xor s(127) xor s(10)) );
      s(127)<=( ('0' xor s(176) xor s(462) xor s(494)) );
      s(494)<=( ('0' xor s(23) xor s(203) xor s(28)) );
      s(28)<=( ('0' xor s(482) xor s(431) xor s(48)) );
      s(48)<=( ('0' xor s(249) xor s(187) xor s(210)) );
      s(210)<=( ('0' xor s(45) xor s(143) xor s(452)) );
      s(452)<=( ('0' xor s(31) xor s(14) xor s(186)) );
      s(14)<=( ('0' xor s(308) xor s(246) xor s(406)) );
      s(246)<=( ('0' xor s(139) xor s(46) xor s(183)) );
      s(46)<=( ('0' xor s(380) xor s(234) xor s(349)) );
      s(349)<=( ('0' xor s(401) xor s(270) xor s(72)) );
      s(72)<=( ('0' xor s(141) xor s(37) xor s(186)) );
      s(186)<=( ('0' xor s(426) xor s(103) xor s(436)) );
      s(426)<=( ('0' xor s(350) xor s(79) xor s(436)) );
      s(350)<=( ('0' xor s(257) xor s(439) xor s(414)) );
      s(439)<=( ('0' xor s(250) xor s(381) xor s(394)) );
      s(381)<=( ('0' xor s(393) xor s(26) xor s(486)) );
      s(486)<=( ('0' xor s(386) xor s(446) xor s(325)) );
      s(325)<=( ('0' xor s(162) xor s(66) xor s(294)) );
      s(66)<=( ('0' xor s(383) xor s(89) xor s(333)) );
      s(89)<=( ('0' xor s(313) xor s(433) xor s(11)) );
      s(11)<=( ('0' xor s(131) xor s(280) xor s(110)) );
      s(280)<=( ('0' xor s(448) xor s(128) xor s(218)) );
      s(448)<=( ('0' xor s(356) xor s(288) xor s(226)) );
      s(226)<=( ('0' xor s(149) xor s(41) xor s(279)) );
      s(41)<=( ('0' xor s(499) xor s(488) xor s(221)) );
      s(221)<=( ('0' xor s(384) xor s(226) xor s(375)) );
      s(375)<=( ('0' xor s(483) xor s(359) xor s(376)) );
      s(359)<=( ('0' xor s(249) xor s(384) xor s(128)) );
      s(128)<=( ('0' xor s(415) xor s(99) xor s(399)) );
      s(399)<=( ('0' xor s(123) xor s(461) xor s(148)) );
      s(148)<=( ('0' xor s(236) xor s(237) xor s(484)) );
      s(484)<=( ('0' xor s(197) xor s(427) xor s(331)) );
      s(427)<=( ('0' xor s(350) xor s(7) xor s(97)) );
      s(7)<=( ('0' xor s(161) xor s(35) xor s(167)) );
      s(35)<=( ('0' xor s(245) xor s(86) xor s(275)) );
      s(275)<=( ('0' xor s(185) xor s(471) xor s(406)) );
      s(406)<=( ('0' xor s(509) xor s(381) xor s(0)) );
      s(0)<=( ('0' xor s(370) xor s(343) xor s(449)) );
      s(449)<=( ('0' xor s(223) xor s(421) xor s(464)) );
      s(464)<=( ('0' xor s(442) xor s(299) xor s(201)) );
      s(299)<=( ('0' xor s(17) xor s(491) xor s(269)) );
      s(491)<=( ('0' xor s(458) xor s(217) xor s(362)) );
      s(362)<=( ('0' xor s(15) xor s(419) xor s(467)) );
      s(419)<=( ('0' xor s(41) xor s(320) xor s(103)) );
      s(320)<=( ('0' xor s(165) xor s(414) xor s(432)) );
      s(414)<=( ('0' xor s(77) xor s(418) xor s(214)) );
      s(214)<=( ('0' xor s(182) xor s(246) xor s(100)) );
      s(100)<=( ('0' xor s(130) xor s(305) xor s(85)) );
      s(305)<=( ('0' xor s(117) xor s(14) xor s(510)) );
      s(510)<=( ('0' xor s(439) xor s(100) xor s(201)) );
      s(201)<=( ('0' xor s(350) xor s(54) xor s(348)) );
      s(54)<=( ('0' xor s(98) xor s(49) xor s(192)) );
      s(49)<=( ('0' xor s(479) xor s(189) xor s(110)) );
      s(110)<=( ('0' xor s(261) xor s(447) xor s(10)) );
      s(10)<=( ('0' xor s(440) xor s(224) xor s(239)) );
      s(224)<=( ('0' xor s(329) xor s(375) xor s(497)) );
      s(497)<=( ('0' xor s(397) xor s(181) xor s(355)) );
      s(355)<=( ('0' xor s(28) xor s(414) xor s(297)) );
      s(297)<=( ('0' xor s(462) xor s(103) xor s(402)) );
      s(103)<=( ('0' xor s(118) xor s(425) xor s(309)) );
      s(425)<=( ('0' xor s(290) xor s(275) xor s(119)) );
      s(119)<=( ('0' xor s(276) xor s(258) xor s(138)) );
      s(138)<=( ('0' xor s(48) xor s(399) xor s(180)) );
      s(180)<=( ('0' xor s(286) xor s(39) xor s(466)) );
      s(39)<=( ('0' xor s(198) xor s(148) xor s(472)) );
      s(472)<=( ('0' xor s(19) xor s(5) xor s(2)) );
      s(2)<=( ('0' xor s(127) xor s(34) xor s(278)) );
      s(34)<=( ('0' xor s(289) xor s(338) xor s(292)) );
      s(338)<=( ('0' xor s(267) xor s(396) xor s(169)) );
      s(396)<=( ('0' xor s(415) xor s(122) xor s(511)) );
      s(511)<=( ('0' xor s(345) xor s(172) xor s(324)) );
      s(172)<=( ('0' xor s(427) xor s(408) xor s(188)) );
      s(408)<=( ('0' xor s(90) xor s(64) xor s(69)) );
      s(69)<=( ('0' xor s(1) xor s(365) xor s(220)) );
      s(365)<=( ('0' xor s(106) xor s(505) xor s(80)) );
      s(505)<=( ('0' xor s(221) xor s(190) xor s(73)) );
      s(190)<=( ('0' xor s(296) xor s(294) xor s(84)) );
      s(294)<=( ('0' xor s(266) xor s(115) xor s(330)) );
      s(330)<=( ('0' xor s(359) xor s(213) xor s(287)) );
      s(213)<=( ('0' xor s(253) xor s(382) xor s(158)) );
      s(158)<=( ('0' xor s(143) xor s(310) xor s(336)) );
      s(310)<=( ('0' xor s(239) xor s(166) xor s(369)) );
      s(239)<=( ('0' xor s(74) xor s(454) xor s(432)) );
      s(74)<=( ('0' xor s(306) xor s(327) xor s(194)) );
      s(194)<=( ('0' xor s(294) xor s(169) xor s(481)) );
      s(169)<=( ('0' xor s(121) xor s(60) xor s(53)) );
      s(60)<=( ('0' xor s(197) xor s(471) xor s(385)) );
      s(385)<=( ('0' xor s(460) xor s(309) xor s(269)) );
      s(309)<=( ('0' xor s(24) xor s(404) xor s(410)) );
      s(24)<=( ('0' xor s(111) xor s(38) xor s(140)) );
      s(38)<=( ('0' xor s(281) xor s(206) xor s(207)) );
      s(206)<=( ('0' xor s(352) xor s(256) xor s(405)) );
      s(352)<=( ('0' xor s(163) xor s(494) xor s(331)) );
      s(331)<=( ('0' xor s(58) xor s(30) xor s(287)) );
      s(287)<=( ('0' xor s(2) xor s(361) xor s(322)) );
      s(361)<=( ('0' xor s(400) xor s(394) xor s(311)) );
      s(394)<=( ('0' xor s(111) xor s(481) xor s(348)) );
      s(481)<=( ('0' xor s(349) xor s(10) xor s(255)) );
      s(255)<=( ('0' xor s(498) xor s(470) xor s(193)) );
      s(193)<=( ('0' xor s(171) xor s(352) xor s(225)) );
      s(225)<=( ('0' xor s(151) xor s(117) xor s(84)) );
      s(84)<=( ('0' xor s(474) xor s(330) xor s(489)) );
      s(489)<=( ('0' xor s(36) xor s(341) xor s(116)) );
      s(116)<=( ('0' xor s(39) xor s(120) xor s(192)) );
      s(120)<=( ('0' xor s(72) xor s(54) xor s(366)) );
      s(366)<=( ('0' xor s(329) xor s(472) xor s(404)) );
      s(404)<=( ('0' xor s(230) xor s(219) xor s(363)) );
      s(219)<=( ('0' xor s(313) xor s(13) xor s(271)) );
      s(13)<=( ('0' xor s(327) xor s(166) xor s(395)) );
      s(166)<=( ('0' xor s(451) xor s(362) xor s(438)) );
      s(438)<=( ('0' xor s(291) xor s(307) xor s(8)) );
      s(307)<=( ('0' xor s(13) xor s(156) xor s(473)) );
      s(156)<=( ('0' xor s(190) xor s(279) xor s(183)) );
      s(279)<=( ('0' xor s(370) xor s(506) xor s(71)) );
      s(71)<=( ('0' xor s(62) xor s(332) xor s(322)) );
      s(322)<=( ('0' xor s(184) xor s(467) xor s(441)) );
      s(467)<=( ('0' xor s(456) xor s(310) xor s(333)) );
      s(333)<=( ('0' xor s(380) xor s(225) xor s(454)) );
      s(454)<=( ('0' xor s(470) xor s(256) xor s(200)) );
      s(256)<=( ('0' xor s(282) xor s(242) xor s(53)) );
      s(53)<=( ('0' xor s(202) xor s(324) xor s(473)) );
      s(324)<=( ('0' xor s(419) xor s(60) xor s(501)) );
      s(501)<=( ('0' xor s(124) xor s(198) xor s(410)) );
      s(410)<=( ('0' xor s(57) xor s(239) xor s(413)) );
      s(413)<=( ('0' xor s(354) xor s(188) xor s(369)) );
      s(188)<=( ('0' xor s(153) xor s(200) xor s(429)) );
      s(200)<=( ('0' xor s(492) xor s(440) xor s(70)) );
      s(70)<=( ('0' xor s(191) xor s(67) xor s(357)) );
      s(357)<=( ('0' xor s(6) xor s(335) xor s(269)) );
      s(269)<=( ('0' xor s(277) xor s(272) xor s(271)) );
      s(271)<=( ('0' xor s(196) xor s(408) xor s(363)) );
      s(363)<=( ('0' xor s(446) xor s(358) xor s(27)) );
      s(27)<=( ('0' xor s(208) xor s(493) xor s(155)) );
      s(155)<=( ('0' xor s(113) xor s(209) xor s(311)) );
      s(311)<=( ('0' xor s(248) xor s(276) xor s(441)) );
      s(441)<=( ('0' xor s(477) xor s(337) xor s(368)) );
      s(368)<=( ('0' xor s(126) xor s(177) xor s(252)) );
      s(177)<=( ('0' xor s(393) xor s(99) xor s(61)) );
      s(61)<=( ('0' xor s(193) xor s(79) xor s(262)) );
      s(79)<=( ('0' xor s(226) xor s(396) xor s(473)) );
      s(473)<=( ('0' xor s(428) xor s(20) xor s(487)) );
      s(20)<=( ('0' xor s(293) xor s(74) xor s(179)) );
      s(179)<=( ('0' xor s(320) xor s(396) xor s(417)) );
      s(417)<=( ('0' xor s(488) xor s(61) xor s(262)) );
      s(262)<=( ('0' xor s(170) xor s(337) xor s(243)) );
      s(243)<=( ('0' xor s(7) xor s(188) xor s(407)) );
      s(407)<=( ('0' xor s(403) xor s(229) xor s(334)) );
      s(334)<=( ('0' xor s(469) xor s(38) xor s(175)) );
      s(175)<=( ('0' xor s(1) xor s(98) xor s(398)) );
      s(398)<=( ('0' xor s(105) xor s(341) xor s(373)) );
      s(373)<=( ('0' xor s(508) xor s(42) xor s(348)) );
      s(348)<=( ('0' xor s(364) xor s(299) xor s(183)) );
      s(183)<=( ('0' xor s(253) xor s(366) xor s(140)) );
      s(140)<=( ('0' xor s(472) xor s(27) xor s(244)) );
      s(244)<=( ('0' xor s(146) xor s(152) xor s(47)) );
      s(152)<=( ('0' xor s(412) xor s(95) xor s(340)) );
      s(340)<=( ('0' xor s(130) xor s(499) xor s(167)) );
      s(167)<=( ('0' xor s(50) xor s(307) xor s(453)) );
      s(453)<=( ('0' xor s(33) xor s(465) xor s(47)) );
      s(47)<=( ('0' xor s(69) xor s(91)) );
      s(91)<=( ('0' xor s(142) xor s(192) xor s(487)) );
      s(192)<=( ('0' xor s(132) xor s(218) xor s(150)) );
      s(218)<=( ('0' xor s(398) xor s(94) xor s(284)) );
      s(94)<=( ('0' xor s(18) xor s(210) xor s(76)) );
      s(76)<=( ('0' xor s(507) xor s(305) xor s(260)) );
      s(260)<=( ('0' xor s(263) xor s(243) xor s(16)) );
      s(16)<=( ('0' xor s(502) xor s(495) xor s(252)) );
      s(495)<=( ('0' xor s(468) xor s(244) xor s(463)) );
      s(463)<=( ('0' xor s(222) xor s(127) xor s(490)) );
      s(490)<=( ('0' xor s(89) xor s(417) xor s(390)) );
      s(390)<=( ('0' xor s(21) xor s(485) xor s(150)) );
      s(150)<=( ('0' xor s(386) xor s(155) xor s(80)) );
      s(80)<=( ('0' xor s(52) xor s(8) xor s(409)) );
      s(8)<=( ('0' xor s(372) xor s(345) xor s(32)) );
      s(32)<=( ('0' xor s(317) xor s(360) xor s(56)) );
      s(56)<=( ('0' xor s(425) xor s(411) xor s(321)) );
      s(411)<=( ('0' xor s(238) xor s(176) xor s(432)) );
      s(432)<=( ('0' xor s(49) xor s(172) xor s(422)) );
      s(422)<=( ('0' xor s(273) xor s(245) xor s(241)) );
      s(241)<=( ('0' xor s(237) xor s(494) xor s(434)) );
      s(434)<=( ('0' xor s(460) xor s(217) xor s(405)) );
      s(405)<=( ('0' xor s(423) xor s(435) xor s(323)) );
      s(323)<=( ('0' xor s(104) xor s(47) xor s(207)) );
      s(207)<=( ('0' xor s(303) xor s(505) xor s(476)) );
      s(476)<=( ('0' xor s(147) xor s(456) xor s(376)) );
      s(376)<=( ('0' xor s(109) xor s(340) xor s(436)) );
      s(436)<=( ('0' xor s(301) xor s(160) xor s(369)) );
      s(369)<=( ('0' xor s(343) xor s(381) xor s(97)) );
      s(97)<=( ('0' xor s(114) xor s(448) xor s(284)) );
      s(284)<=( ('0' xor s(387) xor s(20) xor s(252)) );
      s(252)<=( ('0' xor s(240) xor s(434) xor s(292)) );
      s(292)<=( ('0' xor s(264) xor s(504) xor s(466)) );
      s(504)<=( ('0' xor s(397) xor s(228) xor s(480)) );
      s(480)<=( ('0' xor s(83) xor s(133) xor s(409)) );
      s(409)<=( ('0' xor s(371) xor s(290) xor s(395)) );
      s(395)<=( ('0' xor s(238) xor s(243) xor s(437)) );
      s(437)<=( ('0' xor s(325) xor s(390) xor s(220)) );
      s(220)<=( ('0' xor s(70) xor s(357) xor s(278)) );
      s(278)<=( ('0' xor s(435) xor s(78) xor s(402)) );
      s(402)<=( ('0' xor s(193) xor s(155) xor s(466)) );
      s(466)<=( ('0' xor s(45) xor s(20) xor s(336)) );
      s(336)<=( ('0' xor s(316) xor s(71) xor s(251)) );
      s(251)<=( ('0' xor s(153) xor s(368) xor s(321)) );
      s(321)<=( ('0' xor s(282) xor s(289) xor s(82)) );
      s(82)<=( ('0' xor s(254) xor s(7) xor s(9)) );
      s(9)<=( ('0' xor s(438) xor s(487) xor s(73)) );
      s(487)<=( ('0' xor s(308) xor s(296) xor s(429)) );
      s(429)<=( ('0' xor s(409) xor s(82) xor s(73)) );
      s(73)<=( ('0' xor s(450) xor s(419) xor s(85)) );
      s(85)<=( ('0' xor s(142) xor s(389) xor s(42)) );
    end if;
  end process;
end RTL;
