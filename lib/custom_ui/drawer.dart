import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Md Thohidul Islam"),
          accountEmail: Text("thohidislam44@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(
                'https://image.winudf.com/v2/image/Y29tLnBob2VuaXgucXVlc3Rpb25iYW5rcHJvamVjdF9pY29uXzBfMTgzMWUwYmE/icon.png?w=&fakeurl=1'),
            child: CachedNetworkImage(
              imageUrl:
                  "https://image.winudf.com/v2/image/Y29tLnBob2VuaXgucXVlc3Rpb25iYW5rcHJvamVjdF9pY29uXzBfMTgzMWUwYmE/icon.png?w=&fakeurl=1",
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ),
        ListTile(
          title: const Text("Recent"),
          trailing: const Icon(Icons.recent_actors),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          title: const Text("Upload"),
          trailing: const Icon(Icons.upload_file),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          title: const Text("Privacy Policy"),
          trailing: const Icon(Icons.privacy_tip),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          title: const Text("About Us"),
          trailing: const Icon(Icons.people),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          title: const Text("Login"),
          trailing: const Icon(Icons.login),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ]),
    );
  }
}
