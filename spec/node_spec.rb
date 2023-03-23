require "rspec"
require "./lib/node"

RSpec.describe Node do 
  it "next node attribute is nil by default" do
    node1 = Node.new("biop")

    expect(node1.data).to eq("biop")
    expect(node1.next_node).to eq(nil)
  end


end
