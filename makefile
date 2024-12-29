# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -g

# Files
LINKED_LIST_SRC = linked_list.c
MARKOV_CHAIN_SRC = markov_chain.c

# Targets
all: tweets_generator snakes_and_ladders

tweets_generator: tweets_generator.c $(LINKED_LIST_SRC) $(MARKOV_CHAIN_SRC)
	$(CC) $(CFLAGS) -o tweets_generator tweets_generator.c $(LINKED_LIST_SRC) $(MARKOV_CHAIN_SRC)

snakes_and_ladders: snakes_and_ladders.c $(LINKED_LIST_SRC) $(MARKOV_CHAIN_SRC)
	$(CC) $(CFLAGS) -o snakes_and_ladders snakes_and_ladders.c $(LINKED_LIST_SRC) $(MARKOV_CHAIN_SRC)

# Cleaning up generated files
clean:
	rm -f tweets_generator snakes_and_ladders