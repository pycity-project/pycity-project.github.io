VERSION      = 0
PATCHLEVEL   = 0
SUBLEVEL     = 2
CODENAME     = PyCity
PROJECT_RELEASE = $(VERSION).$(PATCHLEVEL).$(SUBLEVEL)

CC       = gcc
# --- UPDATED SANITIZER FLAGS FOR W64DEVKIT COMPATIBILITY ---
CFLAGS   = -Wall -std=c99 -O2 -mwindows -s
INCLUDES = -Iinclude
LDFLAGS  = -Llib
LIBS     = -lraylib -lopengl32 -lgdi32 -lwinmm
TARGET   = PyCity.exe

all: banner compile

banner:
	@echo "========================================================="
	@echo " Building Project Version: $(PROJECT_RELEASE)"
	@echo " Codename: \"$(CODENAME)\""
	@echo "========================================================="

compile:
	$(CC) main.c -o $(TARGET) $(CFLAGS) $(INCLUDES) $(LDFLAGS) $(LIBS)

clean:
	rm -f $(TARGET)
