import 'package:biblioapp/models/books_model.dart';
import 'package:biblioapp/utils/db_helper.dart';

class DBService {
  // List of books
  Future<List<BookModel>> getBooks() async {
    await DBHelper.init();

    List<Map<String, dynamic>> books = await DBHelper.query(BookModel.table);

    return books.map((item) => BookModel.fromMap(item)).toList();
  }

  // Add a book
  Future<bool> addBook(BookModel model) async {
    await DBHelper.init();

    int ret = await DBHelper.insert(BookModel.table, model);

    return ret > 0 ? true : false;
  }

  // Update a book
  Future<bool> updateBook(BookModel model) async {
    await DBHelper.init();

    int ret = await DBHelper.update(BookModel.table, model);

    return ret > 0 ? true : false;
  }

  // Delete a book
  Future<bool> deleteBook(BookModel model) async {
    await DBHelper.init();

    int ret = await DBHelper.delete(BookModel.table, model);

    return ret > 0 ? true : false;
  }
}
