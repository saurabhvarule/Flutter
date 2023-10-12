// Linked List Implementaion in dart :

import 'dart:io';

class Node {
  int? data;
  Node? next;
}

// head pointer :
Node? head = null;

// node count :
int count = 0;

// 1.function createNode() :
Node? createNode(int data) {
  Node? newNode = new Node();
  newNode.data = data;
  count++;
  return newNode;
}
// 2. function addNode() :
int addNode(int data) {
  Node? newNode = createNode(data);
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
  return 0;
}
// 3.function printData() :
int printData() {
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
int addFirst(int data) {
  Node? newNode = createNode(data);
  if (head == null) {
    head = newNode;
  } else {
    newNode?.next = head;
    head = newNode;
  }
  print("Added Successfully");

  return 0;
}

//5. function addLast() :
int addLast(int data) {
  addNode(data);
  return 0;
}

// 6.function addAtPosition() :
int addAtPosition(int pos, int data) {
  if (pos <= 0 || pos > count + 1) {
    print("Invalid Position");
    return -1;
  } else {
    if (pos == 1) {
      addFirst(data);
    } else if (pos == count + 1) {
      addLast(data);
    } else {
      Node? newNode = createNode(data);
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
  return 0;
}

// 7.function deleteFirst() :
int deleteFirst() {
  if (head == null) {
    print("Linked List Epty!!");
    return -1;
  }
  head = head?.next;
  count--;
  print("Deleted Successfully");
  return 0;
}

// 8.deleteLast function() :
int deleteLast() {
  Node? temp = head;
  if (head == null) {
    print("Linked List Empty");
    return -1;
  }
  while (temp?.next?.next != null) {
    temp = temp?.next;
  }
  temp?.next = null;
  print("Deleted Successfully");
  count--;
  return 0;
}

// 9.delete at position ():
int deleteAtPos(int pos) {
  if (pos <= 0 || pos > count) {
    print("Invlalid Position");
    return -1;
  } else {
    if (pos == 1) {
      // if position equal to then we are directly calling deleteFirst function which is alreay written
      deleteFirst();
    } else if (pos == count) {
      // if posion is euqal to node count then we are directly calling deleteLast function which is already written
      deleteLast();
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
  return 0;
}

//Main function :
void main() {
  int x = 3;
  while (x > 0) {
    print("Enter data :");
    addNode(int.parse(stdin.readLineSync()!)); // call to addNode function
    x--;
  }
  // call to addFirst function :
  printData(); // printData is a function which prints data of each node :
  addFirst(100);
  printData();

  // call to addLast function :
  addLast(200);
  printData();

  // call to add at postion function :
  addAtPosition(3, 100);
  printData();

  // call to deletefirst fumction :
  deleteFirst();
  printData();

  // call to deleteLast function :
  deleteLast();
  printData();

  // call to delete at position function :
  deleteAtPos(2);
  printData();
}

// The above code explains how linked list is being created.
// we have successfully implemented all neccessary funtin of linked list in dart programming.