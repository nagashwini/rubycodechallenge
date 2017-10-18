def ladder_length(from, to, dict)
    
    queue = [from]
    level_queue = [1]
    dict.delete(from) 
    letters = 'a'..'z'
    dict << to
    
    until queue.empty?
      word = queue.shift
      l = level_queue.shift
      indexes = 0...word.size
      letters.each do |c|
        indexes.each do |i|
            word_copy = word.dup
            word_copy[i] = c
            if dict.include?(word_copy)
              return l + 1 if word_copy == to
              queue << word_copy
              level_queue << l + 1
              dict.delete(word_copy)
            end
        end
      end
    end
    0
end