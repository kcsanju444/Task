import 'package:flutter/material.dart';

class AddAccountScreen extends StatefulWidget {
  const AddAccountScreen({Key? key}) : super(key: key);

  @override
  State<AddAccountScreen> createState() => _AddAccountScreenState();
}

class _AddAccountScreenState extends State<AddAccountScreen> {
  String? category;
  String? type;
  TextEditingController _name = TextEditingController();
  TextEditingController _address = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Account'),
        backgroundColor: Colors.white70,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_circle_left_rounded,
            color: Colors.blueAccent,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  controller: _name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Account Name *',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter an address';
                    }
                    return null;
                  },
                  controller: _address,
                  decoration: InputDecoration(
                    labelText: 'Address *',
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  value: category,
                  onChanged: (String? newValue) {
                    setState(() {
                      category = newValue;
                    });
                  },
                  items: <String>[
                    'Select Category',
                    'Category A',
                    'Category B',
                    'Category C'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value == 'Select Category') {
                      return 'Please select a category';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: ' Select Type ',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  value: type,
                  onChanged: (String? newValue) {
                    setState(() {
                      type = newValue;
                    });
                  },
                  items: <String>[
                    'Select Type',
                    'Type A',
                    'Type B',
                    'Type C',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value == 'Select type') {
                      return 'Please select a type';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Tags',
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Discription',
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Select Color',
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        // minimumSize: const Size.fromHeight(50),
                        fixedSize: Size(350, 50)),
                    onPressed: () {},
                    child: const Text("Create"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
