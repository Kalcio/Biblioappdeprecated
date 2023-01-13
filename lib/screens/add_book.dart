import 'package:flutter/material.dart';

class AddBook extends StatefulWidget {
  const AddBook({super.key});

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  final _bookNameController = TextEditingController();
  final _bookAutorController = TextEditingController();
  final _bookEditorialController = TextEditingController();
  final _bookYearController = TextEditingController();
  final _bookISBNController = TextEditingController();
  bool _validateName = false;
  bool _validateAutor = false;
  bool _validateEditorial = false;
  bool _validateYear = false;
  bool _validateISBN = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Book"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Add New Book',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),

                // Input Name
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _bookNameController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: "Enter Name",
                    labelText: 'Name',
                    errorText: _validateName ? 'Value Ca\'t Be Empty' : null,
                  ),
                ),

                // Input Autor
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _bookAutorController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: "Enter Autor",
                    labelText: 'Autor',
                    errorText: _validateAutor ? 'Value Ca\'t Be Empty' : null,
                  ),
                ),

                // Input Editorial
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _bookEditorialController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: "Enter Editorial",
                    labelText: 'Editorial',
                    errorText:
                        _validateEditorial ? 'Value Ca\'t Be Empty' : null,
                  ),
                ),

                // Input Year
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _bookYearController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: "Enter Year",
                    labelText: 'Year',
                    errorText: _validateYear ? 'Value Ca\'t Be Empty' : null,
                  ),
                ),

                // Input ISBN
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _bookISBNController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: "Enter ISBN",
                    labelText: 'ISBN',
                    errorText: _validateISBN ? 'Value Ca\'t Be Empty' : null,
                  ),
                ),

                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          setState(() {
                            _bookNameController.text.isEmpty
                                ? _validateName = true
                                : _validateName = false;
                            _bookAutorController.text.isEmpty
                                ? _validateAutor = true
                                : _validateAutor = false;
                            _bookEditorialController.text.isEmpty
                                ? _validateEditorial = true
                                : _validateEditorial = false;
                            _bookYearController.text.isEmpty
                                ? _validateYear = true
                                : _validateYear = false;
                            _bookISBNController.text.isEmpty
                                ? _validateISBN = true
                                : _validateISBN = false;
                            if (_validateName == false &&
                                _validateAutor == false &&
                                _validateEditorial == false &&
                                _validateYear == false &&
                                _validateISBN == false) {
                              //print("Data can save");
                            }
                          });
                        },
                        child: const Text('Save Details')),
                    const SizedBox(
                      width: 10.0,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          _bookNameController.text = '';
                          _bookAutorController.text = '';
                          _bookEditorialController.text = '';
                          _bookYearController.text = '';
                          _bookISBNController.text = '';
                        },
                        child: const Text('Clear Details')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
