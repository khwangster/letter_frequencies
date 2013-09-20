letter_frequencies
==================


Problem
---------

Given a block of text, determine how many times each letter appears. Output the letters in the text along with the number of occurences of each letter, sorted in decreasing order of frequency (most frequent letter first).

### Input Format:

Read your input from a file. The first line of the file contains N, the number of test cases. Following this are N lines, each with a string s, the text for which to count letter frequencies.

### Output Format:

For each test case:
1) On the first line, print 'Case #n' (without quotes), where n is the case number (starting from 1).
2) For each letter c in the input string s, output a line 'c f' where f is the number of times c appears in s. These lines should be sorted in decreasing order of f. If two letters have the same frequency, output the letter that comes earlier in the alphabet first. Do not output the frequency of spaces.

### Bounds:

1 <= N <= 200
1 <= length of s <= 10000
Each character in s will be either a lowercase letter from 'a' to 'z' or a space.
