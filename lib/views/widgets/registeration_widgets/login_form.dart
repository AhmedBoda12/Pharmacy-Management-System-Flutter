import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool isScure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
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
              labelText: 'Enter your Username',
              isDense: true,
              filled: true,
              fillColor: Theme.of(context).secondaryHeaderColor,
              hintText: 'Username',
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
              labelText: 'Enter your Password',
              isDense: true,
              filled: true,
              fillColor: Theme.of(context).secondaryHeaderColor,
              hintText: 'Password',
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
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
