enum CityEnum {
  city1("City 1"),
  city2("City 2"),
  city3("City 3");

  final String name;

  const CityEnum(this.name);
}

List<String> cityNames = CityEnum.values.map((city) => city.name).toList();