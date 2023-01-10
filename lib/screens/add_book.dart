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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Book"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Add New Info',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),

                // Input Name
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _bookNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Name",
                    labelText: 'Name',
                  ),
                ),

                // Input Autor
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _bookAutorController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Autor",
                    labelText: 'Autor',
                  ),
                ),

                // Input Editorial
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _bookEditorialController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Editorial",
                    labelText: 'Editorial',
                  ),
                ),

                // Input Year
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _bookYearController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Year",
                    labelText: 'Year',
                  ),
                ),

                // Input ISBN
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _bookISBNController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter ISBN",
                    labelText: 'ISBN',
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
                        onPressed: () {},
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
