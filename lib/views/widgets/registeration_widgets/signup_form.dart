import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  bool isScure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your Username';
                } else {
                  return null;
                }
              },
              onSaved: (newValue) {
                username = newValue;
              },
              decoration: InputDecoration(
                labelText: 'User name',
                isDense: true,
                filled: true,
                fillColor: Theme.of(context).secondaryHeaderColor,
                hintText: 'Enter your user name',
                border: const OutlineInputBorder(
                    gapPadding: 4,
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your first name';
                } else {
                  return null;
                }
              },
              onSaved: (newValue) {
                firstName = newValue;
              },
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'First Name',
                isDense: true,
                filled: true,
                fillColor: Theme.of(context).secondaryHeaderColor,
                hintText: 'Enter your first name',
                border: const OutlineInputBorder(
                    gapPadding: 4,
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your last name';
                } else {
                  return null;
                }
              },
              onSaved: (newValue) {
                lastName = newValue;
              },
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Last Name',
                isDense: true,
                filled: true,
                fillColor: Theme.of(context).secondaryHeaderColor,
                hintText: 'Enter your last name',
                border: const OutlineInputBorder(
                    gapPadding: 4,
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                } else {
                  return null;
                }
              },
              onSaved: (newValue) {
                email = newValue;
              },
              decoration: InputDecoration(
                labelText: 'Email',
                isDense: true,
                filled: true,
                fillColor: Theme.of(context).secondaryHeaderColor,
                hintText: 'Enter your email',
                border: const OutlineInputBorder(
                    gapPadding: 4,
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: isScure,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                } else {
                  return null;
                }
              },
              onSaved: (newValue) {
                password = newValue;
              },
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isScure = !isScure;
                    });
                  },
                  icon: isScure
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                ),
                labelText: 'Password',
                isDense: true,
                filled: true,
                fillColor: Theme.of(context).secondaryHeaderColor,
                hintText: 'Enter your Password',
                border: const OutlineInputBorder(
                    gapPadding: 4,
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
                child: const Text('Create account'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
