export HOST=$(hostname)

# Write host info
echo -e "$HOST" >$VNC_SESSION_INFO

source before.sh

$VNCSERVER_BIN_PATH -securitytypes OTP -otp -fg -xstartup ./xstartup -log ./vnc.log
