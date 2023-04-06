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
      strings.join(" ")
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
      counter
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
      inspection_node
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
    if @head == nil
      @head = Node.new(node_data)
      "List empty, node inserted at index 0"
    elsif index == 0
      prepend_node(node_data)
    elsif index > count - 1
      "index doesn't exist"
    elsif index == 1
      last_half = @head.next_node
      new_node = Node.new(node_data)
      @head.change_next(new_node).change_next(last_half)
    else
      counter = 1
      until counter == index 
        inspection_node = inspection_node.next_node
        counter += 1
      end
      if inspection_node.next_node == nil
        append(node_data)
      else
        new_node = Node.new(node_data, inspection_node.next_node)
        inspection_node.change_next(new_node)
      end
    end
  end

  def pop
    pop_index = count - 2
    live_count = 0
    inspection_node = @head
    until pop_index == live_count
      inspection_node = inspection_node.next_node
      live_count += 1
    end
    popped_node = inspection_node.next_node
    inspection_node.change_next(nil)
    popped_node.data
  end

  def find(index, quantity)
    data_arr = to_string.split(" ")
    data_arr[index, quantity].join(" ")
  end
  def includes?(data)
    data_arr = to_string.split(" ")
    data_arr.include?(data)
  end
end

