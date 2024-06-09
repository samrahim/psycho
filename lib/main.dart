import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psycho/bloc/pation_tests_bloc.dart';
import 'package:psycho/screens/home_screen.dart';
import 'package:psycho/test_func.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<TestExam>(
      create: (_) => TestExam(),
      child: BlocProvider(
        create: (context) =>
            PationTestsBloc(exam: RepositoryProvider.of<TestExam>(context)),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ),
      ),
    );
  }
}
