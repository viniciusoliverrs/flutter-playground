import 'package:flutter/material.dart';
import '../models/field_model.dart';

class FormApp extends StatelessWidget {
  const FormApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyForm(),
    );
  }
}

class MyForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final List<FieldModel> _fields = [
    FieldModel(
      label: 'Name',
      placeholder: 'Enter your name',
      type: 'text',
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    ),
    FieldModel(
      label: 'Name',
      placeholder: 'Enter your name',
      type: 'text',
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    ),
    FieldModel(
      label: 'Name',
      placeholder: 'Enter your name',
      type: 'text',
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    ),
  ];

  _generateFields(List<FieldModel> fields) {
    return fields.map((field) {
      return TextFormField(
        keyboardType: field.getKeyboard(),
        controller: field.controller,
        decoration: InputDecoration(
          labelText: field.label,
          hintText: field.placeholder,
        ),
        validator: field.validator,
      );
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ..._generateFields(_fields),
            ],
          ),
        ),
      ),
    );
  }
}
