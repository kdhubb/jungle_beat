class LinkedList
  attr_reader :head
  def initialize(head = nil)
    @head = head
  end
  
  def to_string
    inspection_node = @head
    if inspection_node == nil
      "empty list"
    else 
      strings =[head.data]
      until inspection_node.next_node == nil
        inspection_node = inspection_node.next_node 
        strings << inspection_node.data
      end
      return strings.join(" ")
    end
  end

  def count
    inspection_node = @head
    if @head == nil
      0
    else 
      counter = 1
      until inspection_node.next_node == nil
        inspection_node = inspection_node.next_node
        counter += 1
      end
      return counter
    end
  end

  def find_tail
    inspection_node = @head
    if inspection_node == nil
      "empty list"
    else 
      until inspection_node.next_node == nil
        inspection_node = inspection_node.next_node
      end
      return inspection_node
    end
  end

  def append(node_data)
    if @head == nil
      @head = Node.new(node_data)
    else 
      find_tail.set_next(node_data)
    end
  end
end


