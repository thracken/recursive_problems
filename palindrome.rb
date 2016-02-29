def palindrome?(word)
  word.downcase
  return true if word.length == 1 || word.length == 0
  if word[0] == word[-1]
    palindrome?(word[1..-2])
  else
    false
  end
end
