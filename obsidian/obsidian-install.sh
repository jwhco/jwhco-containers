apt update && \
apt install -y xfce4 xfce4-goodies tigervnc-standalone-server && \
# Replace with the command to install Obsidian
snap install obsidian --classic && \

# Set up VNC password (requires a tool like `vncpasswd` to set up)
mkdir -p /root/.vnc && \
echo "monkey23" | vncpasswd -f > /root/.vnc/passwd && \
chmod 600 /root/.vnc/passwd && \
# Start VNC server
vncserver :1 -geometry 1280x800 -depth 24
