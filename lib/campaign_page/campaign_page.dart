import 'package:flutter/material.dart';

class CampaignPage extends StatefulWidget {
  @override
  _CampaignPageState createState() => _CampaignPageState();
}

class _CampaignPageState extends State<CampaignPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'This is Campaign page',
            style: TextStyle(
              color: Colors.green,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
