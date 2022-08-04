import 'package:flutter/material.dart';

import 'newpage.dart';

class registerform extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  TextEditingController _username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _form,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: _username,
                decoration: const InputDecoration(
                    labelText: 'Name', border: OutlineInputBorder()),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "Enter Your Name";
                  }
                  return null;
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
                validator: (text) {
                  if (text == null || !(text.contains('@')) || text.isEmpty) {
                    return "Enter a valid email address!";
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Password', border: OutlineInputBorder()),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "Enter valid password ";
                  }
                  return null;
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateColor.resolveWith((states) => Colors.pink),
                  ),
                  child: Text('Submit'),
                  onPressed: () {
                    final isValid = _form.currentState!.validate();
                    if (isValid) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  newpage(username: _username.text)));
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
