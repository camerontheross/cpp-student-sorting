CXX = g++
CXXFLAGS = -Wall -Ilib/cpp-menu/include
LDFLAGS = lib/cpp-menu/libcppmenu.a

SRC = $(wildcard src/*.cpp)
OBJ = $(SRC:.cpp=.o)
TARGET = main.exe

.PHONY: all clean cpp-menu

all: cpp-menu $(TARGET)

cpp-menu:
	$(MAKE) -C lib/cpp-menu

$(TARGET): $(OBJ)
	$(CXX) $(OBJ) $(LDFLAGS) -o $@

clean:
	rm -f $(OBJ) $(TARGET)
	$(MAKE) -C lib/cpp-menu clean

run:
	./main.exe
