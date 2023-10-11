// Linked List Implementaion in dart :

import 'dart:io';

class Node {
  int? data;
  Node? next;
}

// node count :
int count = 0;

// 1.function createNode() :
Node? createNode() {
  Node? newNode = new Node();
  print("Enter Data :");
  newNode.data = int.parse(stdin.readLineSync()!);
  count++;
  return newNode;
}

// 2. function addNode() :
Node? addNode(Node? head) {
  Node? newNode = createNode();
  if (head == null) {
    head = newNode;
  } else {
    Node? temp = head;
    while (temp?.next != null) {
      temp = temp?.next;
    }
    temp?.next = newNode;
  }
  print("Added Successfully");
  return head;
}

// 3.function printData() :
int printData(Node? head) {
  if (head == null) {
    print("Linked list empty");
    return -1;
  }
  Node? temp = head;
  while (temp?.next != null) {
    stdout.write("| ${temp?.data} |->");
    temp = temp?.next;
  }
  stdout.write("| ${temp?.data} |\n");
  return 0;
}

// 4. function addFirst() :
Node? addFirst(Node? head) {
  Node? newNode = createNode();
  if (head == null) {
    head = newNode;
  } else {
    newNode?.next = head;
    head = newNode;
  }
  print("Added Successfully");

  return head;
}

//5. function addLast() :
Node? addLast(Node? head) {
  head = addNode(head);
  return head;
}

// 6.function addAtPosition() :
Node? addAtPosition(Node? head, int pos) {
  if (pos <= 0 || pos > count + 1) {
    print("Invalid Position");
    return head;
  } else {
    if (pos == 1) {
      head = addFirst(head);
    } else if (pos == count + 1) {
      head = addLast(head);
    } else {
      Node? newNode = createNode();
      Node? temp = head;
      while (pos > 2) {
        temp = temp?.next;
        pos--;
      }
      newNode?.next = temp?.next;
      temp?.next = newNode;
      print("Added Successfully");
    }
  }
  return head;
}

// 7.function deleteFirst() :
Node? deleteFirst(Node? head) {
  if (head == null) {
    print("Linked List Epty!!");
    return head;
  }
  head = head.next;
  count--;
  print("Deleted Successfully");
  return head;
}

// 8.deleteLast function() :
Node? deleteLast(Node? head) {
  Node? temp = head;
  if (head == null) {
    print("Linked List Empty");
    return head;
  }
  while (temp?.next?.next != null) {
    temp = temp?.next;
  }
  temp?.next = null;
  print("Deleted Successfully");
  count--;
  return head;
}

// 9.delete at position ():
Node? deleteAtPos(Node? head, int pos) {
  if (pos <= 0 || pos > count) {
    print("Invlalid Position");
    return head; 
  } else {
    if (pos == 1) {
      // if position equal to then we are directly calling deleteFirst function which is alreay written
      head = deleteFirst(head);
    } else if (pos == count) {
      // if posion is euqal to node count then we are directly calling deleteLast function which is already written
      head = deleteLast(head);
    } else {
      // delete at postion code :
      Node? temp = head;
      while (pos > 2) {
        temp = temp?.next;
        pos--;
      }
      temp?.next = temp.next?.next;
      count--;
      print("Deleted Successfully");
    }
  }
  return head;
}

//Main function :
void main() {
  // linked list 1:
  Node? ll1 = null;
  int x = 3;
  while (x > 0) {
    ll1 = addNode(ll1); // call to addNode function
    x--;
  }
  x = 3;
  
  // linked list 2:
  Node? ll2 = null;
  while (x > 0) {
    ll2 = addNode(ll2); // call to addNode function
    x--;
  }
  stdout.write("Linked list 1:");
  printData(ll1);

  stdout.write("Linked list 2:");
  printData(ll1);
  ll1 = deleteLast(ll1);
  printData(ll1);

}
