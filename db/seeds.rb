# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Route.destroy_all
Workout.destroy_all

workout_names = [
  'Sasquatch Seekers',
  'Gummi Bear Grylls',
  'Runners of Unusual Strides' ,
  'You’ve died of dysentery' ,
  'Climb & Punishment' ,
  'Making Mole Hills out of Mountains' ,
  'Where’s the Road? ',
  'Trail relay… oh Hill No you didn’t' ,
  'Trails and Tribulations' ,
  'Is it Really this Dark in the Forest? ',
  'Holy Grail… We’re Hittin the Trail! ',
  'Ales and Trails' ,
  'Our Ragnar Team is in-TENTS this year! ',
  'We’re going in Circles! ',
  'Low Budget Horror Film' ,
  'Just a few S’more miles ',
  'Quest for the Holy Trail' ,
  'If We Fall, We Will Make a Sound' ,
  'In-Tent on Running',
  'The Village Idiots',
  'S.O.S. –Stick or Snake',
  'We’re Trail-ing',
  'Burning the Midnight Soil',
  'I Relay Like to Camp',
  'Legs Done Trail Me Now',
  'Trail & Error',
  'The Donner Party',
  'Bear Bait',
  'Slow White and the 7 Drunks',
  'Better Chafe Than Sorry Trail',
  'Running Outta Moonshine',
  'Sleepy in Snowmass',
  'We’re not RELAYted',
  'Scurrying Scientists',
  'In it for the S’mores',
  'Oh-Limp-ians',
  'Smokey’s Worst Nightmare!!',
  'Knights of the Buffet Table',
  'Chafed and Confused',
  'Hall of',
  'Shamers',
  'The Bouncer',
  'We Die Young',
  'Kickboxer: Retaliation',
  'Kill em All',
  'Kickboxer: Vengeance',
  'Cyborg',
  'Wake of Death',
  'Lionheart',
  'Maximum Risk',
  'Replicant',
  'Death Warrant',
  'Nowhere to Run',
  'Double Impact',
  'Hard Target',
]
user1 = User.create!(username: "lanceArmstrong", password: "password", email: "lance@livestrong.com")

#


route1 = Route.create!(user_id: user1.id,
title: "Heart of the city",
description: "A rough and tumble run. Watch out for buses!",
distance: 5.01,
distance_unit: "miles",
duration: "1 hour 8 mins",
elevation_gain: "97.15",
polyline: 'cqseFz~fjVOgCk@iI|AQxGw@k@eIqAeSQaCyDul@e@gId@fIj@jI^bGyDb@{Dd@Fz@JpAVxDgCZqFn@wYlDM@AYIuAHtAB|@DbBFpALnBATf@`IdDtg@h@fIvDe@nDa@hUmC|Dg@'
)


route2 = Route.create!(user_id: user1.id,
  title: "Beach Run",
  description: "Watch out for twisted ankles!",
  distance: 8.04,
  distance_unit: "miles",
  duration: "1 hour 38 mins",
  elevation_gain: "207.61",
  polyline: 'ks~bErnhlNGiAIs@WqAi@}Bk@oDk@gDcAcEa@kAe@}@eBaC_AaBISG_@CoAI{CGgAq@yDc@qAY]y@e@eAWc@o@Uw@wA_Kg@qC_@cA]o@{@wAeEkGaGiKMYG]Gi@?s@FcA@uAMk@w@mAiC{DOc@e@}Aw@gAqBgBsAwA{DeFcBeCuB{C{BwDqBwDsN{WIg@CY?[HiABWJBJJ?PHRV\LBFHFT^h@Xh@\f@FVLPRd@\f@JXv@tA^^p@hANJh@@RHT^Vf@JBLCLAVBWCM@MBKCOY]m@SIWAQ?OKq@iA_@_@}@aBEMQSKSGQYe@GWMQ[i@c@o@Qe@GIMCW]IS?QKKKCF[fBkHDmACe@Ou@kCqGaAoBo@kAe@g@_@k@Uk@Uo@q@uAm@eAa@eBKUKc@u@qAc@m@w@{@e@i@i@{@i@_Am@uAgA}Be@{@}@oBs@_Ak@g@Y[k@u@a@o@g@iAWy@_@m@wAmBeByBsAiCi@aAe@m@a@m@Ss@Gk@@c@HiAROVc@Ri@^cAXoAHy@@u@EuAGo@Sy@_AqCy@aCiIdEg@Tf@UhIeEsDcK}AmEWaAg@uAsC_JcAeD',
)


