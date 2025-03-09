@echo off

:: Check for command-line argument
if "%1"=="" goto compile
if "%1"=="clean" goto clean

:compile
echo Compiling AlienInvasion project...

:: Compiler flags
set CXX=g++
set CXXFLAGS=-std=c++17 -I . -w

:: Compile each source file to object file
%CXX% %CXXFLAGS% -c main.cpp -o main.o
%CXX% %CXXFLAGS% -c Game/Game.cpp -o Game/Game.o
%CXX% %CXXFLAGS% -c RandomGenerator/randGen.cpp -o RandomGenerator/randGen.o
%CXX% %CXXFLAGS% -c Units/Aliens/AlienArmy.cpp -o Units/Aliens/AlienArmy.o
%CXX% %CXXFLAGS% -c Units/Aliens/AlienDrone.cpp -o Units/Aliens/AlienDrone.o
%CXX% %CXXFLAGS% -c Units/Aliens/AlienMonster.cpp -o Units/Aliens/AlienMonster.o
%CXX% %CXXFLAGS% -c Units/Aliens/AlienSoldier.cpp -o Units/Aliens/AlienSoldier.o
%CXX% %CXXFLAGS% -c Units/Ally/AllyArmy.cpp -o Units/Ally/AllyArmy.o
%CXX% %CXXFLAGS% -c Units/Ally/SaverUnit.cpp -o Units/Ally/SaverUnit.o
%CXX% %CXXFLAGS% -c Units/Earth/EarthArmy.cpp -o Units/Earth/EarthArmy.o
%CXX% %CXXFLAGS% -c Units/Earth/EarthGunnery.cpp -o Units/Earth/EarthGunnery.o
%CXX% %CXXFLAGS% -c Units/Earth/EarthHeal.cpp -o Units/Earth/EarthHeal.o
%CXX% %CXXFLAGS% -c Units/Earth/EarthSoldier.cpp -o Units/Earth/EarthSoldier.o
%CXX% %CXXFLAGS% -c Units/Earth/EarthTank.cpp -o Units/Earth/EarthTank.o
%CXX% %CXXFLAGS% -c Units/Unit.cpp -o Units/Unit.o

:: Link object files into executable
%CXX% %CXXFLAGS% -o AlienInvasion main.o Game/Game.o RandomGenerator/randGen.o Units/Aliens/AlienArmy.o Units/Aliens/AlienDrone.o Units/Aliens/AlienMonster.o Units/Aliens/AlienSoldier.o Units/Ally/AllyArmy.o Units/Ally/SaverUnit.o Units/Earth/EarthArmy.o Units/Earth/EarthGunnery.o Units/Earth/EarthHeal.o Units/Earth/EarthSoldier.o Units/Earth/EarthTank.o Units/Unit.o

echo Compilation complete! Run AlienInvasion.exe to start the game.
pause
goto end

:clean
echo Cleaning up build artifacts...
:: Delete object files
del /Q main.o
del /Q Game\Game.o
del /Q RandomGenerator\randGen.o
del /Q Units\Aliens\AlienArmy.o
del /Q Units\Aliens\AlienDrone.o
del /Q Units\Aliens\AlienMonster.o
del /Q Units\Aliens\AlienSoldier.o
del /Q Units\Ally\AllyArmy.o
del /Q Units\Ally\SaverUnit.o
del /Q Units\Earth\EarthArmy.o
del /Q Units\Earth\EarthGunnery.o
del /Q Units\Earth\EarthHeal.o
del /Q Units\Earth\EarthSoldier.o
del /Q Units\Earth\EarthTank.o
del /Q Units\Unit.o

:: Delete the executable
del /Q AlienInvasion.exe

echo Clean complete!
pause
goto end

:end