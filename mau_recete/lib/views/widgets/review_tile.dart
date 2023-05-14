import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hungry/models/core/recipe.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

class ReviewTile extends StatelessWidget {
  final Review data;
  ReviewTile({@required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[350], width: 1))),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Review username
              Text(
                data.username,
                style: TextStyle(color: Colors.black, fontFamily: 'inter', fontSize: 16, fontWeight: FontWeight.w600),
              ),
              // user review
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text.rich(
                  TextSpan(
                    text: data.review,
                    style: TextStyle(color: Colors.blue.withOpacity(0.8), fontWeight: FontWeight.w500, height: 150 / 100),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launch(data.review); // Launches the URL when tapped
                      },
                  ),
                ),
              ),
            ],
         ),
        );
    }
}