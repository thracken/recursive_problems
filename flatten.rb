def make_flat(array, result =[])
  array.each do |item|
    if item.class == Array
      make_flat(item, result)
    else
      result << item
    end
  end
  return result
end
