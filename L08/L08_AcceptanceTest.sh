#!/bin/bash
# L08 Acceptance Tests

SRCDIR=$HOME/dev/java/p436/L08/

#Standard Test
printf "Standard Test - Testing Input: [apple, banana, carrot]\n\n"
printf "Expected Output:\n"
printf "Hello, I am Thread apple\nHello, I am Thread banana\nHello, I am Thread carrot\n\n"

printf "Actual Output:\n"
$SRCDIR/java L08 apple banana carrot
printf "________________________________________________________________\n\n"

#Standard Test 2
printf "Standard Test 2 - Testing Input: [fred, wilma, bambam, pebbles]\n\n"
printf "Expected Output:\n"
printf "Hello, I am Thread fred\nHello, I am Thread wilma\nHello, I am Thread bambam\nHello, I am Thread pebbles\n\n"

printf "Actual Output:\n"
java L08 fred wilma bambam pebbles
printf "________________________________________________________________\n\n"

#Include Numbers Test
printf "Include Numbers Test - Testing Input: [fred, 10, wilma, 20, bambam]\n\n"
printf "Expected Output:\n"
printf "Hello, I am Thread fred\nHello, I am Thread 10\nHello, I am Thread wilma\nHello, I am Thread 20\nHello, I am Thread bambam\n\n"

printf "Actual Output:\n"
L08 fred 10 wilma 20 bambam
printf "________________________________________________________________\n\n"

#Empty Test
printf "Empty Test - Testing Input: []\n\n"
printf "Expected Output:\n"
printf "\n"

printf "Actual Output:\n"
L08
printf "________________________________________________________________\n\n"
