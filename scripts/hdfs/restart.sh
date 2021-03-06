#!/bin/sh

#echo
#echo " _   _ ____  _____ ____    ____  _____ ____ _____  _    ___ ______"
#echo "| | | |  _ \|  ___/ ___|  |  _ \| ____/ ___|_   _|/ \  |  _ \_   _|"
#echo "| |_| | | | | |_  \___ \  | |_) |  _| \___ \ | | / _ \ | |_) || |  "
#echo "|  _  | |_| |  _|  ___) | |  _ <| |___ ___) || |/ ___ \|  _ < | |  "
#echo "|_| |_|____/|_|   |____/  |_| \_\_____|____/ |_/_/   \_\_| \_\|_|  "
#echo


echo "------------------------------------------------------------------------------------------------------------------------------------------------------------------"
echo "|                                                                                                           ,----,                                     ,----,     |"
echo "|            ,--,                                                                                         ,/   .\`|                                   ,/   .\`|     |"
echo "|          ,--.'|     ,---,         ,---,.   .--.--.            ,-.----.        ,---,.   .--.--.        ,\`   .'  :    ,---,        ,-.----.        ,\`   .'  :     |"
echo "|       ,--,  | :   .'  .' \`\     ,'  .' |  /  /    '.          \    /  \     ,'  .' |  /  /    '.    ;    ;     /   '  .' \       \    /  \     ;    ;     /     |"
echo "|    ,---.'|  : ' ,---.'     \  ,---.'   | |  :  /\`. /          ;   :    \  ,---.'   | |  :  /\`. /  .'___,/    ,'   /  ;    '.     ;   :    \  .'___,/    ,'      |"
echo "|    |   | : _' | |   |  .\`\  | |   |   .' ;  |  |--\`           |   | .\ :  |   |   .' ;  |  |--\`   |    :     |   :  :       \    |   | .\ :  |    :     |       |"
echo "|    :   : |.'  | :   : |  '  | :   :  :   |  :  ;_             .   : |: |  :   :  |-, |  :  ;_     ;    |.';  ;   :  |   /\   \   .   : |: |  ;    |.';  ;       |"
echo "|    |   ' '  ; : |   ' '  ;  : :   |  |-,  \  \    \`.          |   |  \ :  :   |  ;/|  \  \    \`.  \`----'  |  |   |  :  ' ;.   :  |   |  \ :  \`----'  |  |       |"
echo "|    '   |  .'. | '   | ;  .  | |   :  ;/|   \`----.   \         |   : .  /  |   :   .'   \`----.   \     '   :  ;   |  |  ;/  \   \ |   : .  /      '   :  ;       |"
echo "|    |   | :  | ' |   | :  |  ' |   |   .'   __ \  \  |         ;   | |  \  |   |  |-,   __ \  \  |     |   |  '   '  :  | \  \ ,' ;   | |  \      |   |  '       |"
echo "|    '   : |  : ; '   : | /  ;  '   :  '    /  /\`--'  /         |   | ;\  \ '   :  ;/|  /  /\`--'  /     '   :  |   |  |  '  '--'   |   | ;\  \     '   :  |       |"
echo "|    |   | '  ,/  |   | '\` ,/   |   |  |   '--'.     /          :   ' | \.' |   |    \ '--'.     /      ;   |.'    |  :  :         :   ' | \.'     ;   |.'        |"
echo "|    ;   : ;--'   ;   :  .'     |   :  \     \`--'---'           :   : :-'   |   :   .'   \`--'---'       '---'      |  | ,'         :   : :-'       '---'          |"
echo "|    |   ,/       |   ,.'       |   | ,'                        |   |.'     |   | ,'                               \`--''           |   |.'                        |"
echo "|    '---'        '---'         \`----'                          \`---'       \`----'                                                 \`---'                          |"
echo " -----------------------------------------------------------------------------------------------------------------------------------------------------------------"
echo
echo

#echo "-------------------------------------------------------------------------------------------------------------------------------------------------"
#echo 
#echo "                      _    _   _____    ______    _____     _____    ______    _____   _______              _____    _______                     "
#echo "                     | |  | | |  __ \  |  ____|  / ____|   |  __ \  |  ____|  / ____| |__   __|     /\     |  __ \  |__   __|                    "
#echo "  ______   ______    | |__| | | |  | | | |__    | (___     | |__) | | |__    | (___      | |       /  \    | |__) |    | |       ______   ______ "
#echo " |______| |______|   |  __  | | |  | | |  __|    \___ \    |  _  /  |  __|    \___ \     | |      / /\ \   |  _  /     | |      |______| |______|"
#echo "                     | |  | | | |__| | | |       ____) |   | | \ \  | |____   ____) |    | |     / ____ \  | | \ \     | |                       "
#echo "                     |_|  |_| |_____/  |_|      |_____/    |_|  \_\ |______| |_____/     |_|    /_/    \_\ |_|  \_\    |_|                       "
#echo
#echo "-------------------------------------------------------------------------------------------------------------------------------------------------"
#echo

sh hdfs/stop.sh

sh hdfs/start.sh
