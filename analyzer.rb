text = ''
line_count = 0
File.open("text.txt").each do |line|
line_count +=1
text << line

end

stopwords = %w{the a by on for of are with just but and to the my I has some in}

total_characters = text.length
total_characters_nospaces = text.gsub(/\s+/,'').length
word_count =text.split.length
sentence_count = text.split(/\.|\?|!/).length
total_paragraphs =text.split(/\n\n/).length
words = text.scan(/\w+/)
keywords = words.select {|word| !stopwords.include?(word)}


puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_nospaces} characters (excluding spaces)"
puts "#{word_count} words" 
puts "#{sentence_count} sentences"
puts "#{total_paragraphs} paragraphs"
puts"#{word_count / sentence_count} words per sentence (average)"
puts "#{sentence_count / total_paragraphs} sentences per paragraph(average)"
puts "#{keywords.length } useful words"
puts"#{keywords.length*100/(word_count) } %"

grade ="#{keywords.length*100/(word_count) } %"

if grade > "90" && grade < "100"
  puts "Your grade is : A"
  
    elsif grade > "80" && grade < "90"
      puts "Your grade is :B"
      
    elsif grade > "70" && grade < "80"
        puts "Your grade is : C"
        
      else
        
        puts "Your text is shit , you're definetly getting an F"
        
      
      end
      
      
    





