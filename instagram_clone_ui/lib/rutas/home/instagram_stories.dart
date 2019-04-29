import 'package:flutter/material.dart';

class InstagramStories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.0,
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(
                "Historias", 
                style: Theme.of(context).textTheme.body1,
              ),
              new Row(
                children: <Widget>[
                  new Icon(Icons.play_arrow),
                  new Text(
                    "Ver todas",
                    style: Theme.of(context).textTheme.body1,
                  )
                ],
              ),
            ],
          ),
          new Flexible(
            child: new ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context,index) =>
                new Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                   new Container(
                     width: 60.0,
                     height: 60.0,
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(const Radius.circular(60.0)),
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/imagenes/lennon.jpg")
                        )
                     ),
                     margin: const EdgeInsets.symmetric(horizontal: 8.0)
                   ), 
                   index == 0 
                    ? new Positioned(
                      right: 10.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 10.0,
                        child: new Icon(
                          Icons.add,
                          size:14.0,
                          color: Colors.white
                        )
                      ),
                   ) : new Container() 
                  ],
                )
            )
          )
        ],
      ),
    );
  }
}