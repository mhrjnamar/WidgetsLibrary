import 'package:flutter/material.dart';

class Naya extends StatelessWidget {
  const Naya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
                width: 200,
              decoration: BoxDecoration(
                color: Colors.white,      
                borderRadius: BorderRadius.circular(15)
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration:  BoxDecoration(
                border: Border.all(
                  color: Colors.orange,
                ),
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                      colors: [
                        Colors.black45,
                        Colors.black38,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black38,
                        Colors.black54,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    stops: [
                      0.01,
                      0.02,
                      0.08,
                      0.92,
                      0.98,
                      0.99

                    ]
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
