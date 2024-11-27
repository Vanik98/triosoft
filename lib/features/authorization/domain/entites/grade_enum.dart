enum GradeEnum {
  grade1('Grade 1'),
  grade2('Grade 2');

  final String name;

  const GradeEnum(this.name);
}

List<String> gradeNames = GradeEnum.values.map((grade) => grade.name).toList();