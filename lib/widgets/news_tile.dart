import 'package:flutter/material.dart';

class News_Tile extends StatelessWidget {
  const News_Tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(14.0),
                      child: Image.asset(
                        'assets/images/pic3.png',
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'خبر خبر خبر خبر خبر عنووووااان عنوان خبر عنوان',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'خبر محتوى عنوا محتوى عنوا محتوى عنوا محتوى عنوان',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 16,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
