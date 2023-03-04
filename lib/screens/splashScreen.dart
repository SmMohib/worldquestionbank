import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:worldquestionbank/custom_ui/container_button.dart';
import 'package:worldquestionbank/screens/homePage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl:
                  "https://image.winudf.com/v2/image/Y29tLnBob2VuaXgucXVlc3Rpb25iYW5rcHJvamVjdF9pY29uXzBfMTgzMWUwYmE/icon.png?w=&fakeurl=1",
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Custom_Button(
                text: 'Start',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => HomePage())));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
