import 'package:faith_pharm/views/pages/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:faith_pharm/views/pages/orders.dart';
import 'package:faith_pharm/views/widgets/profile_widgets/profile_menu_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title:
            Text("Profile", style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mode_night),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              /// -- IMAGE
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
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                "ProfileHeading",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "ProfileSubHeading",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),

              /// -- BUTTON
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const UpdateProfileScreen(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    side: BorderSide.none,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    "EditProfile",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              ProfileMenuWidget(
                title: "Settings",
                icon: Icons.settings,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Orders ",
                icon: Icons.wallet,
                onPress: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const OrderListItems(),
                  ));
                },
              ),

              const SizedBox(height: 10),

              ProfileMenuWidget(
                title: "Logout",
                icon: Icons.logout,
                textColor: Colors.red,
                endIcon: false,
                onPress: () {
                  // (
                  //   title: "LOGOUT",
                  //   titleStyle: const TextStyle(fontSize: 20),
                  //   content: const Padding(
                  //     padding: EdgeInsets.symmetric(vertical: 15.0),
                  //     child: Text("Are you sure, you want to Logout?"),
                  //   ),
                  //   confirm: ElevatedButton(
                  //     onPressed: () {
                  //       // Implement your logout logic here
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //       backgroundColor: Colors.redAccent,
                  //       side: BorderSide.none,
                  //     ),
                  //     child: const Text("Yes"),
                  //   ),
                  //   cancel: OutlinedButton(
                  //     onPressed: () => Navigator.pop(context),
                  //     child: const Text("No"),
                  //   ),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
