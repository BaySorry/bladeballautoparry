local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25)local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function()return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...)local v29=1;local v30;v27=v12(v11(v27,5),v7("\93\74","\126\115\100\167\164"),function(v42)if (v9(v42,2)==79) then local v79=0;while true do if (v79==0) then v30=v8(v11(v42,1,1));return "";end end else local v80=v10(v8(v42,16));if v30 then local v89=0;local v90;while true do if (v89==0) then v90=v13(v80,v30);v30=nil;v89=1;end if (v89==1) then return v90;end end else return v80;end end end);local function v31(v43,v44,v45)if v45 then local v81=0;local v82;while true do if (0==v81) then v82=(v43/(2^(v44-(2 -1))))%(2^(((v45-1) -(v44-1)) + 1)) ;return v82-(v82%1) ;end end else local v83=0;local v84;while true do if (v83==0) then v84=2^(v44-1) ;return (((v43%(v84 + v84))>=v84) and 1) or 0 ;end end end end local function v32()local v46=v9(v27,v29,v29);v29=v29 + 1 ;return v46;end local function v33()local v47=0;local v48;local v49;while true do if (0==v47) then v48,v49=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v47=1;end if (v47==1) then return (v49 * 256) + v48 ;end end end local function v34()local v50=0;local v51;local v52;local v53;local v54;while true do if (v50==1) then return (v54 * 16777216) + (v53 * 65536) + (v52 * 256) + v51 ;end if (0==v50) then v51,v52,v53,v54=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;v50=1;end end end local function v35()local v55=v34();local v56=v34();local v57=1;local v58=(v31(v56,2 -1 ,20) * (2^32)) + v55 ;local v59=v31(v56,21,31);local v60=((v31(v56,32)==1) and  -1) or 1 ;if (v59==0) then if (v58==0) then return v60 * 0 ;else local v91=0;while true do if (v91==0) then v59=1 -0 ;v57=0;break;end end end elseif (v59==2047) then return ((v58==0) and (v60 * ((2 -1)/0))) or (v60 * NaN) ;end return v16(v60,v59-1023 ) * (v57 + (v58/((621 -(555 + 64))^52))) ;end local function v36(v61)local v62=0;local v63;local v64;while true do if (v62==1) then v63=v11(v27,v29,(v29 + v61) -1 );v29=v29 + v61 ;v62=2;end if (0==v62) then v63=nil;if  not v61 then local v116=0;while true do if (v116==0) then v61=v34();if (v61==0) then return "";end break;end end end v62=1;end if (v62==3) then return v14(v64);end if (v62==2) then v64={};for v92=1, #v63 do v64[v92]=v10(v9(v11(v63,v92,v92)));end v62=3;end end end local v37=v34;local function v38(...)return {...},v20("#",...);end local function v39()local v65=0;local v66;local v67;local v68;local v69;local v70;local v71;while true do if (v65==1) then v70=v34();v71={};for v94=1,v70 do local v95=0;local v96;local v97;while true do if (v95==1) then if (v96==(928 -(214 + 713))) then v97=v32()~=0 ;elseif (v96==2) then v97=v35();elseif (v96==3) then v97=v36();end v71[v94]=v97;break;end if (v95==0) then v96=v32();v97=nil;v95=1;end end end v69[3]=v32();v65=2;end if (v65==2) then for v98=1,v34() do local v99=v32();if (v31(v99,1 + 0 ,1)==0) then local v120=v31(v99,2,3);local v121=v31(v99,4,6);local v122={v33(),v33(),nil,nil};if (v120==0) then local v129=0;while true do if (v129==0) then v122[3]=v33();v122[4]=v33();break;end end elseif (v120==1) then v122[3]=v34();elseif (v120==2) then v122[880 -(282 + 595) ]=v34() -(2^16) ;elseif (v120==3) then v122[1640 -(1523 + 114) ]=v34() -(2^16) ;v122[4]=v33();end if (v31(v121,1,1)==1) then v122[2]=v71[v122[2]];end if (v31(v121,2,2)==(1 + 0)) then v122[3]=v71[v122[3]];end if (v31(v121,3 -0 ,3)==1) then v122[4]=v71[v122[4]];end v66[v98]=v122;end end for v100=1,v34() do v67[v100-1 ]=v39();end return v69;end if (v65==0) then v66={};v67={};v68={};v69={v66,v67,nil,v68};v65=1;end end end local function v40(v72,v73,v74)local v75=0;local v76;local v77;local v78;while true do if (v75==0) then v76=v72[1];v77=v72[2];v75=1;end if (v75==1) then v78=v72[3];return function(...)local v102=v76;local v103=v77;local v104=v78;local v105=v38;local v106=1;local v107= -1;local v108={};local v109={...};local v110=v20("#",...) -1 ;local v111={};local v112={};for v117=1065 -(68 + 997) ,v110 do if (v117>=v104) then v108[v117-v104 ]=v109[v117 + 1 ];else v112[v117]=v109[v117 + 1 ];end end local v113=(v110-v104) + 1 ;local v114;local v115;while true do v114=v102[v106];v115=v114[1];if (v115<=53) then if (v115<=26) then if (v115<=12) then if (v115<=5) then if (v115<=2) then if (v115<=(1270 -(226 + 1044))) then local v142=0;local v143;while true do if (v142==0) then v143=v114[2];v112[v143](v21(v112,v143 + 1 ,v107));break;end end elseif (v115>1) then local v173=v114[2];v112[v173]=v112[v173](v21(v112,v173 + 1 ,v114[3]));elseif v112[v114[2]] then v106=v106 + 1 ;else v106=v114[3];end elseif (v115<=3) then local v144=0;local v145;while true do if (v144==0) then v145=v114[2];v112[v145]=v112[v145](v21(v112,v145 + 1 ,v114[3]));break;end end elseif (v115>4) then do return v112[v114[2]];end else v112[v114[2]]=v112[v114[3]]/v112[v114[4]] ;end elseif (v115<=8) then if (v115<=6) then v112[v114[2]]=v112[v114[3]] + v114[4] ;elseif (v115>7) then local v176=v114[2];do return v112[v176](v21(v112,v176 + 1 ,v114[3]));end else v112[v114[2]]=v112[v114[3]][v114[4]];end elseif (v115<=10) then if (v115>9) then local v179=v114[2];v112[v179](v21(v112,v179 + 1 ,v114[3]));else do return v112[v114[2]]();end end elseif (v115==11) then v112[v114[8 -6 ]]=v112[v114[3]] -v112[v114[4]] ;else local v181=v114[2];v112[v181](v21(v112,v181 + 1 ,v114[3]));end elseif (v115<=19) then if (v115<=15) then if (v115<=13) then if  not v112[v114[2]] then v106=v106 + (118 -(32 + 85)) ;else v106=v114[3];end elseif (v115==14) then v106=v114[3];else v112[v114[2]]=v112[v114[3]] * v112[v114[4]] ;end elseif (v115<=17) then if (v115==16) then local v185=v114[2];do return v21(v112,v185,v107);end else local v186=0;local v187;while true do if (v186==0) then v187=v114[2 + 0 ];v112[v187]=v112[v187]();break;end end end elseif (v115==18) then local v188=v114[1 + 1 ];local v189,v190=v105(v112[v188](v112[v188 + 1 ]));v107=(v190 + v188) -1 ;local v191=0;for v335=v188,v107 do local v336=0;while true do if (v336==0) then v191=v191 + 1 ;v112[v335]=v189[v191];break;end end end else v112[v114[959 -(892 + 65) ]]=v112[v114[3]]%v112[v114[4]] ;end elseif (v115<=22) then if (v115<=20) then local v147=0;local v148;local v149;local v150;while true do if (0==v147) then v148=v103[v114[3]];v149=nil;v147=1;end if (v147==1) then v150={};v149=v18({},{[v7("\100\224\32\142\51\94\199","\87\59\191\73\224")]=function(v355,v356)local v357=v150[v356];return v357[1][v357[2]];end,[v7("\246\216\12\69\222\238\12\68\204\255","\32\169\135\98")]=function(v358,v359,v360)local v361=0;local v362;while true do if (v361==0) then v362=v150[v359];v362[1][v362[2]]=v360;break;end end end});v147=2;end if (v147==2) then for v363=1,v114[4] do v106=v106 + 1 ;local v364=v102[v106];if (v364[1]==104) then v150[v363-1 ]={v112,v364[3]};else v150[v363-1 ]={v73,v364[3]};end v111[ #v111 + 1 ]=v150;end v112[v114[2]]=v40(v148,v149,v74);break;end end elseif (v115==21) then if (v112[v114[2]]<=v112[v114[4]]) then v106=v106 + 1 ;else v106=v114[3];end else local v193=v114[2];local v194=v114[4];local v195=v193 + 2 ;local v196={v112[v193](v112[v193 + 1 ],v112[v195])};for v339=1,v194 do v112[v195 + v339 ]=v196[v339];end local v197=v196[1];if v197 then v112[v195]=v197;v106=v114[3];else v106=v106 + 1 ;end end elseif (v115<=24) then if (v115==23) then local v198=0;local v199;local v200;local v201;while true do if (1==v198) then v201=0;for v413=v199,v114[4] do v201=v201 + 1 ;v112[v413]=v200[v201];end break;end if (v198==0) then v199=v114[2];v200={v112[v199](v21(v112,v199 + 1 ,v107))};v198=1;end end else v112[v114[2]]=v114[3];end elseif (v115>25) then local v204=0;local v205;local v206;while true do if (0==v204) then v205=v114[2];v206=v112[v114[3]];v204=1;end if (v204==1) then v112[v205 + 1 ]=v206;v112[v205]=v206[v114[4]];break;end end else v112[v114[2]]=v112[v114[3]];end elseif (v115<=39) then if (v115<=32) then if (v115<=29) then if (v115<=27) then local v151=0;local v152;while true do if (v151==0) then v152=v114[2];do return v21(v112,v152,v152 + v114[7 -4 ] );end break;end end elseif (v115>28) then v112[v114[3 -1 ]]=v112[v114[3]][v112[v114[4]]];else local v211=0;local v212;while true do if (0==v211) then v212=v114[2];v112[v212]=v112[v212](v21(v112,v212 + 1 ,v107));break;end end end elseif (v115<=30) then v112[v114[3 -1 ]]=v114[3] + v112[v114[354 -(87 + 263) ]] ;elseif (v115==(211 -(67 + 113))) then v112[v114[2 + 0 ]]={};else local v214=0;local v215;local v216;while true do if (v214==0) then v215=v114[2];v216=v112[v215];v214=1;end if (1==v214) then for v416=v215 + 1 ,v107 do v15(v216,v112[v416]);end break;end end end elseif (v115<=35) then if (v115<=33) then local v154=v114[2];v112[v154]=v112[v154](v112[v154 + 1 ]);elseif (v115>(83 -49)) then if (v114[2]==v112[v114[3 + 1 ]]) then v106=v106 + 1 ;else v106=v114[3];end else v73[v114[3]]=v112[v114[2]];end elseif (v115<=37) then if (v115==36) then local v219=v114[2];v112[v219](v21(v112,v219 + 1 ,v107));else local v220=0;local v221;while true do if (v220==0) then v221=v114[2];do return v112[v221](v21(v112,v221 + 1 ,v114[3]));end break;end end end elseif (v115>38) then for v343=v114[2],v114[11 -8 ] do v112[v343]=nil;end else v112[v114[954 -(802 + 150) ]]=v114[3] + v112[v114[4]] ;end elseif (v115<=46) then if (v115<=(112 -70)) then if (v115<=40) then local v156=v114[2];local v157,v158=v105(v112[v156](v21(v112,v156 + 1 ,v107)));v107=(v158 + v156) -1 ;local v159=0;for v171=v156,v107 do local v172=0;while true do if (v172==0) then v159=v159 + 1 ;v112[v171]=v157[v159];break;end end end elseif (v115>41) then v112[v114[2]]=v112[v114[3]]%v114[4] ;else v112[v114[2]]=v73[v114[3]];end elseif (v115<=44) then if (v115==43) then v112[v114[2]]=v112[v114[3]]/v114[4] ;else v112[v114[2]]=v112[v114[3]] + v114[4] ;end elseif (v115>45) then v74[v114[3]]=v112[v114[2]];else v112[v114[2]]={};end elseif (v115<=49) then if (v115<=(84 -37)) then if v112[v114[2]] then v106=v106 + 1 ;else v106=v114[3];end elseif (v115>48) then v106=v114[3];else for v345=v114[2],v114[3] do v112[v345]=nil;end end elseif (v115<=51) then if (v115>50) then v112[v114[2 + 0 ]]=v112[v114[3]][v114[4]];elseif (v112[v114[999 -(915 + 82) ]]==v114[4]) then v106=v106 + 1 ;else v106=v114[3];end elseif (v115>52) then local v235=0;local v236;local v237;local v238;local v239;while true do if (v235==1) then v107=(v238 + v236) -1 ;v239=0 + 0 ;v235=2;end if (v235==2) then for v417=v236,v107 do local v418=0;while true do if (v418==0) then v239=v239 + 1 ;v112[v417]=v237[v239];break;end end end break;end if (v235==0) then v236=v114[5 -3 ];v237,v238=v105(v112[v236](v21(v112,v236 + 1 ,v114[3])));v235=1;end end else v112[v114[2]][v114[3]]=v114[4 -0 ];end elseif (v115<=80) then if (v115<=66) then if (v115<=(1246 -(1069 + 118))) then if (v115<=56) then if (v115<=54) then v112[v114[2]]= #v112[v114[3]];elseif (v115==55) then v74[v114[3]]=v112[v114[2]];else local v244=v114[4 -2 ];v112[v244](v112[v244 + 1 ]);end elseif (v115<=57) then v112[v114[2]]=v112[v114[6 -3 ]][v112[v114[4]]];elseif (v115==58) then v112[v114[2]]=v73[v114[3]];else v112[v114[2]]();end elseif (v115<=62) then if (v115<=60) then if (v112[v114[2]]==v114[4]) then v106=v106 + 1 ;else v106=v114[1 + 2 ];end elseif (v115>(108 -47)) then v112[v114[2]]=v112[v114[3]]%v114[4] ;else local v249=v114[2];v112[v249]=v112[v249](v21(v112,v249 + 1 ,v107));end elseif (v115<=64) then if (v115>63) then local v251=v114[2];do return v21(v112,v251,v107);end else v112[v114[2]][v112[v114[3]]]=v112[v114[4]];end elseif (v115>(65 + 0)) then local v254=0;local v255;local v256;while true do if (1==v254) then for v419=1, #v111 do local v420=0;local v421;while true do if (v420==0) then v421=v111[v419];for v476=0, #v421 do local v477=v421[v476];local v478=v477[1];local v479=v477[2];if ((v478==v112) and (v479>=v255)) then v256[v479]=v478[v479];v477[1]=v256;end end break;end end end break;end if (v254==0) then v255=v114[793 -(368 + 423) ];v256={};v254=1;end end elseif  not v112[v114[2]] then v106=v106 + 1 ;else v106=v114[3];end elseif (v115<=73) then if (v115<=69) then if (v115<=67) then do return;end elseif (v115==68) then v112[v114[2]]=v114[3];else v112[v114[2]][v114[3]]=v114[4];end elseif (v115<=71) then if (v115>70) then local v261=v114[2];local v262={v112[v261](v21(v112,v261 + 1 ,v107))};local v263=18 -(10 + 8) ;for v347=v261,v114[4] do v263=v263 + 1 ;v112[v347]=v262[v263];end else v112[v114[2]]=v112[v114[3]]%v112[v114[4]] ;end elseif (v115>72) then local v265=0;local v266;local v267;while true do if (v265==1) then for v422=v266 + 1 ,v107 do v15(v267,v112[v422]);end break;end if (v265==0) then v266=v114[2];v267=v112[v266];v265=1;end end else local v268=0;local v269;local v270;while true do if (v268==0) then v269=v114[2];v270={};v268=1;end if (v268==1) then for v423=1, #v111 do local v424=v111[v423];for v448=0, #v424 do local v449=v424[v448];local v450=v449[1];local v451=v449[2];if ((v450==v112) and (v451>=v269)) then local v457=0;while true do if (v457==0) then v270[v451]=v450[v451];v449[1]=v270;break;end end end end end break;end end end elseif (v115<=76) then if (v115<=74) then if (v114[2]==v112[v114[4]]) then v106=v106 + 1 ;else v106=v114[3];end elseif (v115>75) then v112[v114[7 -5 ]]= not v112[v114[3]];else local v273=v114[2];local v274=v114[4];local v275=v273 + 2 ;local v276={v112[v273](v112[v273 + 1 ],v112[v275])};for v350=1,v274 do v112[v275 + v350 ]=v276[v350];end local v277=v276[1];if v277 then v112[v275]=v277;v106=v114[3];else v106=v106 + 1 ;end end elseif (v115<=78) then if (v115>77) then v112[v114[2]]=v74[v114[3]];else v112[v114[2]]= #v112[v114[3]];end elseif (v115>(521 -(416 + 26))) then v112[v114[2]]=v74[v114[3]];else local v283=v114[2];v112[v283]=v112[v283](v112[v283 + 1 ]);end elseif (v115<=94) then if (v115<=87) then if (v115<=83) then if (v115<=81) then local v163=0;local v164;local v165;local v166;local v167;while true do if (0==v163) then v164=v114[2];v165,v166=v105(v112[v164](v21(v112,v164 + 1 ,v107)));v163=1;end if (v163==1) then v107=(v166 + v164) -1 ;v167=0;v163=2;end if (v163==2) then for v376=v164,v107 do local v377=0;while true do if (v377==0) then v167=v167 + 1 ;v112[v376]=v165[v167];break;end end end break;end end elseif (v115==82) then if (v112[v114[2]]<=v112[v114[12 -8 ]]) then v106=v106 + 1 + 0 ;else v106=v114[3];end else local v285=0;local v286;local v287;local v288;while true do if (v285==0) then v286=v114[2];v287=v112[v286 + 2 ];v285=1;end if (v285==1) then v288=v112[v286] + v287 ;v112[v286]=v288;v285=2;end if (v285==2) then if (v287>(0 -0)) then if (v288<=v112[v286 + 1 ]) then v106=v114[441 -(145 + 293) ];v112[v286 + 3 ]=v288;end elseif (v288>=v112[v286 + 1 ]) then v106=v114[3];v112[v286 + (433 -(44 + 386)) ]=v288;end break;end end end elseif (v115<=(1571 -(998 + 488))) then if (v115==84) then do return;end else local v289=v114[2];v112[v289](v112[v289 + 1 ]);end elseif (v115>(28 + 58)) then local v290=0;local v291;local v292;local v293;while true do if (v290==2) then for v425=1,v114[4] do local v426=0;local v427;while true do if (v426==1) then if (v427[1 + 0 ]==104) then v293[v425-(773 -(201 + 571)) ]={v112,v427[12 -9 ]};else v293[v425-1 ]={v73,v427[3]};end v111[ #v111 + 1 ]=v293;break;end if (v426==0) then v106=v106 + 1 ;v427=v102[v106];v426=1;end end end v112[v114[2]]=v40(v291,v292,v74);break;end if (v290==0) then v291=v103[v114[3]];v292=nil;v290=1;end if (1==v290) then v293={};v292=v18({},{[v7("\247\244\126\42\80\248\213","\173\168\171\23\68\52\157")]=function(v428,v429)local v430=v293[v429];return v430[1][v430[2]];end,[v7("\184\203\127\240\200\142\250\117\240\199","\191\231\148\17\149")]=function(v431,v432,v433)local v434=v293[v432];v434[1][v434[2]]=v433;end});v290=2;end end else v112[v114[2]]=v114[3]~=(0 -0) ;end elseif (v115<=90) then if (v115<=88) then v73[v114[3]]=v112[v114[2]];elseif (v115==89) then v112[v114[2]]=v112[v114[3]]/v114[4] ;else local v296=0;local v297;local v298;local v299;while true do if (0==v296) then v297=v114[2];v298=v112[v297];v296=1;end if (v296==1) then v299=v112[v297 + 2 ];if (v299>0) then if (v298>v112[v297 + 1 ]) then v106=v114[3];else v112[v297 + 3 ]=v298;end elseif (v298<v112[v297 + 1 ]) then v106=v114[3];else v112[v297 + 3 ]=v298;end break;end end end elseif (v115<=92) then if (v115==91) then v112[v114[2]]= not v112[v114[3]];else v112[v114[2]][v112[v114[3]]]=v112[v114[14 -10 ]];end elseif (v115>93) then local v303=0;local v304;local v305;local v306;local v307;while true do if (v303==0) then v304=v114[2];v305,v306=v105(v112[v304](v21(v112,v304 + 1 ,v114[3])));v303=1;end if (1==v303) then v107=(v306 + v304) -1 ;v307=0;v303=2;end if (v303==2) then for v436=v304,v107 do local v437=0;while true do if (0==v437) then v307=v307 + 1 ;v112[v436]=v305[v307];break;end end end break;end end else v112[v114[861 -(814 + 45) ]]=v112[v114[3]]/v112[v114[4]] ;end elseif (v115<=101) then if (v115<=(238 -141)) then if (v115<=(6 + 89)) then v112[v114[2]]=v114[3]~=0 ;elseif (v115>96) then if (v112[v114[2]]==v112[v114[4]]) then v106=v106 + 1 + 0 ;else v106=v114[3];end else v112[v114[887 -(261 + 624) ]]=v112[v114[3]] -v112[v114[4]] ;end elseif (v115<=(175 -76)) then if (v115>98) then local v310=v114[2];local v311=v112[v310 + 2 ];local v312=v112[v310] + v311 ;v112[v310]=v312;if (v311>0) then if (v312<=v112[v310 + 1 ]) then local v438=0;while true do if (v438==0) then v106=v114[3];v112[v310 + 3 ]=v312;break;end end end elseif (v312>=v112[v310 + 1 ]) then local v439=0;while true do if (v439==0) then v106=v114[3];v112[v310 + 3 ]=v312;break;end end end else v112[v114[2]]();end elseif (v115==100) then do return v112[v114[2]]();end else local v314=v114[2];local v315=v112[v114[3]];v112[v314 + 1 ]=v315;v112[v314]=v315[v114[4]];end elseif (v115<=104) then if (v115<=102) then do return v112[v114[2]];end elseif (v115==103) then v112[v114[2]]=v112[v114[3]] * v112[v114[1084 -(1020 + 60) ]] ;else v112[v114[2]]=v112[v114[3]];end elseif (v115<=106) then if (v115>105) then if (v112[v114[2]]==v112[v114[4]]) then v106=v106 + (1424 -(630 + 793)) ;else v106=v114[9 -6 ];end else local v322=v114[2];local v323=v112[v322];local v324=v112[v322 + 2 ];if (v324>0) then if (v323>v112[v322 + 1 ]) then v106=v114[14 -11 ];else v112[v322 + 2 + 1 ]=v323;end elseif (v323<v112[v322 + 1 ]) then v106=v114[9 -6 ];else v112[v322 + 3 ]=v323;end end elseif (v115>107) then local v325=v114[2];v112[v325]=v112[v325]();else local v327=0;local v328;local v329;local v330;local v331;while true do if (v327==1) then v107=(v330 + v328) -1 ;v331=0;v327=2;end if (v327==0) then v328=v114[2];v329,v330=v105(v112[v328](v112[v328 + 1 ]));v327=1;end if (v327==2) then for v444=v328,v107 do local v445=0;while true do if (v445==0) then v331=v331 + 1 ;v112[v444]=v329[v331];break;end end end break;end end end v106=v106 + 1 ;end end;end end end return v40(v39(),{},v28)(...);end v23("LOL!0D3O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E7365727403053O006D6174636803083O00746F6E756D62657203053O007063612O6C00243O00124E3O00013O0020335O000200124E000100013O00203300010001000300124E000200013O00203300020002000400124E000300053O0006410003000A0001000100040E3O000A000100124E000300063O00203300040003000700124E000500083O00203300050005000900124E000600083O00203300060006000A00065700073O000100062O00683O00064O00688O00683O00044O00683O00014O00683O00024O00683O00053O00124E000800013O00203300080008000B00124E0009000C3O00124E000A000D3O000657000B0001000100052O00683O00074O00683O00094O00683O00084O00683O000A4O00683O000B4O0019000C000B4O0009000C00014O0010000C6O00543O00013O00023O00023O00026O00F03F026O00704002264O001F00025O001244000300014O003600045O001244000500013O0004690003002100012O002900076O0019000800024O0029000900014O0029000A00024O0029000B00034O0029000C00044O0019000D6O0019000E00063O00202C000F000600012O0035000C000F4O003D000B3O00022O0029000C00034O0029000D00044O0019000E00014O0036000F00014O0046000F0006000F00101E000F0001000F2O0036001000014O004600100006001000101E00100001001000202C0010001000012O0035000D00104O0051000C6O003D000A3O000200203E000A000A00022O006B0009000A6O00073O00010004630003000500012O0029000300054O0019000400024O0025000300044O001000036O00543O00017O00043O00027O004003053O003A25642B3A2O033O0025642B026O00F03F001C3O0006575O000100012O003A8O0029000100014O0029000200024O0029000300024O001F00046O0029000500034O001900066O0027000700074O0035000500074O002000043O0001002033000400040001001244000500024O0003000300050002001244000400034O0035000200044O003D00013O0002002632000100180001000400040E3O001800012O001900016O001F00026O0025000100024O001000015O00040E3O001B00012O0029000100044O0009000100014O001000016O00543O00013O00013O001A3O0003073O0067657467656E7603083O00657865637574656403043O0067616D65030A3O004765745365727669636503103O00E4CC883EA8B1C1CA991F84ADC7D68E2903063O00DFB1BFED4CE103113O0064CCB0365933BA42CCA409443FA957CEA503073O00DB36A9C05A305003073O00794E013C4C501303043O0045292260030B3O004C6F63616C506C6179657203093O008BCCC501113BBDC0D203063O004BDCA3B76A6203053O0042612O6C7303083O0046696E6442612O6C03083O004973546172676574030A3O0044657465637442612O6C030B3O004465666C65637442612O6C030A3O00496E707574426567616E03073O00436F2O6E656374030A3O00496E707574456E646564030A3O0075D93BEF0155DA3CDF0103053O006427AC55BC030E3O00506F737453696D756C6174696F6E2O01026O00F03F015A3O00062F3O005800013O00040E3O0058000100124E000100014O001100010001000200203300010001000200062F0001000800013O00040E3O000800012O00543O00013O00124E000100033O00201A0001000100042O002900035O001244000400053O001244000500064O0035000300054O003D00013O000200124E000200033O00201A0002000200042O002900045O001244000500073O001244000600084O0035000400064O003D00023O000200124E000300033O00201A0003000300042O002900055O001244000600093O0012440007000A4O0035000500074O003D00033O000200203300030003000B00124E000400033O00201A0004000400042O002900065O0012440007000C3O0012440008000D4O0035000600084O003D00043O000200203300040004000E2O005600056O005600065O00065700073O000100022O00683O00044O003A7O00122E0007000F3O00065700070001000100022O003A8O00683O00033O00122E000700103O00065700070002000100022O00683O00034O003A7O00122E000700113O00065700070003000100032O00683O00054O003A8O00683O00023O00122E000700123O00203300070001001300201A00070007001400065700090004000100022O003A8O00683O00064O000C00070009000100203300070001001500201A00070007001400065700090005000100012O003A8O000C00070009000100124E000700033O00201A0007000700042O002900095O001244000A00163O001244000B00174O00350009000B4O003D00073O000200203300070007001800201A00070007001400065700090006000100042O00683O00054O003A8O00683O00014O00683O00064O000C00070009000100124E000700014O00110007000100020030450007000200192O004800015O00040E3O0059000100203300013O001A2O00543O00013O00073O00083O00028O00026O00F03F03053O007061697273030B3O004765744368696C6472656E030C3O00476574412O7472696275746503083O0010BF8A3BFB03B68703053O00B962DAEB572O0100293O0012443O00014O0027000100013O001244000200013O002632000200030001000100040E3O000300010026323O00080001000200040E3O000800012O0066000100023O0026323O00020001000100040E3O00020001001244000300013O0026320003000F0001000200040E3O000F00010012443O00023O00040E3O000200010026320003000B0001000100040E3O000B00012O0027000100013O00124E000400034O002900055O00201A0005000500042O006B000500064O001700043O000600040E3O0021000100201A0009000800052O0029000B00013O001244000C00063O001244000D00074O0035000B000D4O003D00093O0002002632000900210001000800040E3O002100012O0019000100083O00064B000400180001000200040E3O00180001001244000300023O00040E3O000B000100040E3O0002000100040E3O0003000100040E3O000200012O00543O00017O00073O00028O00026O00F03F03083O0046696E6442612O6C030C3O00476574412O7472696275746503063O00DF3D35E1DBBE03063O00CAAB5C4786BE03043O004E616D6500323O0012443O00014O0027000100023O0026323O002B0001000200040E3O002B0001001244000300013O002632000300050001000100040E3O00050001002632000100230001000100040E3O00230001001244000400013O0026320004000E0001000200040E3O000E0001001244000100023O00040E3O002300010026320004000A0001000100040E3O000A000100124E000500034O00110005000100022O0019000200053O00062F0002002100013O00040E3O0021000100201A0005000200042O002900075O001244000800053O001244000900064O0035000700094O003D00053O00022O0029000600013O002033000600060007000661000500210001000600040E3O002100012O0056000500014O0066000500023O001244000400023O00040E3O000A0001002632000100040001000200040E3O000400012O005600046O0066000400023O00040E3O0004000100040E3O0005000100040E3O0004000100040E3O003100010026323O00020001000100040E3O00020001001244000100014O0027000200023O0012443O00023O00040E3O000200012O00543O00017O00173O00028O00026O00F03F03083O0046696E6442612O6C027O004003093O0043686172616374657203103O0048756D616E6F6964522O6F745061727403083O00506F736974696F6E03093O004D61676E6974756465026O00104003063O0073686172656403063O00636F6E66696703093O006869745F72616E676503043O0067616D6503053O00537461747303073O004E6574776F726B030F3O0053657276657253746174734974656D03093O000DC0388969F125862E03043O00E849A14C03083O0047657456616C7565025O00408F40026O000840030A3O0061646A7573746D656E7403083O0056656C6F6369747900663O0012443O00014O0027000100023O0026323O005F0001000200040E3O005F0001002632000100590001000100040E3O0059000100124E000300034O00110003000100022O0019000200033O00062F0002005800013O00040E3O00580001001244000300014O0027000400093O0026320003001E0001000200040E3O001E0001001244000A00013O002632000A00140001000200040E3O00140001001244000300043O00040E3O001E0001002632000A00100001000100040E3O001000012O0029000B5O002033000B000B0005002033000B000B00060020330006000B00072O000B000B000500060020330007000B0008001244000A00023O00040E3O00100001002632000300280001000900040E3O0028000100124E000A000A3O002033000A000A000B002033000A000A000C000652000900580001000A00040E3O005800012O0056000A00014O0066000A00023O00040E3O00580001000E23000400390001000300040E3O0039000100124E000A000D3O002033000A000A000E002033000A000A000F002033000A000A00102O0029000B00013O001244000C00113O001244000D00124O0003000B000D00022O0039000A000A000B00201A000A000A00132O004F000A0002000200202B000A000A00142O000F00080004000A2O000B000700070008001244000300153O000E23001500490001000300040E3O00490001001244000A00013O002632000A00440001000100040E3O0044000100124E000B000A3O002033000B000B000B002033000B000B00162O000B00070007000B2O0004000900070004001244000A00023O002632000A003C0001000200040E3O003C0001001244000300093O00040E3O0049000100040E3O003C00010026320003000D0001000100040E3O000D0001001244000A00013O000E23000200500001000A00040E3O00500001001244000300023O00040E3O000D0001002632000A004C0001000100040E3O004C0001002033000B000200170020330004000B0008002033000500020007001244000A00023O00040E3O004C000100040E3O000D0001001244000100023O000E23000200040001000100040E3O000400012O005600036O0066000300023O00040E3O0004000100040E3O00650001000E230001000200013O00040E3O00020001001244000100014O0027000200023O0012443O00023O00040E3O000200012O00543O00017O000B3O00030A3O0044657465637442612O6C03063O0073686172656403063O00636F6E666967030C3O006465666C6563745F7479706503093O0090DC5B1D2EA9DC514E03053O007EDBB9223D03083O006B65797072652O73025O0080514003073O0052656D6F74657303103O0050612O727942752O746F6E5072652O7303043O0046697265001A4O00297O00062F3O001900013O00040E3O0019000100124E3O00014O00113O0001000200062F3O001900013O00040E3O0019000100124E3O00023O0020335O00030020335O00042O0029000100013O001244000200053O001244000300064O00030001000300020006613O00140001000100040E3O0014000100124E3O00073O001244000100084O00383O0002000100040E3O001900012O00293O00023O0020335O00090020335O000A00201A5O000B2O00383O000200012O00543O00017O00283O00028O0003063O0073686172656403063O00636F6E66696703043O006D6F646503063O0038C159752O7203083O00876CAE3E121E179303073O004B6579436F646503073O006B657962696E64030D3O006E6F74696669636174696F6E7303043O0067616D65030A3O0047657453657276696365030A3O0085FD2BD90CAB21E0A3E003083O00A7D6894AAB78CE5303073O00536574436F726503103O00B8F53C59D6A89FF93454FBA69FF93D5303063O00C7EB90523D9803053O00331FAD270203043O004B6776D9030A3O00E5587110BC5EE5557C1803063O007EA7341074D903043O00FC2B389403073O009CA84E40E0D47903083O0022E0A4CC0BEBA18F03043O00AE678EC503093O0072214C392752FD526903073O009836483F58453E03043O00FCCBE25803043O003CB4A48E030A3O006B4A043B33E8007F4B0C03073O0072383E6549478D03103O008BECD5C096E6CFCDBEE0D8C5ACE0D4CA03043O00A4D889BB03053O00E6EF25BEA303073O006BB28651D2C69E030A3O001A0283C2AF782C83CAA603053O00CA586EE2A603043O00F70A9AE303053O00AAA36FE29703103O00393FBE3C47392E513BB7214C3E27157103073O00497150D2582E5702833O001244000200013O002632000200010001000100040E3O0001000100062F0001000600013O00040E3O000600012O00543O00013O00124E000300023O0020330003000300030020330003000300042O002900045O001244000500053O001244000600064O00030004000600020006610003004C0001000400040E3O004C000100203300033O000700124E000400023O0020330004000400030020330004000400080006610003004C0001000400040E3O004C0001001244000300013O002632000300160001000100040E3O001600012O0029000400014O005B000400044O0058000400013O00124E000400023O00203300040004000300203300040004000900062F0004008200013O00040E3O0082000100124E0004000A3O00201A00040004000B2O002900065O0012440007000C3O0012440008000D4O0035000600084O003D00043O000200201A00040004000E2O002900065O0012440007000F3O001244000800104O00030006000800022O001F00073O00022O002900085O001244000900113O001244000A00124O00030008000A00022O002900095O001244000A00133O001244000B00144O00030009000B00022O005C0007000800092O002900085O001244000900153O001244000A00164O00030008000A00022O0029000900013O00062F0009004300013O00040E3O004300012O002900095O001244000A00173O001244000B00184O00030009000B0002000641000900470001000100040E3O004700012O002900095O001244000A00193O001244000B001A4O00030009000B00022O005C0007000800092O000C00040007000100040E3O0082000100040E3O0016000100040E3O0082000100124E000300023O0020330003000300030020330003000300042O002900045O0012440005001B3O0012440006001C4O0003000400060002000661000300820001000400040E3O0082000100203300033O000700124E000400023O002033000400040003002033000400040008000661000300820001000400040E3O0082000100124E000300023O00203300030003000300203300030003000900062F0003008200013O00040E3O0082000100124E0003000A3O00201A00030003000B2O002900055O0012440006001D3O0012440007001E4O0035000500074O003D00033O000200201A00030003000E2O002900055O0012440006001F3O001244000700204O00030005000700022O001F00063O00022O002900075O001244000800213O001244000900224O00030007000900022O002900085O001244000900233O001244000A00244O00030008000A00022O005C0006000700082O002900075O001244000800253O001244000900264O00030007000900022O002900085O001244000900273O001244000A00284O00030008000A00022O005C0006000700082O000C00030006000100040E3O0082000100040E3O000100012O00543O00017O00183O00028O0003063O0073686172656403063O00636F6E66696703043O006D6F646503043O00A923C11603053O0087E14CAD7203073O004B6579436F646503073O006B657962696E64030D3O006E6F74696669636174696F6E7303043O0067616D65030A3O0047657453657276696365030A3O0029F9B9A22OB8B53DF8B103073O00C77A8DD8D0CCDD03073O00536574436F726503103O009ED81EF456F9B9D416F97BF7B9D41FFE03063O0096CDBD70901803053O00118DAB400103083O007045E4DF2C64E871030A3O00F61306D7B33CA4D5130B03073O00E6B47F67B3D61C03043O00B800475203073O0080EC653F268421031A3O0082A65148B9E5C8A9BB514CB9E7CBA5A71604BDEED6AEA01F40F703073O00AFCCC97124D68B023D3O001244000200013O002632000200010001000100040E3O0001000100062F0001000600013O00040E3O000600012O00543O00013O00124E000300023O0020330003000300030020330003000300042O002900045O001244000500053O001244000600064O00030004000600020006610003003C0001000400040E3O003C000100203300033O000700124E000400023O0020330004000400030020330004000400080006610003003C0001000400040E3O003C000100124E000300023O00203300030003000300203300030003000900062F0003003C00013O00040E3O003C000100124E0003000A3O00201A00030003000B2O002900055O0012440006000C3O0012440007000D4O0035000500074O003D00033O000200201A00030003000E2O002900055O0012440006000F3O001244000700104O00030005000700022O001F00063O00022O002900075O001244000800113O001244000900124O00030007000900022O002900085O001244000900133O001244000A00144O00030008000A00022O005C0006000700082O002900075O001244000800153O001244000900164O00030007000900022O002900085O001244000900173O001244000A00184O00030008000A00022O005C0006000700082O000C00030006000100040E3O003C000100040E3O000100012O00543O00017O000E3O00028O0003083O00497354617267657403063O0073686172656403063O00636F6E66696703043O006D6F646503043O008577B58403053O0053CD18D9E003093O0049734B6579446F776E03073O006B657962696E64030B3O004465666C65637442612O6C03063O00D22OCA3AEAC003043O005D86A5AD03063O009FFED6C323DD03083O001EDE92A1A25AAED200373O0012443O00013O0026323O00010001000100040E3O0001000100124E000100024O00110001000100022O005800015O00124E000100033O0020330001000100040020330001000100052O0029000200013O001244000300063O001244000400074O00030002000400020006610001001A0001000200040E3O001A00012O0029000100023O00201A00010001000800124E000300033O0020330003000300040020330003000300092O000300010003000200062F0001001A00013O00040E3O001A000100124E0001000A4O003B00010001000100040E3O0036000100124E000100033O0020330001000100040020330001000100052O0029000200013O0012440003000B3O0012440004000C4O0003000200040002000661000100290001000200040E3O002900012O0029000100033O00062F0001002900013O00040E3O0029000100124E0001000A4O003B00010001000100040E3O0036000100124E000100033O0020330001000100040020330001000100052O0029000200013O0012440003000D3O0012440004000E4O0003000200040002000661000100360001000200040E3O0036000100124E0001000A4O003B00010001000100040E3O0036000100040E3O000100012O00543O00017O00",v17(),...);
-- ⚠️ WARNING: integrity protected!
--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.9.16) ~  Much Love, Ferib 

]]--

