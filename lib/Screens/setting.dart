import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:  [
          const UserAccountsDrawerHeader(accountName: Text('Mateen Amin'),
              accountEmail:Text('rjmateen786@gmail.com'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image(
                  image: AssetImage(
                    'assets/download.jpeg',
                  )),
            ),
          ),
          ),
          // const Divider(
          //   thickness: 1,
          // ),
          ListTile(
            leading: Icon(Icons.security),
            title: const Text('Security'),
            trailing: Icon(Icons.chevron_right),
            onTap: () => print('security'),
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: Text('Privacy'),
            trailing: Icon(Icons.chevron_right),
            onTap: () => print('security'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            trailing: Icon(Icons.chevron_right),
            onTap: () => print('security'),
          ),
          ListTile(
            leading: Icon(Icons.payment_rounded),
            title: Text('Payment'),
            trailing: Icon(Icons.chevron_right),
            onTap: () => print('security'),
          ),
          ListTile(
            leading: Icon(Icons.help_center_rounded),
            title: Text('Help & Support'),
            trailing: Icon(Icons.chevron_right),
            onTap: () => print('security'),
          ),
          ListTile(
            leading: Icon(Icons.emoji_emotions),
            title: Text('Feedback'),
            trailing: Icon(Icons.chevron_right),
            onTap: () => print('security'),
          ),

        ],
      ),
    );
  }
}
