module IO () where

import Core

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