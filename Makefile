# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++17 -I . -w  # Suppress all warnings

# Executable name
TARGET = AlienInvasion

# Source files
SRC = main.cpp \
      Game/Game.cpp \
      RandomGenerator/randGen.cpp \
      Units/Aliens/AlienArmy.cpp Units/Aliens/AlienDrone.cpp Units/Aliens/AlienMonster.cpp Units/Aliens/AlienSoldier.cpp \
      Units/Ally/AllyArmy.cpp Units/Ally/SaverUnit.cpp \
      Units/Earth/EarthArmy.cpp Units/Earth/EarthGunnery.cpp Units/Earth/EarthHeal.cpp Units/Earth/EarthSoldier.cpp Units/Earth/EarthTank.cpp \
      Units/Unit.cpp

# Object files
OBJ = $(SRC:.cpp=.o)

# Default rule
all: $(TARGET)

# Link executable
$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Compile source files to object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean object files and executable
clean:
	rm -f $(OBJ) $(TARGET)

# Rebuild the project
rebuild: clean all
