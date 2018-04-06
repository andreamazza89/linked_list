require_relative "../lib/linked_list"

describe LinkedList do
  it "starts out empty" do
    empty_list = LinkedList.new

    empty_list.length.should == 0
  end

  it "knows the lenght of the list" do
    my_list = LinkedList.new

    my_list.add!("ciao")
    my_list.add!("miao")

    my_list.length.should == 2
  end

  it "gets the first item of the list" do
    my_list = LinkedList.new

    my_list.add!("ciao")

    my_list.get(0).should == "ciao"
  end

  it "gets the third item of the list" do
    my_list = LinkedList.new

    my_list.add!("wow")
    my_list.add!("miao")
    my_list.add!("ciao")

    my_list.get(2).should == "wow"
  end

  it "returns nothing for an empty list" do
    my_list = LinkedList.new

    my_list.get(0).should == nil
  end

  it "returns nothing for an out of range index" do
    my_list = LinkedList.new

    my_list.add!("wow")

    my_list.get(5).should == nil
  end

  xit "removes the first item of the list" do
    my_list = LinkedList.new

    my_list.add!("wow")
    my_list.add!("ciao")
    my_list.delete_one!

    my_list.get(0).should == "wow"
  end

end
