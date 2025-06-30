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

