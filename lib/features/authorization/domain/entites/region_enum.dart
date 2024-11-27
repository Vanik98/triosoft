enum RegionEnum {
  region1('Region 1'),
  region2('Region 2');

  final String name;

  const RegionEnum(this.name);
}

List<String> regionNames = RegionEnum.values.map((region) => region.name).toList();