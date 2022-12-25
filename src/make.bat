cd %cd%

@echo off

:: Combine walter documents

type NUL > rnd\dark\rtconfig.txt
type rtconfig_dark.txt rtconfig.txt > rnd\dark\rtconfig.txt

type NUL > rnd\dark_win\rtconfig.txt
type rtconfig_dark_win.txt rtconfig.txt > rnd\dark_win\rtconfig.txt

type NUL > rnd\light\rtconfig.txt
type rtconfig_light.txt rtconfig.txt > rnd\light\rtconfig.txt

:: Update Common Assets
robocopy /z /e /nfl /ndl /njh /njs /nc /ns /np rnd\common ..\..\Dirt_Dark
robocopy /z /e /nfl /ndl /njh /njs /nc /ns /np rnd\common ..\..\Dirt_Win
robocopy /z /e /nfl /ndl /njh /njs /nc /ns /np rnd\common ..\..\Dirt_Light

:: Update Dark Win 10 Assets
robocopy /z /e /nfl /ndl /njh /njs /nc /ns /np rnd\dark ..\..\Dirt_Win

:: Update Individual Assets
robocopy /z /e /nfl /ndl /njh /njs /nc /ns /np rnd\dark ..\..\Dirt_Dark
robocopy /z /e /nfl /ndl /njh /njs /nc /ns /np rnd\dark_win ..\..\Dirt_Win
robocopy /z /e /nfl /ndl /njh /njs /nc /ns /np rnd\light ..\..\Dirt_Light

