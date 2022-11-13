class LinkedList
  attr_accessor :head

  def initialize
    self.head = nil
  end

  def append(value)
    if(self.head.nil?)
      self.head = Node.new(value, nil)
    else 
      lastNode = self.head
      while(!lastNode.nextNode.nil?)
        lastNode = lastNode.nextNode
      end
      # We are at the end of the list.
      lastNode.nextNode = Node.new(value, nil)
    end
  end

  def prepend(value)
    if(self.head.nil?)
      self.head = Node.new(value, nil)
    else
      while(!lastNode.nextNode.nil?)
        return  
    end
  end

  private
  class Node
    attr_accessor :value, :nextNode
    def initialize(value, nextNode)
      self.value = value
      self.nextNode = nextNode
    end
  end
end

