class Node
  attr_reader :data, :next_node
  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end

  def set_next(node_data)
      @next_node = Node.new(node_data)
  end

  def change_next(new_node)
      @next_node = new_node
  end
  
  def set_first(head_node)
      @next_node = head_node
  end
end
