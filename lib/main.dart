import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:routine_app/collections/category.dart';
import 'package:routine_app/collections/routine.dart';

void main() async {
  final dir = await getApplicationSupportDirectory();
  final isar = await Isar.open(
    [RoutineSchema, CategorySchema],
    directory: dir.path,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
