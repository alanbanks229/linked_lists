class Node { 
    // constructor 
    constructor(element) 
    { 
        this.element = element; 
        this.next = null;
    } 
} 

// linkedlist class 
class LinkedList { 
    constructor() 
    { 
        //remember this.head is top of linkedlist
        this.head = null; 
        this.size = 0; 
    } 
  
    //Adds an element at the end of list
    add(element){

        // creates a new node
        var node = new Node(element);

        // var to store current node
        var current;

        // if list is empty add the
        // element and make it head
        if (this.head == null){
            this.head = node
        } else {
            current = this.head

            //iterate to end of list
            while (current.next){
                current = current.next;
            }

            // add node
            current.next = node;
        }
        this.size++;
    }
    
    // Inserts element at specific index
    insertAt(element, index){
        // fail safe to prevent adding element where
        // specified index is greater than size of list
        if (index > 0 && index > this.size){
            return false;
        } 
        else {
            // creates a new node
            var node = new Node(element)
            var curr, prev;

            //whatever list head is at this moment
            curr = this.head;

            // add the element to the first index
            if (index == 0){

                //create pointer to next node which is null
                node.next = null;

                //head of node is specified element
                this.head = node;

            } else {
                
                curr = this.head;
                var iterate = 0;

                // iterate over list to find
                // the position to insert

                while (iterate < index){
                    iterate++;
                    prev = curr;
                    curr = curr.next;
                }
                // adding an element
                node.next = curr;
                prev.next = node;
            }
            this.size++;
        }
    }

    // removeFrom(location) 
    removeFrom(index) 
    { 
        if (index > 0 && index > this.size) 
            return -1; 
        else { 
            var curr, prev, it = 0; 
            curr = this.head; 
            prev = curr; 
    
            // deleting first element 
            if (index === 0) { 
                this.head = curr.next; 
            } else { 
                // iterate over the list to the 
                // position to removce an element 
                while (it < index) { 
                    it++; 
                    prev = curr; 
                    curr = curr.next; 
                } 
    
                // remove the element 
                prev.next = curr.next; 
            } 
            this.size--; 
    
            // return the remove element 
            return curr.element; 
        } 
    } 

    // removeElement(element) 
    removeElement(element) 
    { 
        var current = this.head; 
        var prev = null; 
      
        // iterate over the list 
        while (current != null) { 
            // comparing element with current 
            // element if found then remove the 
            // and return true 
            if (current.element === element) { 
                if (prev == null) { 
                    this.head = current.next; 
                } else { 
                    prev.next = current.next; 
                } 
                this.size--; 
                return current.element; 
            } 
            prev = current; 
            current = current.next; 
        } 
        return -1; 
    }


    // Helper Methods 
    // checks the list for empty 
    isEmpty() 
    { 
        return this.size == 0; 
    }


    // gives the size of the list 
    size_of_list() 
    { 
        console.log(this.size); 
    } 
    // PrintList 
    printList() 
    { 
        var curr = this.head; 
        var str = ""; 
        while (curr) { 
            str += curr.element + " "; 
            curr = curr.next; 
        } 
        console.log(str); 
    }
}

var ll = new LinkedList(); 
  
// testing isEmpty on an empty list 
// returns true 
console.log(ll.isEmpty()); 