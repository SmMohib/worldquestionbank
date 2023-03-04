import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:worldquestionbank/model/questions.dart';

class ViewQestion extends StatelessWidget {
  ViewQestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Question View'),
        ),
        body: Container(
          height: double.infinity,
          margin: EdgeInsets.only(left: 15, right: 15),
          width: double.infinity,
          child: PhotoViewGallery.builder(
            itemCount: bordtype.length,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: NetworkImage(
                  "${(bordtype[index].image)}",
                ),
                minScale: PhotoViewComputedScale.contained * 3.8,
                maxScale: PhotoViewComputedScale.covered * 12,
              );
            },
            scrollPhysics: BouncingScrollPhysics(),
            backgroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Theme.of(context).canvasColor,
            ),
            enableRotation: true,
            loadingBuilder: (context, event) => Center(
              child: Container(
                width: 30.0,
                height: 30.0,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.orange,
                ),
              ),
            ),
          ),
        ));
  }
}
