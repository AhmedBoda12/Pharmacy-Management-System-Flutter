import 'package:faith_pharm/models/user_model.dart';
import 'package:faith_pharm/services/login_services.dart';
import 'package:faith_pharm/views/home/main_page.dart';
import 'package:faith_pharm/views/pages/dashboard_page.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isScure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
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
                  _login(context);
                }
              },
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> _login(BuildContext context) async {
    final login = LoginServices();
    UserModel user = UserModel(
        username: _usernameController.text, password: _passwordController.text);
    try {
      UserModel loggedUser = await login.login(user);
      if (context.mounted) {
        loggedUser.isAdmin!
            ? Navigator.pushReplacementNamed(context, DashBoardPage.routeName)
            : Navigator.pushReplacementNamed(context, MainPage.routeName,
                arguments: loggedUser);
      }
    } catch (e) {
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Error'),
            content: const Text('invalid login'),
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
  }
}
