import 'dart:io';

import 'MultipleLinkedList.dart';

Node? merge(Node? linkedList1, Node? linkedList2) {
  Node? linkedList3 = linkedList1;
  Node? temp3 = linkedList3;
  Node? container1 = linkedList1?.next;
  Node? container2 = linkedList2?.next;
  temp3?.next = linkedList2;
  temp3 = temp3?.next;
  while (temp3?.next != null) {
    temp3?.next = container1;
    container1 = container1?.next;
    temp3?.next?.next = container2;
    container2 = container2?.next;
    temp3 = temp3?.next?.next;

    if (container1 == null) {
      temp3?.next = container2;
      return linkedList3;
    } else if (container2 == null) {
      temp3?.next = container1;
      return linkedList3;
    }
  }

  return linkedList3;
}

void main() {
  print("In main");
  Node? linkedList1;
  Node? linkedList2;

  print("how many values do you want to add in linked list 1:");
  int x = int.parse(stdin.readLineSync()!);
  for (; x > 0; x--) {
    linkedList1 = addNode(linkedList1);
  }
  print("how many values do you want to add in linked list 2:");
  x = int.parse(stdin.readLineSync()!);
  for (; x > 0; x--) {
    linkedList2 = addNode(linkedList2);
  }

  printLL(linkedList1);
  printLL(linkedList2);

  Node? linkedList3 = merge(linkedList1, linkedList2);
  printLL(linkedList3);

  print("End main");
}
