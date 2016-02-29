def onthewall(n)
  return "No more bottles of beer" if n == 0
  if n > 0
    puts "#{n} bottles of beer on the wall, #{n} bottles of beer! Take one down, pass it around, #{n-1} bottles of beer on the wall!"
    onthewall(n-1)
  end
end
