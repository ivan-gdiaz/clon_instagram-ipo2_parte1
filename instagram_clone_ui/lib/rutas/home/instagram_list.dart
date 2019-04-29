import "package:flutter/material.dart";
// Sustituir "instagram_clone_ui" por el nombre que le habéis dado a
// vuestro proyecto
import "package:instagram_clone_ui/rutas/home/instagram_stories.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class InstagramList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 5,
      itemBuilder: (context,index)=> 
      // Historias en horizontal o el feed normal
        index == 0 
          ? new InstagramStories() 
          : new Column( 
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  top: 16.0,
                  right: 8.0,
                  bottom: 8.0
                ),                
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage("assets/imagenes/lennon.jpg"),
                            )
                          )
                        ),
                          new Padding(
                          padding: const EdgeInsets.only(left: 10.0) 
                        ),
                        new Text(
                          "lennon",
                          style: Theme.of(context).textTheme.body1,
                        ),
                      ],
                    ),
                    new IconButton(
                      icon: new Icon(Icons.more_vert),
                      onPressed: null,
                    )
                  ]
                )
              ),
              new Flexible(
                 fit: FlexFit.loose,
                 child: new Image.asset(
                    "assets/imagenes/lennon.jpg",
                    fit: BoxFit.cover
                 ),            
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Icon(
                            FontAwesomeIcons.heart
                          ),
                          new SizedBox(
                            width: 16.0,
                          ),
                          new Icon(
                            FontAwesomeIcons.comment,
                          ),
                          new SizedBox(
                            width: 16.0,
                          ),
                          new Icon(FontAwesomeIcons.paperPlane),
                        ],
                      ),
                      new Icon(FontAwesomeIcons.bookmark)
                    ],
                  ),
                ),
            ],
          ),
    );
  }
}