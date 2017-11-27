module Core where

import Data.List

data Node = Node { nodeId :: Int, nodeBody :: String, nodeEdges :: [Edge] } deriving (Read, Show)

data Edge = Edge {edgeId :: Int, edgeBody :: String, edgeKeys :: [String], edgeNodeId :: Int } deriving (Read, Show)

data Graph = Graph { nodes :: [Node] } deriving (Read, Show)

dialog graph nodeId' userResponse = 
    let findNode = find (\n -> (nodeId n) == nodeId')
        findEdge = find (\e -> containsKey $ edgeKeys e)
        containsKey = elem userResponse
        currentNode = findNode $ nodes graph
        edges = fmap nodeEdges currentNode             
    in  edges >>= findEdge
    