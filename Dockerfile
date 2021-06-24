FROM archlinux
RUN pacman -Sy --noconfirm python-pip netperf fping
RUN pip install flent
RUN pip install matplotlib
RUN rm -rf /var/lib/apt/lists/*
RUN mkdir -p /data
WORKDIR /data

CMD tail -f /dev/null

