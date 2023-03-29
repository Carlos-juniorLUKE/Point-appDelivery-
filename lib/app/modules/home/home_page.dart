import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<HomeStore>();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'PlayList',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, int index) {
            return ListTile(
              leading: Image.network(
                  'https://m.media-amazon.com/images/I/81TnWHafWdL._AC_SL1448_.jpg'),
              title: Text(
                'Californication',
                style: GoogleFonts.ptSansCaption(color: Colors.white),
              ),
              subtitle: Text(
                'Red Hot Chili Peppers',
                style: GoogleFonts.ptSansCaption(color: Colors.white),
              ),
              contentPadding: const EdgeInsets.all(10),
            );
          },
        ),
      ),
    );
  }
}
