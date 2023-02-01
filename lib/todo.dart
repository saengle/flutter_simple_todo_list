import 'package:hive/hive.dart';

part 'todo.g.dart';

//hive 가 알게끔 어노테이션
@HiveType(typeId: 0)
class Todo extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String title;
  @HiveField(2)
  int dateTime;
  @HiveField(3)
  bool isDone;

  Todo({
    required this.title,
    required this.dateTime,
    this.isDone = false,
  });
}

//Todo(title: '어쩌구', dateTime: 1231 );
