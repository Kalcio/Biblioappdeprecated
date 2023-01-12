import 'package:biblioapp/db_helper/database_connection.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  late DatabaseConnection _databaseConnection;
  Repository() {
    _databaseConnection = DatabaseConnection();
  }

  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _databaseConnection.setDatabase();
      return _database;
    }
  }

  // Insert Book
  inserData(table, data) async {
    var connection = await database;
    return await connection?.insert(table, data);
  }

  // Read all data
  readData(table) async {
    var connection = await database;
    return await connection?.query(table);
  }

  // Read a Single Record By ID
  readDataById(table, itemID) async {
    var connection = await database;
    return await connection?.query(table, where: 'id=?', whereArgs: [itemID]);
  }

  // Update Book
  updateData(table, data) async {
    var connection = await database;
    return await connection
        ?.update(table, data, where: 'id=?', whereArgs: [data['id']]);
  }

  // Delete Book
  deleteDataByID(table, itemID) async {
    var connection = await database;
    return await connection?.rawDelete("delete from $table where id?$itemID");
  }
}
