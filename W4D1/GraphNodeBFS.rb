
class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

end

def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = []

    until queue.empty?
        check = queue.pop
        return check if check.val == target_value
        visited << check
        check.neighbors.each do |neighbor|
            queue.unshift(neighbor) if !visited.include?(neighbor)
        end
    end
    nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]


p bfs(a, "f")