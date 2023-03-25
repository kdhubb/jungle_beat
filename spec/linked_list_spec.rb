require "rspec"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "has an attribute head that is nil by default" do
  linked_list1 = LinkedList.new()
  
  expect(linked_list1.class).to eq(LinkedList)
  expect(linked_list1.head).to eq(nil)
  end

  it "has an append method to add nodes to the end of the list" do
    list = LinkedList.new
    
    expect(list.head).to be nil
    
    list.append("doop")

    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to be nil
  end

  it "has a count method that counts the number of nodes in the list" do
    list = LinkedList.new
    
    expect(list.head).to be nil
    expect(list.count).to eq(0)

    list.append("doop")

    expect(list.head.data).to eq("doop")
    expect(list.count).to eq(1)
  end
    
  it "has a to_string method that prints the nodes in a string" do 
    list = LinkedList.new
    
    expect(list.head).to be nil

    list.append("deet")
    list.append("doop")
 
    expect(list.head.data).to eq("deet")
    expect(list.to_string).to eq("deet doop")
  end

  it "has a find_tail method that returns the last node" do
    list = LinkedList.new

    list.append("do")
    list.append("re")
    list.append("mi")

    expect(list.find_tail.data).to eq("mi")
  end
  it "can use the above methods with multiple nodes in the list" do
    list = LinkedList.new

    list.append("do")
    list.append("re")
    list.append("mi")
    list.append("fa")
    list.append("so")
   
    expect(list.head.data).to eq("do")
    expect(list.to_string).to eq("do re mi fa so")
    expect(list.count).to eq(5)
  end

  it "has a prepend method" do
    list = LinkedList.new

    list.append("so")
    list.append("la")
    list.append("ti")
    list.append("do")

    expect(list.head.data).to eq("so")
    expect(list.to_string).to eq("so la ti do")
    expect(list.find_tail.data).to eq("do")
    expect(list.count).to eq(4)

    list.prepend_node("fa")
    list.prepend_node("mi")
    list.prepend_node("re")
    list.prepend_node("do")

    expect(list.head.data).to eq("do")
    expect(list.to_string).to eq("do re mi fa so la ti do")
    expect(list.count).to eq(8)
  end

  it "had an insert method" do
    list = LinkedList.new

    list.append("so")
    list.append("la")
    list.append("ti")
    list.append("do")
    list.append("soo")

    expect(list.head.data).to eq("so")
    expect(list.to_string).to eq("so la ti do soo")
    expect(list.find_tail.data).to eq("soo")
    expect(list.count).to eq(5)

    list.insert(2, "woo")

    expect(list.to_string).to eq("so la woo ti do soo")
  end

  xit "has a find method" do
    list = LinkedList.new

    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.find(2, 1)).to eq("shi")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end

  xit "had an includes? method" do
    list = LinkedList.new

    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.includes?("deep")).to be true
    expect(list.includes?("dep")).to be false
  end

  xit "has a pop method" do 
    list = LinkedList.new

    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.to_string).to eq("deep woo shi shu blop")

    list.pop
    list.pop

    expect(list.to_string).to eq("deep woo shi")
    expect(list.pop).to eq("shi")
  end

end

   


