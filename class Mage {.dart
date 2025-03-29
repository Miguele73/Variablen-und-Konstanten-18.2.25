// Klasse Mage erstellen
class Mage {
  // Eigenschaften
  String name;
  int _mana;
  // Konstruktor
  Mage(this.name, this._mana);

  // Getter und Setter für Mana
  // Getter für Mana
  int get mana => _mana;
  // Setter für Mana
  set mana(int newMana) {
    // Mana-Wert begrenzen
    _mana = newMana.clamp(0, 100);
  }

  // Methoden
  // Methode zum Zaubern eines Zaubers
  int castSpell(Mage target) {
    // Überprüfen, ob genug Mana vorhanden ist
    if (_mana >= 20) {
      // Mana abziehen und Zauber ausführen
      _mana -= 20;
      // Heilung durchführen
      int healAmount = 10;
      // Mana des Ziels erhöhen
      target.mana += healAmount;
      return healAmount;
    } else {
      print("$name hat nicht genug mana.");
      return 0;
    }
  }

  // Methode zur Anzeige der Informationen
  void displayInfo() {
    print("$name hat $_mana mana.");
  }
}

void main() {
  Mage mage1 = Mage("Gandalf", 50);
  Mage mage2 = Mage("Saruman", 30);

  mage1.displayInfo();
  mage2.displayInfo();

  int healedAmount = mage1.castSpell(mage2);
  if (healedAmount > 0) {
    print(
      "${mage1.name} hat ${mage2.name} geheilt und $healedAmount mana übertragen.",
    );
  }

  mage1.displayInfo();
  mage2.displayInfo();
}
