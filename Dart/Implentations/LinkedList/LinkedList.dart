import 'dart:io';

class Node {
  int? data;
  Node? next;
}

Node? head = null;

Node createNode(int data) {
  Node? newNode = new Node();
  newNode.data = data;
  return newNode;
}

void addNode(int data) {
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
}

int printData() {
  if (head == null) {
    print("Linked lis empty");
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

void main() {
  int x = 5;
  while (x > 0) {
    print("Enter data :");
    addNode(int.parse(stdin.readLineSync()!));
    x--;
  }
  printData();
}
