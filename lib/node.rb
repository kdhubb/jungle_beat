class Node
  attr_reader :data, :next_node
  def initialize(data)
    @data = data
    @next_node = nil
  end
  def set_next(node_data)
      @next_node = Node.new(node_data)
  end
  # def 

  # end
end
