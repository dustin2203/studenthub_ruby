require 'pdf-reader'
filename = "C:/Users/Justus/RubymineProjects/studenthub_ruby/src/pdf-test-data/test1.pdf"
searched_word = 'body'

PDF::Reader.open(filename) do |reader|
  reader.pages.each do |page|
    string = page.text
    if string.downcase.include?(searched_word)
      puts string
    end
  end
end

