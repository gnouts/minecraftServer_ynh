MINECRAFT_VERSION="1.11.2"
MINECRAFT_SOURCE_URL="https://s3.amazonaws.com/Minecraft.Download/versions/${MINECRAFT_VERSION}/minecraft_server.${MINECRAFT_VERSION}.jar


local DESTDIR=$1

# retrieve minecraft server jar
ms_jar="${DESTDIR}/minecraft.jar"
sudo wget -q -O "ms_jar" "$MINECRAFT_SOURCE_URL" \
  || ynh_die "Unable to download jar source"
echo "

