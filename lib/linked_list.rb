class LinkedList
  def initialize(head=nil)
    @head = head
  end

  def head
    @head
  end

  def length
    return 0 if is_empty
    1 + tail.length
  end

  def add!(item_value)
    new_head = Node.new(item_value, @head)
    @head = new_head
  end

  def get(index)
    return nil if is_empty
    return @head.value if index == 0
    tail.get(index - 1)
  end

  private

  def is_empty
    !@head
  end

  def tail
    LinkedList.new(cloned_list.head.next_node)
  end

  def cloned_list
    Marshal.load(Marshal.dump(self))
  end

end

class Node
  def next_node
    @next_node
  end

  def value
    @value
  end

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end

end
