enum SubjectEnum {
  subject1('subject 1'),
  subject2('subject 2'),
  subject3('subject 3'),
  subject4('subject 4'),
  subject5('subject 5'),
  subject6('subject 6'),
  subject7('subject 7'),
  subject8('subject 8');

  final String name;

  const SubjectEnum(this.name);
}

List<String> subjectNames = SubjectEnum.values.map((subject) => subject.name).toList();