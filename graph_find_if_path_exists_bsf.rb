require "set"

def valid_path(n, edges, v_start, v_end)
    return true if n == 1
    # graph bidirectiional graph
    graph = Hash.new {}
    edges.each do |edge|
      if graph[edge[0]]
        graph[edge[0]] << edge[1]
      else
        graph[edge[0]] = Set.new([edge[1]])
      end
      if graph[edge[1]]
        graph[edge[1]] << edge[0]
      else
        graph[edge[1]] = Set.new([edge[0]])
      end
    end

    puts graph
    puts graph.size
    
    queue = [v_start]
    visited = {}
    while(!queue.empty?)
      ele = queue.pop
      unless visited[ele]
        visited[ele] = true
        graph[ele].each do |vertice|
          if visited[vertice].nil?
            return true if vertice == v_end
            queue << vertice
          end
        end
      end
    end
    return false
  end

  puts valid_path(3, [[0, 1], [1, 2], [2, 0]], 0, 2)
  puts valid_path(3, [[0, 1], [1, 2], [2, 0], [2 ,4], [4 ,6]], 0, 6)