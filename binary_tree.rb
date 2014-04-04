class Node
    attr_accessor :left, :right, :value

    def initialize(value=nil)
        @value = value
    end
end

class Binary_tree
    attr_accessor :head

    def initialize(first_value=nil)
        @head = Node.new(first_value) if first_value
    end
    
    def iterate(node, value)
        if node.nil?
            return node
        elsif node.value > value
            iterate(node.left, value)
        elsif current_node < value
            iterate(node.right, value)
        end
    end


    def add(value)
        if @head.nil?
            @head = Node.new(value)
        else
            node=iterate(@head, value)
            node = Node.new(value)
        end
    end

    def find(value)
        current_node=@head     
        begin
            if current_node.nil? 
                print "not found"
            elsif current_node > value
                current node = current_node.left
            elsif current_node < value
                current_node = current_node.right
            elsif current_node = value
                print current_node
            end
        end while !current_node.nil?
    end            
end     