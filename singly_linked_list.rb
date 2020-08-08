class Node
    attr_accessor :value, :next_node
    def initialize(value)
        @value = value;
        @next_node = nil;
    end
end

class LinkedList
    
    def initialize
        @head = nil;
    end

    def append_to_tail(value)
    end
end