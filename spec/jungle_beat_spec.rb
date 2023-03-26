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

    list = jb.list 

    expect(list).to be_a LinkedList

    expect(jb.list).to be_a LinkedList
  end

  it "has an append method" do
    jb = JungleBeat.new()

    jb.append("doop")

    expect(jb.list.head.data).to eq("doop")

    jb.append("do re mi")

    expect(jb.list.head.next_node.data).to eq("do")
    expect(jb.list.to_string).to eq("doop do re mi")
  end
  it "has a count method" do 
    jb = JungleBeat.new()

    jb.append("do re mi")
    
    expect(jb.list.to_string).to eq("do re mi")

    expect(jb.count).to eq(3)

    jb.list.prepend_node("boop")

    expect(jb.count).to eq(4)
  end
end