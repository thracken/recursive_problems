class Node
  attr_accessor :value, :left_child, :right_child, :parent
  def initialize(value)
    @value = value
  end
end

def build_tree(array, parent)
  half = array.length/2
  left, right = array[0..half-1], array[half+1..-1]
  root = array[half]
  node = Node.new root
  if array.length > 3
    node.left_child = build_tree(left, node.value)
    node.right_child = build_tree(right, node.value)
    node.parent = parent
    return node
  end
  node.parent = parent
  node.left_child = Node.new array[0]
  node.right_child = Node.new array[2]
  return node
end

array = [1,2,4,7,10,13,19,21,42,67,99,100,324,1425]
a = build_tree(array, nil)