route3 = Route.create!(user_id: user1.id,
  title: "DC Monument's",
  description: "National mall, so patriotic!",
  distance: 6.56,
  distance_unit: "miles",
  duration: "1 hour 23 mins",
  elevation_gain: "19.46",
  polyline: 'ubklFhofuM?iUBsR?kK?yEAoH@yH?sMA_L@kG@}Bj@k@Nc@Hc@Dw@@eAG_AKo@y@aA?{MAeAKg@c@gAIOZeBZkB^LHBP?nF@vKCfE?A~L?zX?pT?dC?~S?~@GRAh@c@xCIt@?x@@ZU@@ZB^T?j@rDHvA@tACpAGh@WlAGt@B~@@zAWnBYfCEj@AdBFrANrAXlAj@~Ar@zBVhAXtBHhBKvH[fTCtCCfD_@?eC?Y?AMIo@Mk@QYMY[g@g@Y?OgD?k@AMEOSCKECWW_@QSAKBa@XmANm@e@oBsAGEi@{@?_E?qK',
)


route4 = Route.create!(user_id: user1.id,
title: "Oakland Hills",
description: "Calf Burner",
distance: 7.98,
distance_unit: "miles",
duration: "2 hours 3 mins",
elevation_gain: "440.81",
polyline: 'ib|eFfwvhV[Qi@?M@MPG\]|CDVR^v@nAPb@RbANVf@`@ZXLJNJd@JNH@FFCTOVSRKLDLNTXXTVHZ?`@CPMJMLDJL?P@d@Tz@Pb@PRRHTBTEDQDo@@YHKPCb@JRALIHa@D[FQNILAf@H`AXJ@JITWFQ?WO_AEe@BURQRWL_A?YEYA]HQ^@ZB\Qp@]LQRa@N_@LAJDDPl@mC`@mDZwDRmDn@sE\_BRg@NYd@i@|@mAd@w@VWRIF?FBFLRp@t@dCl@oA`@{AZcE@sACSg@D[As@g@u@u@J_AXkC~AoEhE_MbA}ClD_Gf@_B@]LQr@_A^s@nAaBnAuA^[d@k@Xo@d@]JGVCPDl@`@oBtCkBrB?DDFp@JR?NGTOn@y@lB_Cn@c@LEd@@w@pAM`@YjBYdBSp@OXEDg@Fa@TQRKVa@`A]j@y@pB_AvAc@hBCTHj@VrABd@AZGTOVe@^o@^[DcAKQBIHELCZBj@GZIPQPKFGFId@Qn@Yb@SXCZHTVT~@b@XPNTF`@Bb@yKxBg@D[As@g@u@u@cApAaAdAiAx@kChAa@d@QZCW`@eEPoAl@{C?OEUKCWFOJmAt@[NUP[R]DUJE@qB?c@Fs@h@g@V_@HSASIKKDGPk@RiBDq@Hm@FOt@_C`@g@~@a@j@y@He@Ag@ScBC_ALo@b@kABHEPOt@Gl@Fb@Xf@J^B^TT\LPAVBNZ@d@Sv@[n@w@vAe@n@m@ZQ\Cb@Jd@`@NZDNLL`@BRE@u@@{@Ac@Fs@h@g@V_@HSASIKKIHoBzAqCdCy@v@i@Z]n@Wv@y@|CGbBMt@Sb@_@ZcAlAe@v@M`@Il@En@Al@QjAYpA'
)


