FROM mcr.microsoft.com/dotnet/runtime:6.0
COPY JoinFS-CONSOLE /srv/JoinFS-CONSOLE
COPY start-hub.sh /srv/JoinFS-CONSOLE/start-hub.sh
RUN chmod 755 /srv/JoinFS-CONSOLE/start-hub.sh
EXPOSE 6112
WORKDIR /srv/JoinFS-CONSOLE