class LinkedList
  attr_reader :head
  def initialize(head = nil)
    @head = head
  end
  
  def append(node_data)
    if @head == nil
      @head = Node.new(node_data)
    else @head = "nope"
    end
  end
  def to_string
    self.data.to_string
  end
  
end