route5 = Route.create!(user_id: user1.id,
title: "Mountain Loop Road",
description: "A beautiful, yet arduous trip",
distance: 10.76,
distance_unit: "miles",
duration: "2 hours 24 mins",
elevation_gain: "263.71",
polyline: '}hhfFvgakVZLb@\HDPDNALBJAXMJCb@Cp@Db@VJLJTV~@KrAGZBLTP`@RRTETBRt@|@RXFF`@BZHPZFN@FETq@`@SBIACDFj@Gd@EJKJCB@BZFX\JDBF?l@D`@BDL@FKLo@FAHHH`@D\ALC`@Ed@CXBNNV`AmDXi@bBqB^k@`@_ADS?Il@SjAC`BH`ALNHLRNf@Nt@DNBBLB|@@b@?`AG`AM^@n@Xp@\d@d@NT^v@fAnBTZ`A`A\d@Td@Rh@Hf@HxBJr@Rh@x@dAlAtAfAdBRb@d@pAn@hB`@hBTxA@d@@zDDp@HZVf@Z`@nAbBf@f@h@Zr@Tf@HlABnA`@~@h@lAxAbBfAhA`Ap@bAr@tAhCbFhAxBXVz@d@bAx@TVNLNFTBTAr@G^DNJVVr@|@b@Xn@Hl@F\Ar@QhAI`A[|@Q\Gb@Kf@YdA{@x@w@ZOv@W`Ba@p@Mr@AhAFd@?^GPGLKTc@^gA\o@pAgDv@qAnBsCtCeEh@{@JK@KBON_@rAcCd@q@l@q@jC}BfDeDh@a@vBwA\_@^m@Xw@Jy@As@I{@S_AUm@IOYY_Aq@KMIOGg@GWUc@EUAWDe@B[EYOYo@W[QUa@EY@YViAHg@Ae@_@eBUc@WMu@Cs@IWKMU?_@Di@Ci@Io@Ka@KSw@y@MWIk@Oa@QSg@_@[Ge@AYI}@g@YCe@?{@[KAQF[h@MNSHq@FUGKQCSFk@Dk@Gi@MYY_@c@[_@Kq@G[Oy@y@c@]_@QUC[@i@Lm@VWRSVONOBMCKOKy@GQUQ]WU]OSKGm@EW?MCMKQi@KQWOk@GQMIOSy@OWOMWIU?QF]Tc@NeAVQ@MAIKAI?WV{@Pm@L_AHaAA_@QkAEk@Sw@Yg@_@WQKIOOcAs@gBSi@KSSSSKQAK@g@Rs@VQ@M?IEIME]FcCEg@Og@q@kAy@_ASK_BU[EQKOSG[Km@O[MIc@Mk@AY@W?IGGO@QDQTe@HY@UAKISMOMIUCUHWRWTu@`@c@Na@?i@MyBi@aAOe@@i@@u@SSAMDMHQVg@`AGDUFUIQQSMOGOA_ALIAOESa@O]GGGE@HFXPh@NTRJV@d@CT@LFJJBF?TINO@SAYCU@aC\s@BeBEaA?o@E{@M}A_@m@Co@B}BL_BHeANcBj@yAb@[RSRcCbDg@\]Hg@Bs@EeA?_DZgATi@X}@h@w@h@STFBFDJ\Hj@?h@SxBKd@SRMDU@YCSDGFEJANFTFV?XGZU^Yr@SZYN[NQRQ^[Ti@L]B{@B'
)

