import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter HTTP Demo',
      home: DataWidget(),
    );
  }
}

Future<String> fetchData() async {
  final response = await http.get(Uri.parse('https://fccf-2401-4900-4e76-f0f0-429-d192-a521-9c63.ngrok-free.app/api/data'));
  
  if (response.statusCode == 200) {
    final Map<String, dynamic> data = jsonDecode(response.body);
    // Assuming the response contains a string under the key 'customerName'
    // final String customerName = data['customerName'];
    final String customerName = data.toString();
    return customerName;
  } else {
    throw Exception('Failed to load data');
  }
}

class DataWidget extends StatefulWidget {
  @override
  _DataWidgetState createState() => _DataWidgetState();
}

class _DataWidgetState extends State<DataWidget> {
  late Future<String> _futureData;

  @override
  void initState() {
    super.initState();
    _futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data from API'),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: _futureData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return Text('Data: ${snapshot.data.toString()}');
            }
          },
        ),
      ),
    );
  }
}
