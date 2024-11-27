import 'package:triosoft/generated/locale_keys.g.dart';

enum SchoolEnum{
  n100('100'),
  n103('103');

  final String name;

  const SchoolEnum(this.name);
}

List<String> schoolNames = SchoolEnum.values.map((school) => school.name).toList();