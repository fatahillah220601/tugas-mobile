import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenghitungLuasTrapesium extends StatefulWidget {
  @override
  _MenghitungLuasTrapesiumState createState() => _MenghitungLuasTrapesiumState();
}

class _MenghitungLuasTrapesiumState extends State<MenghitungLuasTrapesium> {
  double alasbawah=0;
  double alasatas=0;
  double tinggi=0;
  double luas=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menghitung Luas Trapesium", style: TextStyle(color: Colors.black),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff29a9f6), Color(0xff29a9f6)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomCenter,
            )
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("AYO HITUNG LUAS TRAPESIUM", style: TextStyle(fontWeight: FontWeight.bold),),
          Row(
            children: [
              Text("Sisi Atas"),
              Expanded(
                child: TextField(
                  onChanged: (txt){
                    setState(() {
                      alasatas= double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 3,
                ),
              )
            ],
          ),
          Row(
            children: [
              Text("Sisi Bawah"),
              Expanded(
                child: TextField(
                  onChanged: (txt){
                    setState(() {
                      alasbawah= double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 3,
                ),
              )
            ],
          ),
          Row(
            children: [
              Text("Tinggi Trapesium"),
              Expanded(
                child: TextField(
                  onChanged: (txt){
                    setState(() {
                      tinggi= double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 3,
                ),
              )
            ],
          ),
          RaisedButton(
              onPressed: (){
                setState(() {
                  luas=0.5 * (alasatas + alasbawah) * tinggi;
                });
              },
              child: Text("Hitung"),

          ),

          Text("Sisi atas=$alasatas, Sisi Bawah=$alasbawah, Tinggi=$tinggi"),
          Text("$luas")
        ],
      ),
    );
  }
}