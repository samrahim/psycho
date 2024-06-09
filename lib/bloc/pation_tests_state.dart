part of 'pation_tests_bloc.dart';

abstract class PationTestsState extends Equatable {
  final List<SymptomModel> symptoms;
  const PationTestsState({required this.symptoms});

  @override
  List<Object> get props => [symptoms];
}

class PationTestsInitial extends PationTestsState {
  @override
  final List<SymptomModel> symptoms;

  const PationTestsInitial({required this.symptoms})
      : super(symptoms: symptoms);
  @override
  List<Object> get props => [symptoms];
}

class SymptomsChanged extends PationTestsState {
  @override
  final List<SymptomModel> symptoms;

  const SymptomsChanged({required this.symptoms}) : super(symptoms: symptoms);
  @override
  List<Object> get props => [symptoms];
}

class TestResult extends PationTestsState {
  final String? result;
  const TestResult({required super.symptoms, required this.result});
  @override
  List<Object> get props => [result ?? ""];
}
