A set of mini projects from <a href="www.theodinproject.com">The Odin Project</a>
for learning Ruby.

<h2>1. Caesar cipher</h2>

Implementation of caesar cipher in Ruby.

In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

Source: <a href="https://en.wikipedia.org/wiki/Caesar_cipher">Wikipedia</a>

<h2>2. Stock picker</h2>

Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.


<h2>3. Substrings</h2>

Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

<h2>4. Bubble sort</h2>

Ruby implementation of a simple sorting algorithm - bubble sort.

Bubble sort, sometimes referred to as sinking sort, is a simple sorting algorithm that repeatedly steps through the list to be sorted, compares each pair of adjacent items and swaps them if they are in the wrong order. The pass through the list is repeated until no swaps are needed, which indicates that the list is sorted. The algorithm, which is a comparison sort, is named for the way smaller elements "bubble" to the top of the list. Although the algorithm is simple, it is too slow and impractical for most problems even when compared to insertion sort.[1] It can be practical if the input is usually in sort order but may occasionally have some out-of-order elements nearly in position.

Source: <a href="https://en.wikipedia.org/wiki/Bubble_sort">Wikipedia</a>

<h2>5. Enumerable methods</h2>

Practice of the enumerable module by rebuilding some of its main methods: each, each_with_index, select, all?, any?, none?, count, map and inject.
I tried to implement as much as possible the behavior of the original methods based on <a href="http://ruby-doc.org/core-2.2.3/Enumerable.html">Ruby documentation.</a>