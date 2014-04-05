class Node
    attr_accessor :left, :right, :top, :value

    def initialize(value=nil)
        @value = value
    end
end

# add 3 line to binary tree and u get avl tree pretty awesome
class Avl_tree
    attr_accessor :head

    def initialize(first_value=nil)
        puts "yoyoy" 
    end
    
    def iterate(node, value)
        if node.value > value  
            puts "yo"
            puts node.left.nil?
            if node.left.nil?
                node.left= Node.new(value)
                node.left.top= node
                return 
            else
                iterate(node.left, value)
            end
        elsif node.value < value
            if node.right.nil?
                node.right= Node.new(value)
                node.right.top = node
                return 
            else
                iterate(node.right, value)
            end
        end
    end


    def add(value)
        if @head.nil?
            puts "first node"
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