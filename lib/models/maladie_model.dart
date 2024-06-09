class MaladieModle {
  final String maladieName;

  MaladieModle({required this.maladieName});
}

MaladieModle majorDepressiveDisorder =
    MaladieModle(maladieName: "Major Depressive Disorder");

MaladieModle generalizedAnxietyDisorder =
    MaladieModle(maladieName: "Generalized Anxiety Disorder");

MaladieModle bipolarDisorder = MaladieModle(maladieName: "Bipolar Disorder");

MaladieModle schizophrenia = MaladieModle(maladieName: 'Schizophrenia');

MaladieModle obsessiveCompulsiveDisorder =
    MaladieModle(maladieName: "Obsessive-Compulsive Disorder");

List<MaladieModle> maladies = [
  majorDepressiveDisorder,
  generalizedAnxietyDisorder,
  bipolarDisorder,
  schizophrenia,
  obsessiveCompulsiveDisorder
];
