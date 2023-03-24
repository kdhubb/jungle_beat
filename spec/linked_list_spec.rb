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
    expect(list.head.data).to eq("deet")
    expect(list.to_string).to eq("deet")
  end

  it "can use the above methods with multiple nodes in the list" do
    list = LinkedList.new

    list.append("oh")
    list.append("ah")
    list.append("ah")
    list.append("ah")
    list.append("ah")

    expect(list.head).to eq("oh")
    expect(list.to_string).to eq("oh ah ah ah ah")
    expect(list.count).to eq(5)
  end

end

   


