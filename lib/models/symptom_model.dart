import 'package:equatable/equatable.dart';
import 'package:psycho/models/maladie_model.dart';

// ignore: must_be_immutable
class SymptomModel extends Equatable {
  final String symptomName;
  final MaladieModle modle;
  bool isSelected;
  SymptomModel(
      {required this.symptomName,
      required this.modle,
      required this.isSelected});

  @override
  List<Object?> get props => [symptomName, modle, isSelected];

  SymptomModel copyWith(
      {String? symptomName, bool? isSelected, MaladieModle? modle}) {
    return SymptomModel(
      symptomName: symptomName ?? this.symptomName,
      isSelected: isSelected ?? this.isSelected,
      modle: modle ?? this.modle,
    );
  }
}

SymptomModel constantsadness = SymptomModel(
    isSelected: false,
    symptomName: 'Feeling sad most of the time.',
    modle: majorDepressiveDisorder);
SymptomModel lossofinterest = SymptomModel(
    isSelected: false,
    symptomName: "Loss of interest or pleasure in daily activities.",
    modle: majorDepressiveDisorder);
SymptomModel fatigueandlossofenergy = SymptomModel(
    isSelected: false,
    symptomName: 'Feeling constantly tired and losing energy.',
    modle: majorDepressiveDisorder);
SymptomModel sleepproblems = SymptomModel(
    isSelected: false,
    symptomName: "Insomnia or excessive sleeping.",
    modle: majorDepressiveDisorder);
SymptomModel changesinweightandappetite = SymptomModel(
    isSelected: false,
    symptomName: 'Unexplained weight loss or gain.',
    modle: majorDepressiveDisorder);

SymptomModel excessiveworry = SymptomModel(
    isSelected: false,
    symptomName: 'Excessive worry about everyday things.',
    modle: generalizedAnxietyDisorder);
SymptomModel restlessness = SymptomModel(
    isSelected: false,
    symptomName: 'Feeling restless or on edge.',
    modle: generalizedAnxietyDisorder);
SymptomModel concentrationproblems = SymptomModel(
    isSelected: false,
    symptomName: 'Difficulty concentrating or having your mind go blank.',
    modle: generalizedAnxietyDisorder);
SymptomModel muscleTension = SymptomModel(
    isSelected: false,
    symptomName: 'Muscle tension or physical discomfort.',
    modle: generalizedAnxietyDisorder);
SymptomModel sleepDisturbances = SymptomModel(
    isSelected: false,
    symptomName:
        'Problems with sleep, such as difficulty falling or staying asleep.',
    modle: generalizedAnxietyDisorder);

SymptomModel manicEpisodes = SymptomModel(
    isSelected: false,
    symptomName: 'Periods of extremely elevated mood and energy.',
    modle: bipolarDisorder);
SymptomModel depressiveEpisodes = SymptomModel(
    isSelected: false,
    symptomName: 'Periods of very low mood and energy.',
    modle: bipolarDisorder);
SymptomModel moodSwings = SymptomModel(
    isSelected: false,
    symptomName: 'Rapid changes in mood.',
    modle: bipolarDisorder);
SymptomModel irritability = SymptomModel(
    isSelected: false,
    symptomName:
        'Irritability or agitation during manic or depressive episodes.',
    modle: bipolarDisorder);
SymptomModel impulsivity = SymptomModel(
    isSelected: false,
    symptomName: 'Impulsive or reckless behavior during manic episodes.',
    modle: bipolarDisorder);

SymptomModel hallucinations = SymptomModel(
    isSelected: false,
    symptomName: 'Experiencing things that are not there, like hearing voices.',
    modle: schizophrenia);
SymptomModel delusions = SymptomModel(
    isSelected: false,
    symptomName: 'Strong beliefs in things that are not true.',
    modle: schizophrenia);
SymptomModel disorganizedThinking = SymptomModel(
    isSelected: false,
    symptomName: 'Disorganized or incoherent thinking and speech.',
    modle: schizophrenia);
SymptomModel socialWithdrawal = SymptomModel(
    isSelected: false,
    symptomName: 'Withdrawal from social activities and relationships.',
    modle: schizophrenia);
SymptomModel abnormalBehavior = SymptomModel(
    isSelected: false,
    symptomName: 'Unpredictable or inappropriate behavior.',
    modle: schizophrenia);

SymptomModel obsessions = SymptomModel(
    isSelected: false,
    symptomName:
        'Recurrent, persistent thoughts that are intrusive and unwanted.',
    modle: obsessiveCompulsiveDisorder);
SymptomModel compulsions = SymptomModel(
    isSelected: false,
    symptomName:
        'Repetitive behaviors or mental acts that a person feels driven to perform.',
    modle: obsessiveCompulsiveDisorder);
SymptomModel fearOfContamination = SymptomModel(
    isSelected: false,
    symptomName: 'Fear of contamination or germs.',
    modle: obsessiveCompulsiveDisorder);
SymptomModel checkingBehavior = SymptomModel(
    isSelected: false,
    symptomName: 'Repeatedly checking things like locks or appliances.',
    modle: obsessiveCompulsiveDisorder);
SymptomModel ordering = SymptomModel(
    isSelected: false,
    symptomName: 'Need to arrange things in a specific, orderly way.',
    modle: obsessiveCompulsiveDisorder);

List<SymptomModel> symptoms = [
  constantsadness,
  lossofinterest,
  fatigueandlossofenergy,
  sleepproblems,
  changesinweightandappetite,
  excessiveworry,
  restlessness,
  concentrationproblems,
  muscleTension,
  sleepDisturbances,
  manicEpisodes,
  depressiveEpisodes,
  moodSwings,
  irritability,
  impulsivity,
  hallucinations,
  delusions,
  disorganizedThinking,
  socialWithdrawal,
  abnormalBehavior,
  obsessions,
  compulsions,
  fearOfContamination,
  checkingBehavior,
  ordering,
];
