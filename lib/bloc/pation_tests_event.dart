part of 'pation_tests_bloc.dart';

abstract class PationTestsEvent extends Equatable {
  const PationTestsEvent();

  @override
  List<Object> get props => [];
}

class AddOrRemoveSymptomeToTest extends PationTestsEvent {
  final SymptomModel model;

  const AddOrRemoveSymptomeToTest({required this.model});
  @override
  List<Object> get props => [model];
}

class GetResult extends PationTestsEvent {}
