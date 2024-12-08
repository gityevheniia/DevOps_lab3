CXX = g++
CXXFLAGS = -Wall -g
TARGET = hello

all: $(TARGET)

$(TARGET): main.cpp
    $(CXX) $(CXXFLAGS) -o $(TARGET) main.cpp

clean:
    rm -f $(TARGET)