route6 = Route.create!(user_id: user1.id,
title: "Hamilton Homecoming",
description: "Jog by the lake, job by the hills, both will do",
distance: 7.86,
distance_unit: "miles",
duration: "1 hour 37 mins",
elevation_gain: "61.94",
polyline: 'qkhfFvbyjVcAFq@TcCx@SHkBp@{AAqDS]SQWq@fAUnALRNv@Jp@@j@Kh@Y`@_@p@a@d@mAdAk@^s@|@wBdCFVLADJJJL@FAGRAJFL^?`@HfA~CFVID[AiAMAvAIx@pA`@j@P~Af@\Vn@l@pAr@h@NdAL`CTvBFdOIAg@CCkEBG[@[Jg@Lo@Pc@?a@Ne@`@m@d@KlAAfCRp@JNNFJFBVHrANVR~@wBzDsI|@mBZc@`@_@r@e@b@Oh@I`CUjFg@fASd@Mh@W^WbCmBfAs@d@Qh@Gb@@p@Ln@XXTTZd@t@^d@TRPLCNi@g@UYk@aAUYa@[i@Wo@Kk@?w@NWLy@n@eCxBu@`@OFEQFWGc@qA^iBVcCX{P|AsFj@sQ~AuAJ_@DAGMGG@GLADU@[?QF_@JoCPoMlAWBMAKKEKM@GWvBeCr@}@j@_@lAeA`@e@^q@Xa@Ji@Ak@Kq@Ow@MSToAp@gAPV\RpDRzA@jBq@RIbCy@p@UbBIjAI\Q^_@b@o@f@}Af@uBTaABa@M{B?k@J{@d@yA`@i@p@s@fB_BbAo@^YD[B[vBJbCVr@J`@LlAl@j@Pb@?l@KxAe@GWCCG@eAZK?EO?GDIJ?HBB?BEEKAO@cBCG?IFEN?AEECM??CG[r@Uj@En@@^Dz@VdAXTB'
)

route7 = Route.create!(user_id: user1.id,
title: "Gold State Park",
description: "A walk in the park.........",
distance: 4.37,
distance_unit: "miles",
duration: "54 mins",
elevation_gain: "99.60",
polyline: 'mapeFdgsjVh@nCbA~DTd@HTh@|@f@`A\~@P|@JhA\~DV|BVlAHl@d@rBdAdFh@rCl@G`AOh@OxAi@b@I`@Cb@Dd@XVXn@v@DcAD}@EcCMoBKs@c@uAq@mC_AgEk@aD?a@Z{ALGb@An@_KAe@Gc@]cBc@_BkAuDsAoDqA}DWcAWuA[oCc@gEKiBAuAAgIFkODkAHs@Lo@NYj@y@POQNuAs@uAk@c@IYA[FqCrAoAv@ULI[r@zCZ~AJ`ABjBCn@Gx@W`CCjADn@N`ATdB?b@E^Sz@kBnEc@zAEd@C~@B^PhCBbBCpA[vDGpAAhA'
)

route8 = Route.create!(user_id: user1.id,
title: "New York, New York!",
description: "City so nice...",
distance: 4.63,
distance_unit: "miles",
duration: "59 mins",
elevation_gain: "24.75",
polyline: 'owzwF~gobMRb@l@l@`BjAlDxAdBl@dBr@K^Md@FFTRPXLXBNEDK^?l@Fd@WHG[CQ?SDe@DQTu@^m@rC}Fz@eBlBaDmB`DUd@yD|H_@l@Ut@Id@Ad@PbA@^?XC`@Mj@dElC~F|DzCpB`@RMj@@JLXOHs@?ALKd@YbA}A~Ei@zAQXtD`ClEvChC`BbCyH|EsO|AwEvB_HlFuPgC_BvDuLgCcBgBkAs@]aBiAuFuDcEoCsDaC}B{AGTGXG\Et@?bADdCA~@En@_@dC]rB'
)

