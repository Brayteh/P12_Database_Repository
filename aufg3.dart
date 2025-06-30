abstract class DatabaseRepository {
void createMedikament(Medikament medikament);
List<Medikament> readAllMedikamente();
void updateMedikament(String id, Medikament medikament);
void deleteMedikament(String id);
}

class Medikament {
    String id;
    String name;
    String dosis;
    DateTime zeit;
Medikament(this.id, this.name, this.dosis, this.zeit);
}

class MockDatabaseRepository implements DatabaseRepository {
  final List<Medikament> _medikamente = [];

  @override
  void createMedikament(Medikament medikament) {
    _medikamente.add(medikament);
    print("Medikament added: ${medikament.name}");
  }

  @override
  List<Medikament> readAllMedikamente() {
    return _medikamente;
  }

  @override
  void updateMedikament(String id, Medikament neuesMedikament) {
    for (int i = 0; i < _medikamente.length; i++) {
      if (_medikamente[i].id == id) {
        _medikamente[i] = neuesMedikament;
        print("Medikament mit ID $id wurde updated.");
        return;
      }
    }
    print("Medikament mit ID $id nicht gefunden.");
  }

  @override
  void deleteMedikament(String id) {
    _medikamente.removeWhere((med) => med.id == id);
    print("Medikament mit ID $id wurde gelöscht.");
  }
}