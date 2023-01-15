import 'package:biblioapp/models/model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

abstract class DBHelper {
  static Database? _db;

  static int get _version => 1;

  static Future<void> init() async {
    if (_db != null) {
      return;
    }

    try {
      var databasePath = await getDatabasesPath();
      String _path = p.join(databasePath, 'books.db');
      _db = await openDatabase(_path,
          version: _version, onCreate: onCreate, onUpgrade: onUpgrade);
    } catch (ex) {
      print(ex);
    }
  }

  static void onCreate(Database db, int version) async {
    String sqlQuery =
        'CREATE TABLE books (id INTEGER PRIMARY KEY AUTOINCREMENT, name STRING, autor STRING, editorial STRING, year INTEGER, isbn INTEGER, image STRING)';
    await db.execute(sqlQuery);
  }

  static void onUpgrade(Database db, int oldVersion, int version) async {
    if (oldVersion > version) {
      //
    }
  }

  static Future<List<Map<String, dynamic>>> query(String table) async {
    return _db!.query(table);
  }

  static Future<int> insert(String table, Model model) async {
    return await _db!.insert(table, model.toJson());
  }

  static Future<int> update(String table, Model model) async {
    return await _db!.update(
      table,
      model.toJson(),
      where: 'id = ?',
      whereArgs: [model.id],
    );
  }

  static Future<int> delete(String table, Model model) async {
    return await _db!.delete(
      table,
      where: 'id = ?',
      whereArgs: [model.id],
    );
  }
}
