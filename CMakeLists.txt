cmake_minimum_required(VERSION 3.30)
project(EX3_TEST C)

set(CMAKE_C_STANDARD 99)

add_executable(EX3_TEST tweets_generator.c markov_chain.c linked_list.c)