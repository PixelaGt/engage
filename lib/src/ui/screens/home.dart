import 'package:engage/src/services/firestore.dart';
import 'package:engage/src/ui/widgets/common/cyber_initiative.dart';
import 'package:engage/src/ui/widgets/common/cyber_panel.dart';
import 'package:engage/src/ui/widgets/home/home_base.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBase(
        [
          // Align(alignment: Alignment.topCenter, child: Text('Hola'))
          ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
            children: [
              Text(
                'Now, you are know as:',
                style: TextStyle(
                  fontFamily: 'Bios',
                  fontSize: 16,
                  color: const Color(0xff00e3ee),
                ),
              ),
              SizedBox(height: 16.0),
              CyberPanel('arduor y 125'),
              SizedBox(height: 32.0),
              Text('Initiatives',
                  style: TextStyle(
                    fontFamily: 'Bios',
                    fontSize: 16,
                    color: const Color(0xff00e3ee),
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(height: 8.0),
              Consumer<FirestoreService>(
                builder: (context, value, child) => StreamBuilder(
                  initialData: [],
                  stream: value.initiativesStream(),
                  builder: (context, snapshot) => ListView.builder(
                    itemBuilder: (context, index) =>
                        CyberInitiative(snapshot.data[index]),
                    itemCount: snapshot.data.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
