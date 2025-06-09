import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AnimeSearchScreen extends StatefulWidget {
  @override
  _AnimeSearchScreenState createState() => _AnimeSearchScreenState();
}

class _AnimeSearchScreenState extends State<AnimeSearchScreen> {
  List<dynamic> results = [];

  Future<void> fetchSearch(String query) async {
    final url = Uri.parse('http://10.0.2.2:5000/search/$query');
    final resp = await http.get(url);
    if (resp.statusCode == 200) {
      setState(() {
        results = json.decode(resp.body);
      });
    } else {
      throw Exception('서버 호출 실패');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchSearch('케로로');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('애니 검색')),
      body: ListView.builder(
        itemCount: results.length,
        itemBuilder: (_, i) {
          final item = results[i];
          return ListTile(
            leading: Image.network(item['image']),
            title: Text(item['name']),
            subtitle: Text('ID: ${item['id']}'),
            onTap: () {
              // 상세 화면으로 이동하거나 getAnimeInfo 호출
            },
          );
        },
      ),
    );
  }
}
