import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(background: Image.asset("assets/images/bg.jpg", fit: BoxFit.cover)),
              pinned: true,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.pink,
              expandedHeight: MediaQuery.of(context).size.height * 0.35,
              leading: Builder(
                builder: (BuildContext context) {
                  return RotatedBox(quarterTurns: 0, child: IconButton( icon: Icon(Icons.arrow_back_rounded,  color: Colors.white), onPressed: () =>{},));
                },
              ),
              title: Text("User Name", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              elevation: 0,
            ),
            SliverList(
                delegate: SliverChildListDelegate(
                    [
                      Container(
                        width: double.infinity,
                        constraints: BoxConstraints(
                          minHeight: MediaQuery.of(context).size.height -(MediaQuery.of(context).size.height *0.35),
                          minWidth: double.infinity,
                          maxHeight: double.infinity
                        ),
                        padding: const EdgeInsets.only(top: 0, right: 10, left: 10),
                        child: SingleChildScrollView(
                          child: ListView(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            children: <Widget>[
                              ListTile(
                                title: Text("Profile name", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600)),
                                subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
                                , style: TextStyle(fontSize: 14, color: Colors.black54),),
                              )
                            ],
                          ),
                        ),
                      )
                    ]
                )
            )
          ],
        ),
      )
    );
  }
}
