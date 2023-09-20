class ToDo {
  final String title;
  final int id;
  final int userId;
  final bool completed;

  ToDo(
      {required this.title,
      required this.id,
      required this.userId,
      required this.completed});

  factory ToDo.fromJson(Map json) {
    return ToDo(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        completed: json['completed']);
  }

  Map toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }
}
