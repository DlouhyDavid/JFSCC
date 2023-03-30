FROM mcr.microsoft.com/dotnet/runtime:6.0
COPY JoinFS-CONSOLE /srv/JoinFS-CONSOLE
COPY entrypoint.sh /entrypoint.sh
EXPOSE 6112
WORKDIR /srv/JoinFS-CONSOLE
ENTRYPOINT /entrypoint.sh