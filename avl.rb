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
    end
    
    def iterate(node, value)
        if node.value > value  
            if node.left.nil?
                node.left= Node.new(value)
                node.left.top= node
                return node.left.top
            else
                iterate(node.left, value)
            end
        elsif node.value < value
            if node.right.nil?
                node.right= Node.new(value)
                node.right.top = node
                return node.right.top
            else
                iterate(node.right, value)
            end
        end
    end
    
    def balance(node)
        #
    end

    def add(value)
        if @head.nil?
            @head = Node.new(value)
        else
            node=iterate(@head, value)  
            #balance(node)
        end
    end

    def find(value)
        current_node=@head     
        begin
            if current_node.nil? 
                print "not found"
            elsif current_node.value > value
                current node = current_node.left
            elsif current_node.value < value
                current_node = current_node.right
            elsif current_node.value = value
                print current_node
                break
            end
        end while !current_node.nil?
    end            
end     