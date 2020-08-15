import 'package:flutter/material.dart';
import 'package:news_app_flutter/views/article_view.dart';

class BlogTile extends StatelessWidget {
  final String imageUrl,title,desc,url;
  BlogTile({@required this.imageUrl,@required this.title,@required this.desc,@required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => ArticleView(blogUrl: url,

          ),
        ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
                child: Image.network(imageUrl)),
            SizedBox(height: 10),
            Text(title,style: TextStyle(fontSize: 17,color: Colors.black87,fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Text(desc,style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}


