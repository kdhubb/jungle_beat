class JungleBeat 
  attr_reader :list, :rate, :voice
  def initialize()
    @list = LinkedList.new
    # These are the best beats!
    @accepted_beats = ["bubbles", "bubbly", "go", "boop", "doop", "scoop", "shoop", "woop", "coop", "hoop", "goop", "zoup", "soup", "loop", "pop"]
    @rate = 500
    @voice = "Bubbles"
  end

  def append(node_datums)
    node_data = node_datums.split(" ")
    keep = []
    node_data.each  do |datum|
      if @accepted_beats.include?("#{datum}") == true
        keep << datum
      end
    end
    keep.each do |keeper|
      @list.append(keeper) 
    end
    return keep.count
  end

  def prepend_beat(node_datums)
    node_data = node_datums.split(" ")
    keep = []
    node_data.each  do |datum|
      if @accepted_beats.include?("#{datum}") == true
        keep << datum
      end
    end
    keep.each do |keeper|
      @list.prepend_node(keeper) 
    end
    return keep.count
  end

  def count
    node_data = @list.to_string.split(" ")
    node_data.count
  end

  def play
    `say -r #{@rate} -v #{@voice} "#{@list.to_string}"`
  end

  def all
    @list.to_string
  end

  def reset_rate(speed)
    @rate = speed
  end

  def reset_voice(new_voice)
    @voice = new_voice
  end
end

