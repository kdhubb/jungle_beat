class JungleBeat 
  attr_accessor :list
  def initialize()
    @list = LinkedList.new
  end
 def append(node_datums)
  node_data = node_datums.split(" ")
  node_data.each do |datum|
  @list.append(datum) end
  end

  def count
    node_data = @list.to_string.split(" ")
    node_data.count
  end
  def play
    `say -r 100 -v Bubbles "#{@list.to_string}"`
  end
  def all
    @list.to_string
  end
end

