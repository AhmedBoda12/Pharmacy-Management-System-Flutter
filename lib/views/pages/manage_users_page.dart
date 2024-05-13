import 'package:faith_pharm/models/user_model.dart';
import 'package:faith_pharm/services/users_services.dart';
import 'package:faith_pharm/views/widgets/custom_search_bar.dart';
import 'package:faith_pharm/views/widgets/manage_widgets.dart/floating_action.dart';
import 'package:faith_pharm/views/widgets/manage_widgets.dart/user_card.dart';
import 'package:flutter/material.dart';

class ManageUsersPage extends StatefulWidget {
  const ManageUsersPage({super.key});

  @override
  State<ManageUsersPage> createState() => _ManageUsersPageState();
}

class _ManageUsersPageState extends State<ManageUsersPage> {
  List<UserModel> _users = [];

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const CustomSearchBar(hint: "Which user do you search?"),
      ),
      floatingActionButton: const FloatAction(),
      body: _users.isNotEmpty
          ? ListView.builder(
              itemBuilder: (context, index) {
                return UserCard(
                  userName: _users[index].username!,
                  isAdmin: _users[index].isAdmin!,
                  onPressed: () => _deleteUser(index),
                );
              },
              itemCount: _users.length)
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  Future<void> _loadProducts() async {
    try {
      final users = await UserServices().getAllUsers();
      setState(() {
        _users = users;
      });
    } catch (e) {
      // Handle error
    }
  }

  Future<void> _deleteUser(int index) async {
    try {
      await UserServices().deleteUser(_users[index].id!);
      setState(() {
        _users.removeAt(index);
      });
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("User deleted"),
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Error within delete user"),
          ),
        );
      }
    }
  }
}
