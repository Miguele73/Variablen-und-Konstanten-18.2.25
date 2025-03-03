void main() {
  int ageOfSpectator = 15;
  bool hasParentalConsent = true;
  int movieAgeRating = 16;

  if ((ageOfSpectator >= 16 || hasParentalConsent) && (movieAgeRating >= 16)) {
    print('Zusehen erlaubt');
  } else {
    print('Zusehen verweigert');
  }
}

void main() {
  int ageOfSpectator = 13;
  bool hasParentalConsent = false;
  int movieAgeRating = 16;

  if ((ageOfSpectator >= 16 || hasParentalConsent) && movieAgeRating >= 16) {
    print('Zusehen erlaubt');
  } else {
    print('Zusehen verweigert');
  }
}
