####### MENTOR EXAMPLES TO DUPLICATE #########


class Node
    attr_accessor :payload, :children

    def initialize(payload, children)
        @payload = payload
        @children = children
    end
end

def depth_first_search(node, value)
	puts node.payload

	if node.payload == value
		return node
	end

	node.children.each do |child|
		result = depth_first_search(child, value)
		return result if result
	end

	nil
end

def breadth_first_search(nodes, value)
	children = []

	nodes.each do |node|
		puts node.payload
		return node if node.payload == value
		children.concat node.children
	end

	result = breadth_first_search(children, value)
	return result if result

	nil
end

# The "Leaves" of a tree, elements that have no children
fifth_node    = Node.new(5, [])
eleventh_node = Node.new(11, [])
fourth_node   = Node.new(4, [])


# The "Branches" of the tree
ninth_node = Node.new(9, [fourth_node])
sixth_node = Node.new(6, [fifth_node, eleventh_node])
seventh_node = Node.new(7, [sixth_node])
fifth_node = Node.new(5, [ninth_node])

# The "Root" of the tree
root   = Node.new(2, [seventh_node, fifth_node])

node = depth_first_search(root, 11)
if node
	puts "found #{node.payload}"
end

puts

node = breadth_first_search([root], 11)
if node
	puts "found #{node.payload}"
end
