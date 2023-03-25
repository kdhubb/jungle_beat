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

  def prepend_node(node_data)
   @head = Node.new(node_data, @head)
  end

  def insert(index, node_data)
    inspection_node = @head
    new_node = Node.new(node_data)
    if index  == 0
     prepend_node(node_data)
    elsif find_tail.next_node == nil
      append(node_data)
    else counter = -1
      until counter == index
        inspection_node = inspection_node.next_node
        counter += 1
      end
      inspection_node.next_node = new_node
    end
  end

end


  # def prepend_node(node_data)
  #   first_node = Node.new(node_data)
  #   @head = first_node.set_first(@head)
  # end

# def insert(index, node_data)
#   inspection_node = @head
#   new_node = Node.new(node_data)
#   if index  == 0
#     prepend_node(node_data)
#   else counter = 1
#     until counter == index
#       inspection_node = inspection_node.next_node
#       counter += 1
#     end
#     inspection_node.next_node = new_node
#     until counter == index +1
#       inspection_node = inspection_node.next_node
#       counter += 1
  
#       new_node.next_node = 

#   end
# end

# def insert(index, node_data)
#   if count == 0
#     prepend_node(node_data)
#   else 
#      until count - 1 == index 
#       count
#      end
#       new_node = set_next(node_data)
#     end
#   end
# end

# def traverse
#   inspection_node = @head
#   until inspection_node.next_node == nil
#     inspection_node = inspection_node.next_node
#   end
#   return inspection_node
# end
