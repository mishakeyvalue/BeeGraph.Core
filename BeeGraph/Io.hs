module IO () where

import Core

testNodes = [
        Node { nodeId = 0, nodeBody = "Home", nodeEdges = [
                    Edge { edgeId = 0, edgeBody = "Show help", edgeKeys = ["1", "help"], edgeNodeId = 2},
                    Edge { edgeId = 1, edgeBody = "Tell me a joke, please!", edgeKeys = ["2", "joke"], edgeNodeId = 1}
                ]},
        Node { nodeId = 1, nodeBody = "Joke", nodeEdges = [
                    Edge {edgeId = 2, edgeBody = "Go home", edgeKeys = ["0", "home"], edgeNodeId = 0}, 
                    Edge {edgeId = 3, edgeBody = "Tell me another joke!", edgeKeys = ["2", "joke"], edgeNodeId = 1}
                ]},

        Node { nodeId = 2, nodeBody = "Help", nodeEdges = [
            Edge {edgeId = 2, edgeBody = "Go home", edgeKeys = ["0", "home"], edgeNodeId = 0}, 
            Edge {edgeId = 3, edgeBody = "Tell me another joke!", edgeKeys = ["2", "joke"], edgeNodeId = 1}
        ]}
    ]

testGraph = Graph { nodes = testNodes }