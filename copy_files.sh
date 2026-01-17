THIS_PATH=$PWD

CONFIG_FILES=("looknfeel.conf" "hyprlock.conf")

mkdir -p current/theme
mkdir -p current/backgrounds
mkdir -p omarchy/default/walker/themes/omarchy-default

mkdir -p .config/hypr
mkdir -p .config/waybar

cp -v /home/zakkmccrack/.config/omarchy/current/theme/walker.css  $THIS_PATH/current/theme/walker.css
cp -v /home/zakkmccrack/.config/omarchy/current/theme/waybar.css  $THIS_PATH/current/theme/waybar.css

cp -v /home/zakkmccrack/.config/waybar/style.css  $THIS_PATH/.config/waybar/style.css
cp -v /home/zakkmccrack/.config/waybar/config.jsonc  $THIS_PATH/.config/waybar/config.jsonc

cp -v /home/zakkmccrack/.config/omarchy/current/theme/swayosd.css  $THIS_PATH/current/theme/swayosd.css
cp -v /home/zakkmccrack/.local/share/omarchy/default/walker/themes/omarchy-default/style.css  $THIS_PATH/omarchy/default/walker/themes/omarchy-default/style.css
cp -v /home/zakkmccrack/.local/share/omarchy/default/walker/themes/omarchy-default/layout.xml  $THIS_PATH/omarchy/default/walker/themes/omarchy-default/layout.xml

for file in "${CONFIG_FILES[@]}"; do
    cp -v /home/zakkmccrack/.config/hypr/"$file" $THIS_PATH/.config/hypr
done

cd /home/zakkmccrack/.config/omarchy/current/theme/backgrounds
for f in *.png
do 
   cp -v "$f" $THIS_PATH/current/backgrounds/"${f%.png}"$(date +%m%d%y).png
done
