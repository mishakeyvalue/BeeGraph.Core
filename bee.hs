import Data.List

data Node = Node { nodeId :: Int, nodeBody :: String, nodeEdges :: [Edge] } deriving (Show)

data Edge = Edge {edgeId :: Int, edgeBody :: String, edgeNodeId :: Int } deriving (Show)

data Graph = Graph { nodes :: [Node] } deriving (Show)

testNodes = [
        Node { nodeId = 0, nodeBody = "Home", nodeEdges = [
                    Edge { edgeId = 0, edgeBody = "Show help", edgeNodeId = 2},
                    Edge { edgeId = 1, edgeBody = "Tell me a joke, please!", edgeNodeId = 1}
                ]},
        Node { nodeId = 1, nodeBody = "Joke", nodeEdges = [
                    Edge {edgeId = 2, edgeBody = "Go home", edgeNodeId = 0}, 
                    Edge {edgeId = 3, edgeBody = "Tell me another joke!", edgeNodeId = 1}
                ]},

        Node { nodeId = 2, nodeBody = "Help", nodeEdges = [
            Edge {edgeId = 2, edgeBody = "Go home", edgeNodeId = 0}, 
            Edge {edgeId = 3, edgeBody = "Tell me another joke!", edgeNodeId = 1}
        ]}
    ]

testGraph = Graph { nodes = testNodes }

dialog graph nodeId' userResponse = 
    let findNode = find (\n -> (nodeId n) == nodeId')
        findEdge = find (\e -> edgeBody e == userResponse)
        currentNode = findNode $ nodes graph
        edges = fmap nodeEdges currentNode                
    in  edges >>= findEdge
    