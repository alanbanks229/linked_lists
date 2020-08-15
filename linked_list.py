class Node:
    def __init__(self, int_value):
        self.value = int_value
        self.next = None

class LinkedList:

    def __init__(self, value):
        self.head = Node(value)

    def append(self, value):
        current = self.head
        while current.next is not None:
            current = current.next
        current.next = Node(value)

    
    def print_list(self):
        current = self.head
        while current:
            print(current, "\nvalue: ", current.value, "\nnext: ", current.next, "\n")
            current = current.next
        


linkedlist1 = LinkedList(2)
linkedlist1.append(3)
linkedlist1.append(5)
linkedlist1.print_list()
# linkedlist1.append(3)
# linkedlist1.print_list()