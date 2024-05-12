import 'package:faith_pharm/models/user_model.dart';
import 'package:faith_pharm/services/users_services.dart';
import 'package:flutter/material.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key, this.userId});
  static const String routeName = 'UpdateProfileScreen';
  final String? userId;

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passowrdController = TextEditingController();
  bool isScure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        title: Text("EditProfile",
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // -- IMAGE with ICON
              Stack(
                children: [
                  SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          'https://images.pexels.com/photos/832998/pexels-photo-832998.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        ),
                      )),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Theme.of(context).primaryColor),
                      child: const Icon(Icons.camera,
                          color: Colors.white, size: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),

              // -- Form Fields
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _firstnameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        label: const Text("First name"),
                        prefixIcon: const Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _lastnameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                        ),
                        label: const Text("Last name"),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                          label: const Text("Email"),
                          prefixIcon: const Icon(Icons.email)),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _passowrdController,
                      obscureText: isScure,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                        ),
                        label: const Text("Password"),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                            icon: isScure
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                isScure = !isScure;
                              });
                            }),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // -- Form Submit Button
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () => _editUser(context),
                        child: const Text(
                          "Submit",
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent.withOpacity(0.1),
                          elevation: 0,
                          foregroundColor: Colors.red,
                          shape: const StadiumBorder(),
                          side: BorderSide.none),
                      child: const Text("Delete account"),
                    ),
                    // -- Created Date and Delete Button
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> _editUser(BuildContext context) async {
    final edit = UserServices();
    UserModel user = UserModel(
        firstname: _firstnameController.text,
        lastname: _lastnameController.text,
        email: _emailController.text,
        password: _passowrdController.text);

    try {
      await edit.editUser(widget.userId!, user);
      if (context.mounted) Navigator.pop(context);
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
