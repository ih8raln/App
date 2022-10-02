import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget{
  final String imagePath;
  final String details;
  DetailsPage({
     required this.imagePath,
      required this.details,
      });
      
  @override
  Widget build (BuildContext context){
    String title;
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                  )
                ),
              ),
              ),
              Expanded(
                child: Container(
                  height: 30,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            details,
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 50,
                              fontWeight: FontWeight.w600, 
                              ),
                            ),
                        ],
                      ),
                      ),
                      Row(
                        children: <Widget>[
                        Expanded(
                          child: FloatingActionButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            backgroundColor: Colors.orange,
                            child: Text(
                              'BACK',
                              style: TextStyle(
                                color: Colors.white,
                            ),
                            ),
                          ) ,)
                      ],
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}