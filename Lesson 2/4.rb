vowels = %w[a e i o u y]
checked = {}
('a'..'z').each.with_index(1) do |letter, i| if vowels.include?(letter)
    checked[letter] = i
  end
end
puts checked
