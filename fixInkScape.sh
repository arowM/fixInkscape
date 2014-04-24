#!/bin/bash

inkscape=`which inkscape`

sudo mv -n "${inkscape}"{,.old}
echo -e '#!/bin/bash\nunset GTK_IM_MODULE && "'"${inkscape}"'.old" $1' | sudo tee "${inkscape}"
sudo chmod 755 /usr/bin/inkscape
