class Todo {
  int? id;
  String title;
  bool isCompleted;

  Todo({
    this.id,
    required this.title,
    this.isCompleted = false,
  });

// Save data to database
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'isCompleted': isCompleted ? 1 : 0,
    };
  }

// read data from database
  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'],
      title: map['title'],
      isCompleted: map['isCompleted'] == 1,
    );
  }
}