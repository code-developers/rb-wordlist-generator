require 'wordlist/list'

module Wordlist
    class FlatFile < List

        attr_accessor :path

        def initalize(path,options={},&block)
            @path = path

            super(options,&block)
        end

        def each_word(&block)
            File.open(@path) do |file|
                file.each_line do |line|
                    yield line.chomp
                end
            end
        end
    end
end
