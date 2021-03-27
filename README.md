# rb-wordlist-generator
A simple ruby tool for creating wordlist

# Description

A Ruby library for generating and working with word-lists. Wordlist allows one to efficiently generate unique word-lists from arbitrary text or other sources, such as website content. Wordlist can also quickly enumerate through words within an existing word-list, applying multiple mutation rules to each word in the list.


# Features
Uses a bucket system of CRC32 hashes for efficient filtering of duplicate words.
Can build wordlists containing multi-word phrases.
Can build wordlists containing phrases containing a minimum and maximum number of words.
Supports adding mutation rules to a word-list, which are applied to words as the list is enumerated.
Supports building word-lists from arbitrary text.
Supports custom word-list builders:
Wordlist::Builders::Website: Build word-lists from website content.
Supports custom word-list formats:
Wordlist::FlatFile: Enumerates through the words in a flat-file word-list.

# Requirements
- spidr >= 0.1.9

