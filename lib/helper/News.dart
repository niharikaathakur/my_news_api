import 'package:flutter_news_app/model/article_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_news_app/secret.dart';

class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=$apiKey";
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          // Check For imageToURL and Description to be null
          // Instance of ArticleModel
          ArticleModel articleModel = ArticleModel(
              title: element["title"],
              author: element["author"],
              description: element["description"],
              url: element["url"],
              content: element["content"],
              urlToImage: element["urlToImage"]);
          news.add(articleModel);
        }
      });
    }
  }
}

class CategoryNews {
  List<ArticleModel> news = [];
  Future<void> getNews(String categoryName) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&category=$categoryName&apiKey=$apiKey";
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          // Check For imageToURL and Description to be null
          // Instance of ArticleModel
          ArticleModel articleModel = ArticleModel(
              title: element["title"],
              author: element["author"],
              description: element["description"],
              url: element["url"],
              content: element["content"],
              urlToImage: element["urlToImage"]);
          news.add(articleModel);
        }
      });
    }
  }
}
