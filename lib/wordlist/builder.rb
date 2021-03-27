require 'wordlist/unique_filter'
require 'wordlist/parsers'

module Wordlist
    class Builder

        include Parsers

        attr_reader :path

        attr_reader :min_words

        attr_reader :max_words

        attr_reader :file

        attr_reader :filter

        attr_reader :word_queue

        def initialize(path,options={})
            super()

            @path = File.expand_path(path)

            @min_words = options.fetch(:min_words,1)
            @max_words = options.fetch(:max_words,@min_words)

            @file      = nil
            @filter    = UniqueFilter.new
            @word_queue = []

            yield self if block_given?
        end

        