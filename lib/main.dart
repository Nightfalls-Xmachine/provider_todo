import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_todo_list/constants/colors.dart';
import 'package:provider_todo_list/provider/AuthProvider/auth_provider.dart';
import 'package:provider_todo_list/provider/TaskProvider/add_task_provider.dart';
import 'package:provider_todo_list/provider/TaskProvider/delete_task_provider.dart';
import 'package:provider_todo_list/provider/TaskProvider/get_task_service.dart';
import 'package:provider_todo_list/provider/database/db_provider.dart';
import 'package:provider_todo_list/screens/TaskPage/homePage.dart';
import 'package:provider_todo_list/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) =>  DatabaseProvider()),
        ChangeNotifierProvider(create: (_) => AddTaskProvider()),
        ChangeNotifierProvider(create: (_) => DeleteTaskProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: primaryColor,
          ),
          primaryColor: primaryColor,
        ),
        home: const  HomePage(),
      ),
    );
  }
}

