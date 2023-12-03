import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      // alignment: Alignment.center,
      width: double.infinity,
      margin: EdgeInsets.only(left: 8,right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(image: AssetImage("assets/images/general.png"),
            fit: BoxFit.fill,
          ),
          Text("Large Title Should be places in this place Large Title Should be places in this place Large Title Should be places in this place",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.5,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis ,
          ),
          SizedBox(height: 5),
          Text("and here in the description of the news you can place your desc here",
            style: TextStyle(
                color: Colors.grey
            ),
          ),
        ],
      ),
    );
  }
}
