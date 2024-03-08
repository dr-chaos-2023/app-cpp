CC=g++
CFLAGS=-std=c++23 -Wall -pedantic -O3 -I.
BUILD_DIR=./build
APP_NAME=app
SOURCES := $(shell ./get_files.sh)
OBJECTS := $(patsubst %.cpp,$(BUILD_DIR)/%.o,$(SOURCES))

all: clean compile link run

compile: $(OBJECTS)

link: $(BUILD_DIR)/$(APP_NAME)

run: $(BUILD_DIR)/$(APP_NAME)
	clear && $<

$(BUILD_DIR)/$(APP_NAME): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^

$(BUILD_DIR)/%.o: %.cpp | $(BUILD_DIR)
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)