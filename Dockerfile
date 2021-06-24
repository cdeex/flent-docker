FROM archlinux
RUN pacman -Sy --noconfirm python-pip netperf fping
RUN pip install flent
RUN pip install matplotlib
RUN rm -rf /var/lib/apt/lists/*
RUN mkdir -p /data
WORKDIR /data

ENTRYPOINT ["/usr/bin/flent"]
CMD ["rrul", "-p", "all_scaled", "-l", "60", "-H", "netperf-eu.bufferbloat.net", "-o", "/data/RRUL_Test.png", "--figure-width=20", "--figure-height=15", "-z"]

