import 'dart:convert';
 
import 'package:http/http.dart' as http;
 
import '../models/news.dart';
 
class ApiService{
 final endPointUrl = "https://newsapi.org/v2/top-headlines?country=id&apiKey=6c4cdc24eb4141a4a88145f234d784c5";
 
 Future <List<News>> getNews() async {
   final response = await http.get(Uri.tryParse(endPointUrl));
 
   if (response.statusCode == 200 ){
     Map<String,dynamic> json = jsonDecode(response.body);
 
     List<dynamic> body = json['articles'];
 
     List<News> news = body.map((item) => News.fromJson(item)).toList();
 
     return news;
   } else {
     throw Exception("Can't get the news");
   }
 
 }
}
