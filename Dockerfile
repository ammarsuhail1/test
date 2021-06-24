FROM mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2019

COPY ./NovusAgWebApp /inetpub/wwwroot

COPY ./Web.config /inetpub/wwwroot/Web.config

# Install IISRewrite Module
COPY rewrite_amd64_en-US.msi /rewrite.msi

RUN powershell -Command Start-Process c:/rewrite.msi -ArgumentList "/qn" -Wait