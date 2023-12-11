import 'package:flutter/material.dart';



class ListPage extends StatefulWidget {
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<String> items = ['Pilihan 1', 'Pilihan 2', 'Pilihan 3']; 
  var _newValue = "-1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/");
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
            buildText("Nama Produk"),
            buildTextField("Masukan nama produk"),
            SizedBox(height: 20),
            buildText("Harga"),
            buildTextField("Masukan Harga"),
            SizedBox(height: 20),
            buildText("Kategori produk"),
            DropdownButtonFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
            ),
            value: _newValue,
            items: [                       
              DropdownMenuItem(child: Text("Makanan"), value: "-1",),
              DropdownMenuItem(child: Text("Minuman"), value: "1",),
            ], onChanged: ((value) {
            }),),
            SizedBox(height: 20),
            buildText("Image"),
            buildTextField("Choose file"),
            SizedBox(height: 35),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 0, 81, 255)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(250.0, 45.0)),
              ),
              child: Text(
                "Submit",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }

  Widget buildTextField(String hintText) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}