echo "Please enter a version (ex 1.0.0)" 
read ver

echo "Please enter maintainer name"
read name

echo "Please enter maintainer email"
read email

echo "Enter ubuntu version code (ex focal for 20.04)
read vcode

echo "Enter release notes, do \\n for a new line"
read release

echo "Enter architecture. amd64 for regular pc"
read arch

echo "If these look right, press enter, otherwise CTRL-C"
echo "Version: $ver"
echo "Name: $name"
echo "Email: $email"
echo "Ubuntu Version Code: $vcode"
echo "Release Note: $release"
echo "Architecture: $arch"
read

mkdir -p gtkcord3-$ver-all/usr/bin
mkdir -p gtkcord3-$ver-all/usr/share/applications

echo "[Desktop Entry]" >> gtkcord3-$ver-all/usr/share/applications/gtkcord.desktop
echo "Name=Discord" >> gtkcord3-$ver-all/usr/share/applications/gtkcord.desktop
echo "StartupWMClass=gtkcord3" >> gtkcord3-$ver-all/usr/share/applications/gtkcord.desktop
echo "Comment=A lightweight Discord client which uses GTK3 for the user interface.." >> gtkcord3-$ver-all/usr/share/applications/gtkcord.desktop
echo "GenericName=Discord Client" >> gtkcord3-$ver-all/usr/share/applications/gtkcord.desktop
echo "Exec=/usr/share/discord/Discord" >> gtkcord3-$ver-all/usr/share/applications/gtkcord.desktop
echo "Icon=gtkcord3" >> gtkcord3-$ver-all/usr/share/applications/gtkcord.desktop
echo "Type=Application" >> gtkcord3-$ver-all/usr/share/applications/gtkcord.desktop
echo "Categories=GTK;GNOME;Chat;" >> gtkcord3-$ver-all/usr/share/applications/gtkcord.desktop
echo "Path=/usr/bin" >>

mkdir -p gtkcord3-$ver-all/usr/share/pixmaps" >> gtkcord3-$ver-all/usr/share/applications/gtkcord.desktop
wget https://github.com/diamondburned/gtkcord3/raw/master/logo.png
mv logo.png gtkcord3-$ver-all/usr/share/pixmaps

mkdir -p gtkcord3-$ver-all/DEBIAN" >> gtkcord3-$ver-all/usr/share/applications/gtkcord.desktop
echo "Description" >> 

echo "Package: gtkcord3" >> gtkcord3-$ver-all/DEBIAN/
echo "Version: $ver"
echo "Architecture: all"
echo "Maintainer: $name <$email>"
echo "Depends: gtk libhandy"
echo "Recommends: discordlogin"
echo "Section: net"
echo "Priority: optional"
echo "Description: A lightweight Discord client which uses GTK3 for the user interface."






go get github.com/diamondburned/gtkcord3

