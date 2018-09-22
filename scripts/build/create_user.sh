#!bin/bash
SUDO_USER=happy
SUDO_PASS=happy@1234
APP_USER=caffeine
APP_HOME=/srv/src

echo "==> Creating sudo user '$SUDO_USER'"
sudo useradd \
    --user-group \
    --no-create-home \
    --shell /bin/bash \
    $SUDO_USER
echo $SUDO_USER:$SUDO_PASS | sudo chpasswd
sudo adduser $SUDO_USER sudo
echo "$SUDO_USER ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/90-$SUDO_USER

echo "==> Creating app user '$APP_USER'"
sudo mkdir -p $APP_HOME
sudo useradd \
    --shell /bin/bash \
    --user-group \
    --home-dir $APP_HOME \
    $APP_USER
sudo chown $APP_USER: $APP_HOME
