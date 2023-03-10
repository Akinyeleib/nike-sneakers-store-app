import 'package:flutter/material.dart';
import 'package:nike_sneakers_store_app/profile.dart';
import 'package:nike_sneakers_store_app/signup.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff1483C2),
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("first_name last_name"),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                // "assets/images/smile.png",
                "assets/images/akinyele-ib.jpg",
              ),
            ),
            decoration: BoxDecoration(
                // color: Color(0xff1483C2),
                ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person_outline_sharp,
              color: Colors.white,
            ),
            title: myText("Profile"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.luggage,
              color: Colors.white,
            ),
            title: myText("My Cart"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.favorite_outline,
              color: Colors.white,
            ),
            title: myText("Favorite"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.delivery_dining,
              color: Colors.white,
            ),
            title: myText("Orders"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
            title: myText("Notifications"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.settings_outlined,
              color: Colors.white,
            ),
            title: myText("Settings"),
            onTap: () {},
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: const Divider(
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            title: myText("Sign Out"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Register()),
              );
            },
          ),
        ],
      ),
    );
  }

  Text myText(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
      ),
    );
  }
}

