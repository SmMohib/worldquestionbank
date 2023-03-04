import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:worldquestionbank/model/questions.dart';
import 'package:worldquestionbank/screens/examYear.dart';
import 'package:worldquestionbank/utilitys/colors.dart';
import 'package:worldquestionbank/utilitys/textstyle.dart';

class BordsList extends StatelessWidget {
  Question? model;
  BordsList({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${model!.Questions.toString()}'),
        ),
        body: ListView.builder(
          itemCount: bordtype.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => ExamYearList(
                                model: qlist[index],
                              ))));
                },
                child: Card(
                  color: primary,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      //DecorationImage
                      //Border.all
                      borderRadius: BorderRadius.circular(15),
                      //   boxShadow: [
                      //     BoxShadow(
                      //       color: Colors.black,
                      //       offset: const Offset(
                      //         5.0,
                      //         5.0,
                      //       ), //Offset
                      //       blurRadius: 10.0,
                      //       spreadRadius: 2.0,
                      //     ), //BoxShadow
                      //     BoxShadow(
                      //       color: primary,
                      //       offset: const Offset(0.0, 0.0),
                      //       blurRadius: 0.0,
                      //       spreadRadius: 0.0,
                      //     ), //BoxShadow
                      //   ],
                    ), //BoxDecorat,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: CachedNetworkImage(
                              height: 50,
                              width: 50,
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
                        ),
                        Expanded(
                          flex: 8,
                          child: Text(
                            '${bordtype[index].board}',
                            style: text20(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
