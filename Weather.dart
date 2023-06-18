void main() {
  num temperature = 42;

  if (temperature < 0) {
    print("Freezing Weather");
  }
  else if (temperature > 0 && temperature <= 10) {
    print("Very Cold Weather");
  }
  else if (temperature > 10 && temperature <= 20) {
    print("Cold Weather");
  }
  else if (temperature > 20 && temperature <= 30) {
    print("Weather is Normal");
  }
  else if (temperature > 30 && temperature <= 40) {
    print("Weather is Hot");
  } else {
    print("Weather is Very Hot");
  }
}
