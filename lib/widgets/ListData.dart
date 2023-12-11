import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListData extends StatefulWidget {
  const ListData({Key? key}) : super(key: key);

  @override
_AddDataState  createState() => _AddDataState ();
}

class _AddDataState extends State<ListData> {
  Widget _buildIconButton(IconData icon, VoidCallback onTap) {
    return Flexible(
      flex: 1,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  
                },
                icon: Icon(icon),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton2(IconData icon, VoidCallback onTap) {
    return Flexible(
      flex: 1,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  
                },
                icon: Icon(icon),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItemData(
      String image, String text, String text2, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 10),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 10),
        ),
        Icon(
          icon,
          color: Colors.red,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
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
            Padding(
              padding: EdgeInsets.only(top: 60),
            ),
              Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: <Color>[
                                const Color.fromARGB(255, 213, 145, 255),
                                Color.fromARGB(255, 95, 21, 231),
                                Color.fromARGB(255, 114, 55, 243),
                                Color.fromARGB(255, 50, 16, 151)
                              ],
                            ),
                          ),
                        ),
                      ),
                    Container(
                      width: 95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.white),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,"ListPage"
                            
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('Add Data'),
                            Icon(
                              Icons.add_outlined,
                              size: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Foto',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'Nama Produk',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'Harga',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'Aksi',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            Divider(),
            _buildItemData('assets/image/1.png', 'Authentic Beef Burger', 'Rp.35.000,00',
                Icons.delete_outlined),
            Divider(),
            _buildItemData('assets/image/2.png', 'Chicken Burger', 'Rp.28.000,00',
                Icons.delete_outlined),
            Divider(),
            _buildItemData('assets/image/5.png', 'Mineral Water', 'Rp.5.000,00',
                Icons.delete_outlined),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}