route9 = Route.create!(user_id: user1.id,
title: "Trail run slog!",
description: "Olema trail run",
distance: 15.23,
distance_unit: "miles",
duration: "3 hours 32 mins",
elevation_gain: "649.27",
polyline: 'etegFdi|lVe@dA_@l@m@n@GMG]TaFAaAM_@o@aAe@e@iAk@i@o@iAeBWMo@@g@GYYMk@q@qEa@{CSw@]i@_@u@Qu@KkB]eGGu@K]a@o@iCwCuGoIeB}B}AeBcAoAaAu@qE_CcF_DkBiAc@IcBEoABsAZ]HWEs@_@[Gs@BcAb@i@K_AyAUw@Ge@@oBPULe@ZsBFc@Hc@D}@D[?Q?i@BOCOK[Kg@CYKSa@s@]k@UMGKSa@SOSAKGO]KcAS_@KWBILCn@Eb@Gd@Il@oAXg@`@a@z@a@VGRFNDFA^@NCHILKLEHIEQc@g@m@c@[MSOy@s@y@q@q@sAa@w@BMLOPk@FQIICG@OEk@K_@KOQOCM?i@Cq@Fy@ByADg@JYh@w@Zi@n@g@`@Sj@U\Ef@M^_@LGN@ZEJVJDRCLKDe@Hg@?UHQVQTANBXCRCTUPANDl@D`CFNEP@LMLWLMGKXWl@}@TsAHcAK_CU}@w@eBi@y@Sm@Ku@@m@Jo@`@{@^e@z@YjEVj@An@WhBoBjBiCH]XgB?mAGo@k@eBuB_Ek@wAIu@CmBNcNAeBSgA[gAIw@@gCCiAQw@g@aAcBiBsAaBUk@Qm@Io@Ao@Fk@VcAd@}@n@e@x@O`@?l@L~B|@vALf@Ul@i@Z{@Hw@IoAe@aEFqEY{By@cBuAoCUsACiAR{A`@cA|@}@p@]n@Qf@Gp@W`@[`@g@Ti@bAuCl@sAVSj@S`AShA[f@[n@i@RY`@eBP{DBmAJm@t@yB`CgCxAgBRc@LkAAaAS{@]m@i@_@m@Wm@?c@Jy@v@[j@W~@g@`D]~BWj@a@j@k@^y@TyFr@sEj@}@LeA^oAv@kEnFo@h@eAn@_KxFaBx@{@RcDIZgHXuBbBiAhBmA~BoBtBmBlDuBbAk@~AqAp@u@f@]p@e@t@SdAgC`AaBvAkBnEcEvHsGlAw@fBwA|ASjAcB`BeAhAe@d@c@hI}CzCeCPMHHZZ\VnDXVFXNZXT\Zv@f@rA~@\xJXrK^lEf@XDEt@SjAUtAIt@?p@BpCPxAt@v@\`@L`@CtAEp@Sf@g@hAsD`E_@nAQ`BI`@?VVXPIr@{@^Kj@Gd@h@J^?xAGbDDnAV|@f@z@BNDb@LhALl@@VGVQNSPI`@Ah@Eb@]|@c@n@ER?RCLKPe@BGJ?RO~@Cl@A^ELMT@\Iv@Hb@Tn@f@nA^b@PNPXJ^IhACXB\KXCh@It@g@`@uBzAGf@`@VV?f@Lp@Hd@V\v@Ln@@h@Md@g@Jk@@k@DUVG~@EjCMr@w@lBEx@Vn@ZtADb@'
)

