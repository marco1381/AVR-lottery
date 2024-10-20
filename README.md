# Barb’s prize draw problem

If you don’t know, a raffle is a gambling competition where people buy numbered tickets for a chance of winning a prize. Barb wants to raffle some items for charity and sell tickets. While Barb could use an online number generator, she wants to try learning to create her own assembly code for the prize draw.

## Your job is to create Barb’s random number algorithm that fulfils the following requirements:
- The algorithm needs to generate six, two-digit numbers between 01 to 59 (for example: 30, 50, 12, 45, 07, 81).
  
- For each of the two-digit numbers, the most significant digit should be displayed on Port A in binary, the least significant bit should be displayed on Port B.

- The program code should be structured using subroutines and must contain sufficient comments to annotate the code’s behavior.

- The system should be developed and tested incrementally, i.e., add one feature at a time, test it, before moving on.

### HINT: Pseudo Random Number Algorithm
If you start with a pre-seeded number (something other than zero), you can use the XOR and shift method to create a random number generator. When done correctly, you will have a sequence that does not repeat for (2^n - 1) times, where n is the number of bits you are shifting.

It works like this: Start with a number, for example, the hex number `$66`, which is `0110 0110` in binary. Take the bottom two bits and XOR them together, then take that result and shift it onto the most significant bit of the number. If you continue this method, you achieve a sense of randomness.

Example first number and successive numbers: `$66`, `$B3`, `$59`, `$AC`, etc.

> This code was completed by Marco Gizzi, Hanzla Ilyas, Sebastian Carp, and Harmanpreet Sign.
