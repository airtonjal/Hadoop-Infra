#!/bin/sh

echo
echo " ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- "
echo "|                                                                                                                                          ,----,                                     ,----,      |"
echo "|               ____                   ,-.----.                                                                                           ,/   .\`|                                   ,/   .\`|     |"
echo "|             ,'  , \`.    ,---,        \    /  \   ,-.----.        ,---,.     ,---,             ,-.----.        ,---,.   .--.--.        ,\`   .'  :    ,---,        ,-.----.        ,\`   .'  :     |"
echo "|          ,-+-,.' _ |   '  .' \       |   :    \  \    /  \     ,'  .' |   .'  .' \`\           \    /  \     ,'  .' |  /  /    '.    ;    ;     /   '  .' \       \    /  \     ;    ;     /     |"
echo "|       ,-+-. ;   , ||  /  ;    '.     |   |  .\ : ;   :    \  ,---.'   | ,---.'     \          ;   :    \  ,---.'   | |  :  /\`. /  .'___,/    ,'   /  ;    '.     ;   :    \  .'___,/    ,'      |"
echo "|      ,--.'|'   |  ;| :  :       \    .   :  |: | |   | .\ :  |   |   .' |   |  .\`\  |         |   | .\ :  |   |   .' ;  |  |--\`   |    :     |   :  :       \    |   | .\ :  |    :     |       |"
echo "|     |   |  ,', |  ': :  |   /\   \   |   |   \ : .   : |: |  :   :  |-, :   : |  '  |         .   : |: |  :   :  |-, |  :  ;_     ;    |.';  ;   :  |   /\   \   .   : |: |  ;    |.';  ;       |"
echo "|     |   | /  | |  || |  :  ' ;.   :  |   : .   / |   |  \ :  :   |  ;/| |   ' '  ;  :         |   |  \ :  :   |  ;/|  \  \    \`.  \`----'  |  |   |  :  ' ;.   :  |   |  \ :  \`----'  |  |       |"
echo "|     '   | :  | :  |, |  |  ;/  \   \ ;   | |\`-'  |   : .  /  |   :   .' '   | ;  .  |         |   : .  /  |   :   .'   \`----.   \     '   :  ;   |  |  ;/  \   \ |   : .  /      '   :  ;       |"
echo "|     ;   . |  ; |--'  '  :  | \  \ ,' |   | ;     ;   | |  \  |   |  |-, |   | :  |  '         ;   | |  \  |   |  |-,   __ \  \  |     |   |  '   '  :  | \  \ ,' ;   | |  \      |   |  '       |"
echo "|     |   : |  | ,     |  |  '  '--'   :   ' |     |   | ;\  \ '   :  ;/| '   : | /  ;          |   | ;\  \ '   :  ;/|  /  /\`--'  /     '   :  |   |  |  '  '--'   |   | ;\  \     '   :  |       |"
echo "|     |   : '  |/      |  :  :         :   : :     :   ' | \.' |   |    \ |   | '\` ,/           :   ' | \.' |   |    \ '--'.     /      ;   |.'    |  :  :         :   ' | \.'     ;   |.'        |"
echo "|     ;   | |\`-'       |  | ,'         |   | :     :   : :-'   |   :   .' ;   :  .'             :   : :-'   |   :   .'   \`--'---'       '---'      |  | ,'         :   : :-'       '---'          |"
echo "|     |   ;/           \`--''           \`---'.|     |   |.'     |   | ,'   |   ,.'               |   |.'     |   | ,'                               \`--''           |   |.'                        |"
echo "|     '---'                              \`---\`     \`---'       \`----'     '---'                 \`---'       \`----'                                                 \`---'                          |"
echo " ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- "
echo
echo

# Stops local jobtracker and remote tasktrackers
sh mapred/stop.sh

# Starts local jobtracker and remote tasktrackers
sh mapred/start.sh
