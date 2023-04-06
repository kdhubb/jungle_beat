class JungleBeat 
  attr_reader :list, :rate, :voice
  def initialize()
    @list = LinkedList.new
    # These are the best beats!
    @accepted_beats = ["bubbles", "bubbly", "go", "boop", "doop", "scoop", "shoop", "woop", "coop", "hoop", "goop", "zoup", "soup", "loop", "pop"]
    @rate = 100
    @voice = "Bubbles"
  end

  def append_beat(node_datums)
    node_data = node_datums.split(" ")
    keep = []
    node_data.each  do |datum|
      keep << datum if @accepted_beats.include?("#{datum}") == true
    end
    keep.each do |keeper|
      @list.append(keeper) 
    end
    keep.count
  end

  def prepend_beat(node_datums)
    node_data = node_datums.split(" ")
    keep = []
    node_data.each  do |datum|
      keep << datum if @accepted_beats.include?("#{datum}")
    end
    keep.each do |keeper|
      @list.prepend_node(keeper) 
    end
    keep.count
  end

  def count
    @list.to_string.split(" ").count
  end

  def play
    `say -r #{@rate} -v #{@voice} "#{@list.to_string}"`
    if @list.head == nil
      p "Try these bubble beats: #{@accepted_beats.join(", ")}"
    end
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

