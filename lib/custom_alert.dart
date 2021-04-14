library customalert;

import 'package:flutter/material.dart';

class CustomAlert {

  static Future showCustomAlert({
    @required BuildContext context,
    @required String title,
    @required Widget willDisplayWidget,
    Color backgroundColor = Colors.white,
    Color foregroundColor = Colors.black,
    double borderRadius = 15.0
  }){
    assert(context != null, "context is null!!");
    assert(willDisplayWidget != null, "willDisplayWidget is null!!");
    assert(title !=null, "Title is null!!");
    return showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                child: IconButton(
                  icon: Icon(Icons.close, color: foregroundColor,),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Center(
                child: Text(
                  "$title",
                  style: TextStyle(fontSize: 18.0, color: foregroundColor, fontWeight: FontWeight.w600),
                ),
              ),
              willDisplayWidget,
            ],
          ),
        );
      }
    );

  }

}
