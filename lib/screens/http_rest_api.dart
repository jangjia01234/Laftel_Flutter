import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpRestApi extends StatefulWidget {
  @override
  _HttpRestApiState createState() => _HttpRestApiState();
}

class _HttpRestApiState extends State<HttpRestApi> {
  String body = "데이터를 불러오는 중...";

  // API 요청을 보내고 데이터를 받아오는 함수
  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

    if (response.statusCode == 200) {
      // JSON 데이터 파싱
      setState(() {
        body = json.decode(response.body)['body'];
      });
    } else {
      throw Exception('데이터를 불러오는데 실패했습니다');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API 데이터 불러오기')),
      body: Column(
        children: [
          Text(body),
        ],
      ),
    );
  }
}