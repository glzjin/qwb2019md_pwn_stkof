FROM glzjin/base_pwn_xinetd_kafel:x64

COPY src /tmp/

RUN cp /tmp/pwn /home/ctf/pwn && \
    cp /tmp/pwn2 /home/ctf/pwn2 && \
    cp /tmp/rand.sh /home/ctf/rand.sh && \
    cp /tmp/pwn.xinetd.conf /etc/xinetd.d/pwn && \
    chown -R root:ctf /home/ctf && \
    chmod 750 /home/ctf/pwn && \
    chmod 750 /home/ctf/pwn2 && \
    chmod 750 /home/ctf/rand.sh && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
