import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:worldquestionbank/custom_ui/drawer.dart';
import 'package:worldquestionbank/model/questions.dart';
import 'package:worldquestionbank/screens/questionsList.dart';
import 'package:worldquestionbank/custom_ui/searchs.dart';
import 'package:worldquestionbank/screens/bordsList.dart';
import 'package:worldquestionbank/utilitys/colors.dart';
import 'package:worldquestionbank/utilitys/textstyle.dart';

class HomePage extends StatelessWidget {
  Question? model;
  HomePage({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                searchableUsersWidget();
              },
              icon: Icon(Icons.search)),
        ],
        title: Text(
          'WQB- World Question Bank',
          style: text20(),
        ),
      ),
      drawer: DrawerDemo(),
      body: ListView.builder(
          itemCount: qlist.length,
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => BordsList(
                              model: qlist[index],
                            ))));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: primary, borderRadius: BorderRadius.circular(10)),
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CachedNetworkImage(
                          height: 90,
                          width: 90,
                          imageUrl:
                              "https://image.winudf.com/v2/image/Y29tLnBob2VuaXgucXVlc3Rpb25iYW5rcHJvamVjdF9pY29uXzBfMTgzMWUwYmE/icon.png?w=&fakeurl=1",
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  CircularProgressIndicator(
                                      value: downloadProgress.progress),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "${qlist[index].Questions}",
                        style: text24(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}
