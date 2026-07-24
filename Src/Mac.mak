VERSION      = 0
PATCHLEVEL   = 0
SUBLEVEL     = 1
CODENAME     = PyCity
PROJECT_RELEASE = $(VERSION).$(PATCHLEVEL).$(SUBLEVEL)

CC       = gcc
INCLUDES = -ISrc/include
LDFLAGS  = -LSrc/lib
LIBS     = -lraylib -framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo
TARGET   = PyCity


all: banner compile

banner:
	@echo "========================================================="
	@echo " Building Project Version: $(PROJECT_RELEASE)"
	@echo " Codename: \"$(CODENAME)\""
	@echo "========================================================="

compile:
	$(CC) Src/Main.c -o $(TARGET) $(CFLAGS) $(INCLUDES) $(LDFLAGS) $(LIBS)

clean:
	rm -f $(TARGET)