route10 = Route.create!(user_id: user1.id,
title: "Lake Merced Loop",
description: "Marathon training day 1",
distance: 7.14,
distance_unit: "miles",
duration: "1 hour 27 mins",
elevation_gain: "65.74",
polyline: 'q~geFfprjVCOEM_@Ec@Gs@KMIUIUbAYtAIp@@bAJr@Rh@V\fC~Bv@z@Tf@Rx@D`@@j@Ev@G^Qj@iAhCMr@Cl@Cb@N|@PCXMEl@@l@h@dDP|A?p@E`AQ~@[j@m@r@_@Zo@Z}Bz@uCdAUPIRI\A^D`@L\PVtG|GdAx@`BhApB`AzBn@h@JJ?FEN?b@NPNv@ZNBJAPDTJTZNLLDpCx@~AL~@@t@E`BWt@QhAi@zBaBlBcB|AwA~AsAr@_@|@_@l@Qn@MpBUdASXIBNd@Ob@[vAu@TAd@YhAaAr@eAd@y@j@wAT}@lAyFjBqJd@mB\kAZ{@j@iAf@s@p@w@bA{@fE{C`@g@x@uApC_Fn@cAp@m@t@[lHiClAi@`@Sf@]LMb@k@l@kAP_@b@sA@O?Y@SCa@EY[y@{@i@e@Kg@@_Ej@u@Dq@?sBEyAA[MwGKeARqEEeAGwAEOGiCMqFKkF@aKAyK@yD@eACgAQkC{@}HcCg@Km@CI?DPC?q@LYLcBjAiChBgA|@a@f@Yt@I\\'
)


route11 = Route.create!(user_id: user1.id,
title: "Presidio",
description: "A stroll (can't miss this)",
distance: 3.77,
distance_unit: "miles",
duration: "48 mins",
elevation_gain: "113.57",
polyline: '}jveFnaojVT|@_@FIDKTK\UdAWlBEh@H~BBJSf@_BhDi@pA\jCB`@?XRF\J`Aj@xBjAvA|@p@t@j@n@TPb@TpA`@fAl@z@p@TPBG@CHCn@Ah@Eh@KnAc@fA_@VKVSxAqAx@o@b@UTGX@d@D\Hn@b@~A`B^b@PHb@DZEf@Ob@Y^a@hAsBxByCz@]d@[HMHa@BUS{AW}@{A}CKw@DwC?e@G[g@gA_@eAGm@Cs@Gs@w@mBQi@G_@A_@B_@FWHSBEDKKQWSSIc@@]FYNc@BKGMO[s@q@qAY_@yBmBUI]?WNKTQlAO`AQp@Q\MHYHa@Da@?[Is@e@e@a@MYCMuAR_@LONg@|ACDMDEDGRK|@AdB?d@GN]\a@P_@DuABOHELAbA]@?BVjCDn@u@PYqCUoBGYGKBMh@mA'
)

today = DateTime.now
date = today - today.wday + 7
routes = [route1, route2, route3, route4, route5, route6, route7, route8, route9, route10, route11]

54.times do |i|
  new_title = workout_names[i];
  random_route = rand(0..10)
  route_id = routes[random_route].id
  random_date = date - rand(0..150)
  workout_hours = rand(0..2).to_s
  workout_min = rand(1..60).to_s
  Workout.create!(user_id: user1.id, title: new_title, route_id: route_id, activity_type: "run", time: "---", workout_date: random_date, workout_time_hours: workout_hours, workout_time_minutes: workout_min)
end

workouts_this_week = [
  'Assassination Games',
  'Beur sur la ville',
  'Blade',
  'Demolition Man',
  'The Art of War',
  'Rising Sun',
  'Drop Zone,'
]

7.times do |i|
  new_title = workouts_this_week[i];
  random_route = rand(0..10)
  route_id = routes[random_route].id
  random_date = date - i
  workout_hours = rand(0..2).to_s
  workout_min = rand(1..60).to_s
  Workout.create!(user_id: user1.id, title: new_title, route_id: route_id, activity_type: "run", time: "---", workout_date: random_date, workout_time_hours: workout_hours, workout_time_minutes: workout_min)
end


Workout.create!(
  user_id: user1.id,
title: "First Run of the Week",
route_id: route1.id,
activity_type: "run",
time: "---",
workout_date: date - 1,
workout_time_hours: "0",
workout_time_minutes: "30"
)

Workout.create!(
  user_id: user1.id,
title: "Second Run of the Week",
route_id: route1.id,
activity_type: "run",
time: "---",
workout_date: date - 2,
workout_time_hours: "0",
workout_time_minutes: "27"
)

