import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psycho/models/symptom_model.dart';
import 'package:psycho/test_func.dart';

part 'pation_tests_event.dart';
part 'pation_tests_state.dart';

class PationTestsBloc extends Bloc<PationTestsEvent, PationTestsState> {
  final TestExam exam;

  PationTestsBloc({
    required this.exam,
  }) : super(PationTestsInitial(symptoms: symptoms)) {
    on<AddOrRemoveSymptomeToTest>((event, emit) {
      print(event.model.symptomName);

      List<SymptomModel> updatedSymptoms =
          List.from(state.symptoms.map((symptom) {
        if (symptom.symptomName == event.model.symptomName) {
          if (event.model.isSelected) {
            exam.removeScore(symptom);
          } else {
            exam.addScore(symptom);
          }
          return symptom.copyWith(isSelected: !symptom.isSelected);
        }
        return symptom;
      }));

      emit(SymptomsChanged(symptoms: updatedSymptoms));
    });
    on<GetResult>((event, emit) {
      print(exam.result());
      print(exam.majorScore);
      print(exam.generalizedScore);
      print(exam.bipolarScore);
      print(exam.schizophreniaScore);
      print(exam.obsessiveScore);

      emit(TestResult(result: exam.result(), symptoms: const []));
    });
  }
}
