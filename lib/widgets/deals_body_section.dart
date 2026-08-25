import 'package:flutter/material.dart';

class DealsBodySection extends StatelessWidget {
  const DealsBodySection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: .2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Image.asset('assets/microphone.png'),
          SizedBox(width: 20),
          Column(
            children: [
              Text(
                'Microphone',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Row(children: [Text('108.20\$'), Text('108.20\$')]),
              Text(
                'RQDE PodMic',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
