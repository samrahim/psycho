import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psycho/bloc/pation_tests_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "What do you sufer from",
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              ),
              BlocConsumer<PationTestsBloc, PationTestsState>(
                  listener: (context, state) {
                if (state is TestResult) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ResultScreen(
                                maladieName: state.result ?? "nothing",
                              )));
                }
              }, builder: (context, state) {
                if (state is PationTestsInitial) {
                  return Column(
                    children: state.symptoms
                        .map((symptom) => InkWell(
                              onTap: () {
                                BlocProvider.of<PationTestsBloc>(context).add(
                                    AddOrRemoveSymptomeToTest(model: symptom));
                              },
                              child: Container(
                                margin: const EdgeInsets.all(12),
                                padding: const EdgeInsets.all(6),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30)),
                                  color: Colors.white,
                                ),
                                height: 32,
                                width: MediaQuery.of(context).size.width - 20,
                                child: Center(child: Text(symptom.symptomName)),
                              ),
                            ))
                        .toList(),
                  );
                }
                if (state is SymptomsChanged) {
                  return Column(
                    children: state.symptoms
                        .map((symptom) => InkWell(
                              onTap: () {
                                BlocProvider.of<PationTestsBloc>(context).add(
                                    AddOrRemoveSymptomeToTest(model: symptom));
                              },
                              child: Container(
                                margin: const EdgeInsets.all(12),
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30)),
                                  color: symptom.isSelected
                                      ? (Colors.tealAccent)
                                      : Colors.white,
                                ),
                                height: 32,
                                width: MediaQuery.of(context).size.width - 20,
                                child: Center(child: Text(symptom.symptomName)),
                              ),
                            ))
                        .toList(),
                  );
                }
                return const SizedBox();
              }),
              ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<PationTestsBloc>(context).add(GetResult());
                  },
                  child: const Text(
                    "Get Result",
                    style: TextStyle(color: Colors.teal),
                  )),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultScreen extends StatefulWidget {
  final String maladieName;
  const ResultScreen({super.key, required this.maladieName});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            widget.maladieName,
            style: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
          )),
          const SizedBox(height: 36),
          Center(
            child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Try again",
                  style: TextStyle(color: Colors.teal),
                )),
          )
        ],
      ),
    );
  }
}
