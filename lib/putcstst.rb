require "putcstst/version"
require "csv"

module Putcstst
  # class Error < StandardError; end

  class CSVPrinter
    def initialize(filepath)
      @file = filepath
    end

    def print # 2D(2 column) Array Only
      CSV.foreach(@file) do |data|
        format = data.each_with_object("") do |_, str|
          str << "%10s"
          # str += "%10s" ## これはだめ。ふしぎ！
          # yieldの返り値が結合後にならないからなのかと思ったが
          # returnはちゃんと返されてる 
        end

        puts sprintf(format, *data)
      end
    end
  end
end