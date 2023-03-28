FROM developeranaz/rc-index:latest
RUN curl -O 'https://raw.githubusercontent.com/shahaf1122/Multi-Cloud-Index/main/rclone-v1.62.2-linux-amd64.zip' && \
    unzip rclone-current-linux-amd64.zip && \
    cp /rclone-*-linux-amd64/rclone /usr/bin/ && \
    chown root:root /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone
COPY rcindex /usr/bin/rcindex
RUN chmod +x /usr/bin/rcindex
CMD rcindex
