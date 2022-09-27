import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/database/consts.dart';

import '../view_model/profile_screen_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProfileScreenModel model = Provider.of<ProfileScreenModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: AssetImage("assets/profile.jpg"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: wineColor,
                      ),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "Tolulope Fakunle",
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 5),
            Text(
              "+2348132738316",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Divider(
                color: Colors.grey.shade400,
                height: 1,
              ),
            ),
            Flexible(
              child: ListTile(
                leading: const Icon(
                  Icons.perm_identity_sharp,
                ),
                title: const Text("Edit Profile"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ),
            Flexible(
              child: ListTile(
                leading: const Icon(Icons.pin_drop),
                title: const Text("Address"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ),
            Flexible(
              child: ListTile(
                leading: const Icon(Icons.notifications_active),
                title: const Text("Notification"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ),
            Flexible(
              child: ListTile(
                leading: const Icon(Icons.language),
                title: const Text("Language"),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: const [
                      Text("English(US)"),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ),
            Flexible(
              child: ListTile(
                leading: const Icon(Icons.security),
                title: const Text("Security"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ),
            Flexible(
              child: ListTile(
                leading: const Icon(Icons.share),
                title: const Text("Invite Friend"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ),
            Flexible(
              child: ListTile(
                leading: const Icon(Icons.signpost_outlined),
                title: const Text("Sign In"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => model.goToLogin(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
