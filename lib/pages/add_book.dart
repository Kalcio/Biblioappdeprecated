import 'package:biblioapp/models/books_model.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class AddBook extends StatefulWidget {
  const AddBook({super.key, this.model, this.isEditMode = false});

  final BookModel? model;
  final bool isEditMode;

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  late BookModel model;
  List<dynamic> categories = [];

  @override
  void initState() {
    super.initState();
    model = BookModel(name: "", autor: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: true,
        title: Text(widget.isEditMode ? 'Edit Book' : 'Add Book'),
      ),
      body: Form(
        key: globalKey,
        child: _formUI(),
      ),
    );
  }

  _formUI() {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          FormHelper.inputFieldWidgetWithLabel(
            context,
            'name',
            "Name Book",
            "",
            (onValidate) {
              if (onValidate.isEmpty) {
                return "* Required";
              }
            },
            (onSaved) {
              model.name = onSaved.toString().trim();
            },
            initialValue: model.name,
            showPrefixIcon: true,
            prefixIcon: const Icon(Icons.text_fields),
            borderRadius: 10,
            contentPadding: 15,
            fontSize: 14,
            labelFontSize: 14,
            paddingLeft: 0,
            paddingRight: 0,
            prefixIconPaddingLeft: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          FormHelper.inputFieldWidgetWithLabel(
            context,
            'autor',
            "Autor Book",
            "",
            (onValidate) {
              if (onValidate.isEmpty) {
                return "* Required";
              }
            },
            (onSaved) {
              model.autor = onSaved.toString().trim();
            },
            initialValue: model.name,
            showPrefixIcon: true,
            prefixIcon: const Icon(Icons.text_fields),
            borderRadius: 10,
            contentPadding: 15,
            fontSize: 14,
            labelFontSize: 14,
            paddingLeft: 0,
            paddingRight: 0,
            prefixIconPaddingLeft: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          FormHelper.inputFieldWidgetWithLabel(
            context,
            'editorial',
            "Editorial",
            "",
            (onValidate) {
              if (onValidate.isEmpty) {
                return "* Required";
              }
            },
            (onSaved) {
              model.editorial = onSaved.toString().trim();
            },
            initialValue: model.editorial ?? "",
            showPrefixIcon: true,
            prefixIcon: const Icon(Icons.text_fields),
            borderRadius: 10,
            contentPadding: 15,
            fontSize: 14,
            labelFontSize: 14,
            paddingLeft: 0,
            paddingRight: 0,
            prefixIconPaddingLeft: 10,
          ),
          Row(
            children: [
              Flexible(
                child: FormHelper.inputFieldWidgetWithLabel(
                  context,
                  'year',
                  "Year",
                  "",
                  (onValidate) {
                    if (onValidate.isEmpty) {
                      return "* Required";
                    }
                  },
                  (onSaved) {
                    model.year = int.parse(onSaved.trim());
                  },
                  initialValue: "",
                  showPrefixIcon: true,
                  prefixIcon: const Icon(Icons.numbers),
                  borderRadius: 10,
                  contentPadding: 15,
                  fontSize: 14,
                  labelFontSize: 14,
                  paddingLeft: 0,
                  paddingRight: 0,
                  prefixIconPaddingLeft: 10,
                  isNumeric: true,
                ),
              ),
              Flexible(
                child: FormHelper.inputFieldWidgetWithLabel(
                  context,
                  'isbn',
                  "ISBN",
                  "",
                  (onValidate) {
                    if (onValidate.isEmpty) {
                      return "* Required";
                    }
                  },
                  (onSaved) {
                    model.year = int.parse(onSaved.trim());
                  },
                  initialValue: "",
                  showPrefixIcon: true,
                  prefixIcon: const Icon(Icons.numbers),
                  borderRadius: 10,
                  contentPadding: 15,
                  fontSize: 14,
                  labelFontSize: 14,
                  paddingLeft: 0,
                  paddingRight: 0,
                  prefixIconPaddingLeft: 10,
                  isNumeric: true,
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
