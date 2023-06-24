import 'dart:core';

void main() {
  Map<String, Map<String, dynamic>> world = {
    'Pakistan': {
      'capitalCity': 'Islamabad',
      'currency': 'Pakistani Rupee',
      'language': 'Urdu',
    },
    'United States': {
      'capitalCity': 'Washington, D.C.',
      'currency': 'US Dollar',
      'language': 'English',
    },
    'France': {
      'capitalCity': 'Paris',
      'currency': 'Euro',
      'language': 'French',
    },
  };

  String countryKey = 'United States'; // Replace with any country key

  // Print capital city and currency of the specified country
  if (world.containsKey(countryKey)) {
    Map<String, dynamic> countryInfo = world[countryKey]!;
    String capitalCity = countryInfo['capitalCity'];
    String currency = countryInfo['currency'];
    print('Country: $countryKey');
    print('Capital City: $capitalCity');
    print('Currency: $currency');
  } else {
    print('Country not found.');
  }
}

