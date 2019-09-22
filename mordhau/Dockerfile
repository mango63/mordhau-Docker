FROM base

RUN mkdir -p /steam/mordhau
ADD Game.ini /steam/mordhau/Mordhau/Saved/Config/LinuxServer/
ADD start.sh /steam/mordhau
RUN apt-get install -y libfontconfig1 libpangocairo-1.0-0 libnss3 libgconf2-4 libxi6 libxcursor1 libxss1 libxcomposite1 libasound2 libxdamage1 libxtst6 libatk1.0-0 libxrandr2 libcurl3

RUN useradd -m steam

RUN mkdir -p /steam/steamcmd_linux

RUN chown -R steam /steam
USER steam

WORKDIR /steam/steamcmd_linux
RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz 
RUN tar -xf steamcmd_linux.tar.gz

#RUN ./steamcmd.sh +login anonymous +quit

RUN ./steamcmd.sh +login anonymous +force_install_dir ../mordhau +app_update 629800 vaidate +quit

WORKDIR /steam/mordhau

CMD ["./start.sh"]
