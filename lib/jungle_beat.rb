
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

end

 # def new_song(name)
  #   name = LinkedList.new
  #   @list = name
  # end