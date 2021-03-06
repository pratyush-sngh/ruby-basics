class Node
    attr_accessor :left, :right, :value

    def initialize(value=nil)
        @value = value
    end
end

class Binary_tree
    attr_accessor :head

    def initialize(first_value=nil)
    end
    
    def iterate(node, value)
        if node.value > value  
            if node.left.nil?
                node.left= Node.new(value)
                return 
            else
                iterate(node.left, value)
            end
        elsif node.value < value
            if node.right.nil?
                node.right= Node.new(value)
                return 
            else
                iterate(node.right, value)
            end
        end
    end


    def add(value)
        if @head.nil?
            @head = Node.new(value)
        else
            node=iterate(@head, value)    
        end
    end

    def find(value)
        current_node=@head     
        begin
            if current_node.nil? 
                print "not found"
            elsif current_node.value > value
                current_node = current_node.left
            elsif current_node.value < value
                current_node = current_node.right
            elsif current_node.value = value
                print current_node
                break
            end
        end while !current_node.nil?
    end            
end     