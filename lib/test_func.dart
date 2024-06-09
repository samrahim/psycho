import 'package:psycho/models/symptom_model.dart';

class TestExam {
  int majorScore = 0;
  int generalizedScore = 0;
  int bipolarScore = 0;
  int schizophreniaScore = 0;
  int obsessiveScore = 0;
  addScore(SymptomModel model) {
    switch (model.modle.maladieName) {
      case "Major Depressive Disorder":
        majorScore = majorScore + 1;
        print("we are here $majorScore ");
      case "Generalized Anxiety Disorder":
        generalizedScore + 1;
      case "Bipolar Disorder":
        bipolarScore + 1;
      case "Schizophrenia":
        schizophreniaScore + 1;
      case "Obsessive-Compulsive Disorder":
        obsessiveScore + 1;
    }
  }

  removeScore(SymptomModel model) {
    switch (model.modle.maladieName) {
      case "Major Depressive Disorder":
        majorScore - 1;
      case "Generalized Anxiety Disorder":
        generalizedScore - 1;
      case "Bipolar Disorder":
        bipolarScore - 1;
      case "Schizophrenia":
        schizophreniaScore - 1;
      case "Obsessive-Compulsive Disorder":
        obsessiveScore - 1;
      default:
    }
  }

  String result() {
    int max = 0;
    String res = "";
    Map<String, int> mapresult = {
      "Major Depressive Disorder": majorScore,
      "Generalized Anxiety Disorder": generalizedScore,
      "Bipolar Disorder": bipolarScore,
      "Schizophrenia": schizophreniaScore,
      "Obsessive-Compulsive Disorder": obsessiveScore,
    };

    mapresult.forEach((key, value) {
      if (value > max) {
        res = key;
      }
    });
    return res;
  }
}
