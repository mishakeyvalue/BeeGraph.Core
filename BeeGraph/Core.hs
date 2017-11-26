module Core (
    Node(..),
    Edge(..),
    Graph(..),
    dialog
) where

import Data.List

data Node = Node { nodeId :: Int, nodeBody :: String, nodeEdges :: [Edge] } deriving (Show)

data Edge = Edge {edgeId :: Int, edgeBody :: String, edgeNodeId :: Int } deriving (Show)

data Graph = Graph { nodes :: [Node] } deriving (Show)

dialog graph nodeId' userResponse = 
    let findNode = find (\n -> (nodeId n) == nodeId')
        findEdge = find (\e -> edgeBody e == userResponse)
        currentNode = findNode $ nodes graph
        edges = fmap nodeEdges currentNode                
    in  edges >>= findEdge
    