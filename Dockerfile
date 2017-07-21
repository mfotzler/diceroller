FROM microsoft/dotnet:1.1.2-runtime
WORKDIR /DiceRoller
ENV ASPNETCORE_ENVIRONMENT=Production
ENTRYPOINT ["dotnet", "DiceRoller.dll"]
COPY /DiceRoller/build /DiceRoller
