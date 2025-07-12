NAME = SolarSys

CC = clang-18
CFLAGS = -Wall -Werror -Wextra -Wpedantic
LFLAGS = 

SRC = $(wildcard src/*.c)
OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) $(CFLAGS) -o $(NAME) $(LFLAGS)

clean:
	rm -f $(OBJ) $(NAME)

run: all
	./$(NAME)

ren: clean run

re: clean all

.PHONY: all clean run ren re
