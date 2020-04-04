import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class AdapativeFlatButton extends StatelessWidget {
  final String text;
  final Function handler;
  AdapativeFlatButton(this.text,this.handler);
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS? CupertinoButton(child: Text(
                        text,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: handler,
                      color: Theme.of(context).primaryColor,): FlatButton(
                      child: Text(
                        text,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: handler,
                      color: Theme.of(context).primaryColor,
                    );
  }
}