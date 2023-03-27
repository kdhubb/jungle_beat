require "./lib/linked_list"
require "./lib/node"
require "./lib/jungle_beat"

RSpec.describe JungleBeat do
  it "exists" do
    jb = JungleBeat.new()

    expect(jb).to be_a JungleBeat
  end

  it "instantiates a list" do
    jb = JungleBeat.new()

    expect(jb.list).to be_a LinkedList
  end

  it "has an append method" do
    jb = JungleBeat.new()

    jb.append("doop")

    expect(jb.list.head.data).to eq("doop")

    jb.append("soup shoop")

    expect(jb.list.head.next_node.data).to eq("soup")
    expect(jb.list.to_string).to eq("doop soup shoop")
  end

  it "has a count method" do 
    jb = JungleBeat.new()

    jb.append("doop bubbles bubbly doop")
    
    expect(jb.list.to_string).to eq("doop bubbles bubbly doop")

    expect(jb.count).to eq(4)

    jb.list.prepend_node("doop")

    expect(jb.list.head.data).to eq("doop")
    expect(jb.count).to eq(5)
  end

  it "has a play method" do
    jb = JungleBeat.new()

    jb.append("boop pop loop scoop")
    
    expect(jb.play).not_to be nil
  end

  it "has an all method" do
    jb = JungleBeat.new()

    jb.append("boop shoop loop bubbles pop")

    expect(jb.all).to eq("boop shoop loop bubbles pop")
  end

  it "the append method returns the number of nodes appended" do
    jb = JungleBeat.new()
     
    jb.append("shoop")

    expect(jb.append("scoop")).to eq(1)

    expect(jb.append("Mississippi")).to eq(0)
    expect(jb.all).to eq("shoop scoop")
    expect(jb.count).to eq(2)
  end

  it "has an accepted sounds method that modifies the add node methods" do
    jb = JungleBeat.new()

    jb.append("bubbly bubbles go scoop doop shoop")
    
    expect(jb.list.to_string).to eq("bubbly bubbles go scoop doop shoop")
    expect(jb.append("Mississippi")).to eq(0)
    
    jb.append("Mississippi")
    
    expect(jb.count).to eq(6)
    expect(jb.list.to_string).to eq("bubbly bubbles go scoop doop shoop")
    expect(jb.all).to eq("bubbly bubbles go scoop doop shoop")
  end

  it "has a prepend method" do
    jb = JungleBeat.new()

    jb.append("bubbles go doop")
    expect(jb.list.to_string).to eq("bubbles go doop")

    expect(jb.prepend_beat("boop")).to eq(1)

    expect(jb.list.to_string).to eq("boop bubbles go doop")
  end

  it "has a rate reset method" do
    jb = JungleBeat.new()

    jb.append("bubbles go doop")
    jb.play
    jb.reset_rate(100)
    expect(jb.rate).to eq(100)
    jb.play
  end

  it "has a reset voice method" do
    jb = JungleBeat.new()
    jb.append("bubbly bubbles go scoop doop shoop")

    jb.reset_voice("Boing")

    expect(jb.voice).to eq("Boing")
    jb.play
    jb.reset_rate(80)
    expect(jb.rate).to eq(80)
    jb.play
  end
end