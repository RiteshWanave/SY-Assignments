import 'dart:ui';

import 'package:flutter/material.dart';

class InfoCard extends StatefulWidget {
  final String title;
  final String info;
  final String pict;
  const InfoCard({required this.title, required this.info, required this.pict});


  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(widget.info),
            duration: const Duration(milliseconds: 500),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            //behavior: ,
          ));
        },
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  child: Image.network(widget.pict),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(
                  width: 50.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black
                      ),
                    ),
                    Text(
                      widget.info,
                      textAlign: TextAlign.left,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
