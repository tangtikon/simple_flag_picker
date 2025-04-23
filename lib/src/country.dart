class Country {
  final String code;
  final String name;
  final String asset; // SVG file

  Country({required this.code, required this.name, required this.asset});
}

final List<Country> supportedCountries = [
  Country(code: 'us', name: 'United States', asset: 'assets/flags/us.svg'),
  Country(code: 'th', name: 'Thailand', asset: 'assets/flags/th.svg'),
  Country(code: 'jp', name: 'Japan', asset: 'assets/flags/jp.svg'),
];
