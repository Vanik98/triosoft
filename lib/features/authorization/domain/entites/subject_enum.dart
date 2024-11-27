enum SubjectEnum {
  subject1('subject 1'),
  subject2('subject 1'),
  subject3('subject 1'),
  subject4('subject 1'),
  subject5('subject 1'),
  subject6('subject 1'),
  subject7('subject 1'),
  subject8('subject 2');

  final String name;

  const SubjectEnum(this.name);
}

List<String> subjectNames = SubjectEnum.values.map((subject) => subject.name).toList();