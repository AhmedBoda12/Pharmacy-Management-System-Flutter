import 'dart:developer';

import 'package:faith_pharm/models/user_model.dart';
import 'package:faith_pharm/services/signup_services.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final SignupServices _signupServices = SignupServices();
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();
  bool isScure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: _usernameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your Username';
                } else {
                  return null;
                }
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
              controller: _firstnameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your first name';
                } else {
                  return null;
                }
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
              controller: _lastnameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your last name';
                } else {
                  return null;
                }
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
              controller: _emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                } else {
                  return null;
                }
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
              controller: _passwordController,
              obscureText: isScure,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                } else {
                  return null;
                }
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
                    try {
                      _signup();
                      Navigator.pop(context);
                    } catch (e) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Error'),
                          content: const Text('error'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
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

  void _signup() async {
    UserModel user = UserModel(
      username: _usernameController.text,
      firstname: _firstnameController.text,
      lastname: _lastnameController.text,
      email: _emailController.text,
      password: _passwordController.text,
    );
    try {
      await _signupServices.signUp(user);
    } catch (e) {
      log(e.toString());
    }
  }
}
