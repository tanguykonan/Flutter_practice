import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "": (context) => const MyHomePage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List countries = [];
  final dio = Dio();

  void getCountries() async {
    final response = await dio.get("https://restcountries.com/v3.1/all?fields=name,capital,flags");
    setState(() {
      countries = response.data;
    });
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        //leading: IconButton(onPressed: (){}, icon: Icon(Icons.list)),
        title: Center(child: Text("Countries")),
        elevation: 18.0,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          ),
          IconButton(
              onPressed: (){
                setState(() {
                  getCountries();
                });
              }, icon: Icon(Icons.refresh))
        ],
      ),
      body: ListView.builder(
          itemCount: countries.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(countries[index]["flags"]["png"], width: 20, height: 20,),
              title: Text(countries[index]["name"]["official"]),
              subtitle: Text(countries[index]["name"]["common"]),
            );
          }
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: Text(
                  "Settings",
                  style: TextStyle(
                      fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38
                  ),
                )
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.note_add),
              title: Text("NotePad"),
              subtitle: Text("Take about subjet"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}