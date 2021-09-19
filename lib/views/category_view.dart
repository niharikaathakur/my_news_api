import 'package:flutter/material.dart';
import 'package:flutter_news_app/helper/News.dart';
import 'package:flutter_news_app/model/article_model.dart';
import 'package:flutter_news_app/views/article_view.dart';

class CategoryView extends StatefulWidget {
  final String categoryName;
  CategoryView({this.categoryName});

  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<ArticleModel> articles = <ArticleModel>[];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    getCategoryNews();
  }

  void getCategoryNews() async {
    CategoryNews newClass = CategoryNews();
    await newClass.getNews(widget.categoryName);
    articles = newClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Flutter"),
            Text(
              "News",
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
        elevation: 0.0,
        centerTitle: true,
        actions: <Widget>[
          Opacity(
            opacity: 0,
            child: Icon(Icons.save),
          ),
        ],
      ),
      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 16.0),
                            child: ListView.builder(
                              physics: ClampingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: articles.length,
                              itemBuilder: (context, index) {
                                return BlogTile(
                                  title: articles[index].title,
                                  imageUrl: articles[index].urlToImage,
                                  description: articles[index].description,
                                  url: articles[index].url,
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

// BlogTile Widget
class BlogTile extends StatelessWidget {
  final String imageUrl, title, description, url;

  BlogTile(
      {@required this.imageUrl,
      @required this.title,
      @required this.description,
      @required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleView(
                      blogUrl: url,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 17.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Image.network(imageUrl),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 17.0, color: Colors.black87),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              description,
              style: TextStyle(color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
