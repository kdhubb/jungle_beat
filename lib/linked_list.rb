class LinkedList
  attr_reader :head
  def initialize(head = nil)
    @head = head
  end
  
  def append(node_data)
    if @head == nil
      @head = Node.new(node_data)
    else @head.next_node.set_next(node_data)
    end
  end
  def to_string
    @head.data.to_s
  end
  def count
    if @head == nil
      0
    else 
      1
    end
  end
end

# head.next_node until == nil
#insert -- if head.next_node == data then databefore.next_node = new node