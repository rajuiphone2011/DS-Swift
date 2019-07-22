import UIKit



/*
 
 Print the leaf nodes of the binary tree.
 
 For example, Given is the binary tree which contains a node with value, left node and right node. We need to print the array of child nodes which doesn't have any child nodes
 
 Input:
                  6
                /    \
               3      4
              /      / \
             2      5   7
            / \          \
           8   1          9
 
 Output: [8, 1, 5, 9]
*/

class Node {
    var value = 0
    var leftNode :Node?
    var rightNode :Node?
    
    init(value: Int) {
        self.value = value
    }
}

let n1 = Node(value: 1)
let n2 = Node(value: 2)
let n3 = Node(value: 3)
let n4 = Node(value: 4)
let n5 = Node(value: 5)
let n6 = Node(value: 6)
let n7 = Node(value: 7)
let n8 = Node(value: 8)
let n9 = Node(value: 9)

n6.leftNode = n3
n6.rightNode = n4

n3.leftNode = n2

n2.leftNode = n8
n2.rightNode = n1

n4.leftNode = n5
n4.rightNode = n7

n7.rightNode = n9

func getLeafNodesArray(node: Node?) -> [Int]?
{
    if let node = node {
        if (node.leftNode == nil) && (node.rightNode == nil) {
            return [node.value]
        }
        
        return (getLeafNodesArray(node: node.leftNode) ?? []) + (getLeafNodesArray(node: node.rightNode) ?? [])
    }
    return nil
}

print(getLeafNodesArray(node: n6) ?? "No node is available")

