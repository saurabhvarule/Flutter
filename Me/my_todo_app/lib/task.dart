// task.dart

class Task {
  final String title;
  bool isCompleted;

  Task({required this.title, this.isCompleted = false});

  void toggle() {
    isCompleted = !isCompleted;
  }
}
