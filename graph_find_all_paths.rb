require "set"

def all_paths(edges, v_start, v_end)
    graph = Hash.new {}
    #directed graph
    edges.each do |edge|
      if graph[edge[0]]
        graph[edge[0]] << edge[1]
      else
        graph[edge[0]] = Set.new([edge[1]])
      end
    end
    
    paths = []
    queue = [[v_start,[v_start]]]
    while(!queue.empty?)
      recent = queue.pop
      if graph[recent[0]]
      graph[recent[0]].each do |vertice|
        path = recent[1] + [vertice]
        queue.unshift([vertice, path])
        if vertice == v_end
            paths << path
        end
      end 
    end  
    end   
    return paths
  end

  class Dog
    attr_reader :name, :rate
    def initialize (name, rate)
        @name = name
        @rate = rate
    end
  end

  d = Dog.new('jooh', 5)
  d1 = Dog.new('friend1', 4)
  d2 = Dog.new('friend2', 5)
  d3 = Dog.new('friend3', 6)

    p all_paths([[d, d1], [d1, d2], [d, d2], [d2, d3]], d, d3)
    puts all_paths([[d, d1], [d1, d2], [d, d2], [d2, d3]], d, d3).count
