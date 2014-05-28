Node = Struct.new(:left_node, :right_node,:value)

class BinaryTree

  def initialize(value = nil)
    @root = Node.new( nil, nil,value) if value
  end

  def insert(value)
    node = Node.new( nil, nil,value)
    unless @root
      @root = node
    else
      add_node(@root, node)
    end
  end

  def add_node(tree, node)
    if node.value < tree.value
      unless tree.left_node.nil?
        add_node(tree.left_node, node)
      else
        tree.left_node = node
      end
    else
      unless tree.right_node.nil?
        add_node(tree.right_node, node)
      else
        tree.right_node = node
      end
    end
  end

  def travel_node(node, &block)
    return if node.nil?
    travel_node(node.left_node, &block)
    yield node.value if block_given?
    travel_node(node.right_node, &block)
  end

  def print_all
    return unless @root
    travel_node(@root){|x| puts x}
  end

  def insert_all(array)
    array.each do |value|
      insert(value)
    end
  end

end

b = BinaryTree.new
b.insert_all([3,5,1,89,23,98,34])
b.print_all