Workout.create!(
  user_id: user1.id,
title: "Race training #3",
route_id: route1.id,
activity_type: "run",
time: "---",
workout_date: date - 3,
workout_time_hours: "0",
workout_time_minutes: "40"
)

Workout.create!(
  user_id: user1.id,
title: "Race training mid-week",
route_id: route1.id,
activity_type: "run",
time: "---",
workout_date: date - 4,
workout_time_hours: "0",
workout_time_minutes: "23"
)

Workout.create!(
  user_id: user1.id,
title: "Hitting it hard!",
route_id: route1.id,
activity_type: "run",
time: "---",
workout_date: date - 5,
workout_time_hours: "0",
workout_time_minutes: "28"
)

Workout.create!(
  user_id: user1.id,
title: "Post-lunch run",
route_id: route1.id,
activity_type: "run",
time: "---",
workout_date: date - 6,
workout_time_hours: "0",
workout_time_minutes: "33"
)

Workout.create!(
  user_id: user1.id,
title: "Cool down jog",
route_id: route1.id,
activity_type: "run",
time: "---",
workout_date: date - 7,
workout_time_hours: "0",
workout_time_minutes: "50"
)

Workout.create!(
  user_id: user1.id,
title: "Race Day!!",
route_id: route1.id,
activity_type: "run",
time: "---",
workout_date: date - 1,
workout_time_hours: "0",
workout_time_minutes: "29"
)


Workout.create!(
  user_id: user1.id,
title: "Beautiful Beach Day",
route_id: route1.id,
activity_type: "run",
time: "---",
workout_date: date - 11,
workout_time_hours: "0",
workout_time_minutes: "35"
)

Workout.create!(
  user_id: user1.id,
  title: "Nation's Capitol",
  route_id: route1.id,
  activity_type: "run",
  time: "---",
  workout_date: date - 12,
  workout_time_hours: "1",
  workout_time_minutes: "7"
)

Workout.create!(
  user_id: user1.id,
title: "Mountain Run",
route_id: route2.id,
activity_type: "run",
time: "---",
workout_date: date - 14,
id: 19,
workout_time_hours: "1",
workout_time_minutes: "26"
)

Workout.create!(
  user_id: user1.id,
title: "Today's a new Day",
route_id: route3.id,
activity_type: "run",
time: "---",
workout_date: date - 15,
id: 20,
workout_time_hours: "",
workout_time_minutes: "56"
)

Workout.create!(
  user_id: user1.id,
  title: "One way cruise to Bella Vista",
  route_id: route4.id,
  activity_type: "run",
  time: "---",
  workout_date: date - 16,
  workout_time_hours: "2",
  workout_time_minutes: "9"
)

Workout.create!(
  user_id: user1.id,
  title: "Mavic Allroad Pyrenean Extravaganza, Day 2",
  route_id: route5.id,
  activity_type: "run",
  time: "---",
  workout_date: date - 17,
  workout_time_hours: "2",
  workout_time_minutes: "38"
)

Workout.create!(
  user_id: user1.id,
  title: "Gorgeous day to NOT be inside!",
  route_id: route6.id,
  activity_type: "run",
  time: "---",
  workout_date: date - 18,
  workout_time_hours: "1",
  workout_time_minutes: "25"
)

Workout.create!(
  user_id: user1.id,
  title: "Swelter",
  route_id: route7.id,
  activity_type: "run",
  time: "---",
  workout_date: date - 19,
  workout_time_hours: "1",
  workout_time_minutes: "41"
)

Workout.create!(
user_id: user1.id,
title: "6 bullets",
route_id: route8.id,
activity_type: "run",
time: "---",
workout_date: date - 20,
workout_time_hours: "3",
workout_time_minutes: "22"
)

Workout.create!(
  user_id: user1.id,
  title: "The Expendable Path 2",
  route_id: route9.id,
  activity_type: "run",
  time: "---",
  workout_date: date - 3,
  workout_time_hours: "2",
  workout_time_minutes: "23"
)
