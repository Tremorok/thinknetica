vowels = %w[a e i o u y]
checked = {}
('a'..'z').each.with_index(1) do |letter, index| 
  checked[letter] = index if vowels.include?(letter)
end
puts checked
