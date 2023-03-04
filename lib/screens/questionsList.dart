import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:worldquestionbank/model/questions.dart';
import 'package:worldquestionbank/screens/view_Question.dart';
import 'package:worldquestionbank/utilitys/colors.dart';
import 'package:worldquestionbank/utilitys/textstyle.dart';

class QuestionList extends StatelessWidget {
  Question? model;
  QuestionList({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Qustion List'),
        ),
        body: GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 0,
            mainAxisExtent: 197,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => ViewQestion())));
                },
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl:
                            "https://i0.wp.com/suggestionquestion.com/wp-content/uploads/2022/09/307646865_1134940510564529_1630750417647567093_n.jpg?resize=768%2C1031&ssl=1",
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                CircularProgressIndicator(
                                    value: downloadProgress.progress),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                    Text(
                      '2001',
                      style: text16(),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
