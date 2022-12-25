cd %cd%

set root_dir=%cd%

cd ..\..\

set parameter="-m5x9"

7za a %-m5x9% -tzip "Dirt - Light.ReaperThemeZip" "Dirt - Light.ReaperTheme" "Dirt_Light"
7za a %-m5x9% -tzip "Dirt - Dark.ReaperThemeZip" "Dirt - Dark.ReaperTheme" "Dirt_Dark"
7za a %-m5x9% -tzip "Dirt - Dark - Win 10.ReaperThemeZip" "Dirt - Dark - Win 10.ReaperTheme" "Dirt_Win"

cd %root_dir%

move /y "..\..\Dirt - Light.ReaperThemeZip" "zip"
move /y "..\..\Dirt - Dark.ReaperThemeZip" "zip"
move /y "..\..\Dirt - Dark - Win 10.ReaperThemeZip" "zip"

pause