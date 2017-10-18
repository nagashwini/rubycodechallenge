<h1>Ruby Code Challenge</h1>

 Given two words (beginWord and endWord), and a dictionary's word list, find the length of shortest transformation sequence from beginWord to endWord, such that:

    Only one letter can be changed at a time.
    Each transformed word must exist in the word list. Note that beginWord is not a transformed word.

For example,

Given:
beginWord = "hit"
endWord = "cog"
wordList = ["hot","dot","dog","lot","log","cog"]

As one shortest transformation is "hit" -> "hot" -> "dot" -> "dog" -> "cog",
return its length 5.

Note:

    Return 0 if there is no such transformation sequence.
    All words have the same length.
    All words contain only lowercase alphabetic characters.
    You may assume no duplicates in the word list.
    You may assume beginWord and endWord are non-empty and are not the same.

#Do what is right, not what is easy.

Execution Steps:

$ irb

irb(main):001:0> load './rubycodechallenge.rb'

=> true

> ladder_length("hit", "cog", ["hot","dot","dog","lot","log","cog"])

=> 5

irb(main):003:0>

So this was Breadth First approach, where all words at same levels are collected first, 
that is all words with one letter difference are collected in Queue, 
and then each paths are checked for next level words until we found the endWord.