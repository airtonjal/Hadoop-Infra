#!/bin/sh

echo " ------------------------------------------------------------------------------------------------------------------------------------------"
echo "|                                                                                    ,----,                                     ,----,     |"
echo "|            ,--,                                                                  ,/   .\`|                                   ,/   .\`|     |"
echo "|          ,--.'|     ,---,         ,---,.   .--.--.              .--.--.        ,\`   .'  :    ,---,        ,-.----.        ,\`   .'  :     |"
echo "|       ,--,  | :   .'  .' \`\     ,'  .' |  /  /    '.           /  /    '.    ;    ;     /   '  .' \       \    /  \     ;    ;     /     |"
echo "|    ,---.'|  : ' ,---.'     \  ,---.'   | |  :  /\`. /          |  :  /\`. /  .'___,/    ,'   /  ;    '.     ;   :    \  .'___,/    ,'      |"
echo "|    |   | : _' | |   |  .\`\  | |   |   .' ;  |  |--\`           ;  |  |--\`   |    :     |   :  :       \    |   | .\ :  |    :     |       |"
echo "|    :   : |.'  | :   : |  '  | :   :  :   |  :  ;_             |  :  ;_     ;    |.';  ;   :  |   /\   \   .   : |: |  ;    |.';  ;       |"
echo "|    |   ' '  ; : |   ' '  ;  : :   |  |-,  \  \    \`.           \  \    \`.  \`----'  |  |   |  :  ' ;.   :  |   |  \ :  \`----'  |  |       |"
echo "|    '   |  .'. | '   | ;  .  | |   :  ;/|   \`----.   \           \`----.   \     '   :  ;   |  |  ;/  \   \ |   : .  /      '   :  ;       |"
echo "|    |   | :  | ' |   | :  |  ' |   |   .'   __ \  \  |           __ \  \  |     |   |  '   '  :  | \  \ ,' ;   | |  \      |   |  '       |"
echo "|    '   : |  : ; '   : | /  ;  '   :  '    /  /\`--'  /          /  /\`--'  /     '   :  |   |  |  '  '--'   |   | ;\  \     '   :  |       |"
echo "|    |   | '  ,/  |   | '\` ,/   |   |  |   '--'.     /          '--'.     /      ;   |.'    |  :  :         :   ' | \.'     ;   |.'        |"
echo "|    ;   : ;--'   ;   :  .'     |   :  \     \`--'---'             \`--'---'       '---'      |  | ,'         :   : :-'       '---'          |"
echo "|    |   ,/       |   ,.'       |   | ,'                                                    \`--''           |   |.'                        |"
echo "|    '---'        '---'         \`----'                                                                      \`---'                          |"
echo " ------------------------------------------------------------------------------------------------------------------------------------------"
echo
echo

sudo -u hdfs sudo service hadoop-hdfs-namenode start
fab start_dn 

sudo -u hdfs sudo service hadoop-hdfs-namenode status
