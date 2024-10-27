main() {
  Database db1 = Database.instance;
  print(db1.name);
  db1.name = "Dart Course";
  Database db2 = Database.instance;
  print(db2.name);

}

//class Database {
//  String name = "Esraa";
//  static final Database _db = Database._();
//
//  static Database get instance => _db;
//
//  Database._();
//}

class Database {
  String name = "Esraa";

  static Database? db;

  static Database get instance {
    if (db == null) {
      db = Database._();
    }
    return db!;
  }

  Database._();
}