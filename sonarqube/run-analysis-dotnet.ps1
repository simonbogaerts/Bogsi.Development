dotnet sonarscanner begin `
    /k:"<projectname>" `
    /d:sonar.host.url="<sonar-url>" ` 
    /d:sonar.token="<token>" `
    /d:sonar.cs.opencover.reportsPaths=coverage.xml

dotnet build --no-incremental

coverlet .\<PROJECT>.Tests\bin\Debug\net<VERSION>\<TESTS>.Tests.dll `
    --target "dotnet" `
    --targetargs "test --no-build" `
    -f=opencover `
    -o="coverage.xml"

dotnet sonarscanner end /d:sonar.token="<token>"