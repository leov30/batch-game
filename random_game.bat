@echo off
set /a _player_hp=25
set /a _enemy_hp=25

:loop

call :draw_enemy

Set /a "_enemy=(%random%%%(3-1+1))+1"

echo. =======================
echo. # 1. rock             #
echo. # 2. paper            #
echo. # 3. scissors         #
echo. =======================
echo.

title Your HP %_player_hp% ^| Enemy HP %_enemy_hp% 

if %_player_hp% equ 0 goto :loop_out
if %_enemy_hp% equ 0 goto :loop_out

::use choice for timeout.
set /p _player="Enter your attack: "

if %_player% equ %_enemy% echo it a DRAW
::rock
if %_player% equ 1 (
	if %_enemy% equ 2 echo you loose, rock its catched by paper&set /a _player_hp-=1
	if %_enemy% equ 3 echo you win, rock breaks scissors&set /a _enemy_hp-=1
	
)
::paper
if %_player% equ 2 (
	if %_enemy% equ 1 echo you win, paper catches rock&set /a _enemy_hp-=1
	if %_enemy% equ 3 echo you loose, paper its cut by scissors&set /a _player_hp-=1
	
)
::scissour
if %_player% equ 3 (
	if %_enemy% equ 1 echo you loose, scissors breaks with rock&set /a _player_hp-=1
	if %_enemy% equ 2 echo you win, scissors cut paper&set /a _enemy_hp-=1
	
)

pause&cls
goto :loop

:loop_out

cls
if %_player_hp% equ 0 (
	echo you lost

)
if %_enemy_hp% equ 0 (
	echo you won

)

pause&exit


:draw_enemy

echo "                                      *(/((((//*            ..,**$/....*@@#     "
echo "                                   ,/((((((*,*(/             ...,,..,.(@@/.     "
echo "                                  ,/(####((/*,                .,,   ./&&/.      "
echo "                     ..          ,/(####$$#(/,                .*,.              "
echo "                 ,/////////,.   ./(((////##(//.   .....        .,*.             "
echo "                  **///////////,.*./#. ,*****.*//////////       ,*.             "
echo "                 ,#$/ */////////*.($$$$$$#$$#$../////////        ,**.           "
echo "               /#$$$$(.*/////////* /$$$*,#,*( *////////,        .#(,,#/         "
echo "              ****,#$(. ,///(#////((/.......,*//////*. ,(#*       ,///,         "
echo "            ,//,*((((/,,*/##(((##$$$$$$$( ($##//(/((* /$$$$/ //*,,/(*,,.        "
echo "            ,//(/....,*(#$$$$$$$$$$$$$$$( ($$$$$$$$$#./$$$#* *//*.,*.*/*        "
echo "            ,//.,////*.*($$$$$$$$$$$$$#,  /#$$$$$$$#/  ,(    *//*.*(.*/*        "
echo "              *//((((/     *#######,       *#$$$$#$/                 #&@@,      "
echo "                           .,                  .,                     .,        "
echo "                          */***,,,,,,*(#$#*,,,***. ,##,.*                       "
echo "                       /#$$#*./////////##//////*   ,$$$#(.,/*                   "
echo "                    .///($$$#* ,//////////////.   ($$$$(* ,//                   "
echo "                  .*///((/#$$#,..////......,//. *#(//#(*.***/                   "
echo "                 .////////.*#(  .*/,      */*       .*/////*                    "
echo "                .//////////.       ,//////.        ./////////                   "
echo "                .*  ./////                      ./(((//, *//((,                 "
echo "               *///////////.                                                    "
echo "            ,/((((((((////#*                                                    "
echo "           .,,,,,,,,,. ...                                                      "
                                                            
REM https://manytools.org/hacker-tools/convert-images-to-ascii-art/

exit /b