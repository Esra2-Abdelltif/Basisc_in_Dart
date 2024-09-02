/// Question

// Suppose you are developing a to-do list application.
// Your goal is to allow users to add and remove tasks from the list,and to display the tasks to the user.
// How would you go about implementing this functionality

//***************
// LinkedList
//كل element عباره عن حاجتين Pointer و Item
//Pointer عموما هو بيشوار ع عنصر الي واقف عليه
//داخل Pointer محفوظ فيه address تبع الItem الي بعده معني كدا ان كل عنصر مبربوط بالعنصر الي بعده
//و اخر عنصر ال Pointer =null
//بنسمي Node <=(Item,Pointer)
//Head <= Linked List بدايه ال


class Task{
  int id;
  String text;
  Task({required this.id,required this.text});
}

class Node{
  Task task;
  Node? nextNode;

  Node({required this.task, this.nextNode});
}

void insertTaskToLinkedList(Node head,Task newTask){
  Node pointer=head;
  while(pointer.nextNode !=null){
    pointer=pointer.nextNode!;
  }
  pointer.nextNode=Node(task: newTask);
}



void printLinkedList(Node head){
  Node? pointer=head;
  while(pointer !=null){
    print(pointer.task.text);
    pointer=pointer.nextNode;
  }
}


void main(List<String> arguments) {
Node head=Node(task:Task(id: 1, text: "task1"));
insertTaskToLinkedList(head, Task(id: 2, text: "New task"));
 printLinkedList(head);


}
