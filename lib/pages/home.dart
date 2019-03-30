import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stints/pages/homeDrawer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stints/widgets/text_widgets.dart';

class HomePage extends StatefulWidget {
  final VoidCallback signout;
  HomePage({this.signout});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  /*  @override
  dispose() {R
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  } */

  double small = 600;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    print(MediaQuery.of(context).size.width);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
        ),
        drawer: HomeDrawer(
          signout: widget.signout,
        ),
        body: LayoutBuilder(
          builder: layoutBuilder,
        ),
      ),
    );
  }

  // return index == 0
  //     ?
  //     : StaggeredTile.count(bc.maxWidth < small ? 2 : 1, 1.5)

  Widget layoutBuilder(BuildContext mContext, BoxConstraints bc) {
    return Container(
      color: Colors.teal,
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: internshipList.length + 2,
        itemBuilder: staggeredViewItemBuilder(context, bc),
        staggeredTileBuilder: (int index) {
          switch (index) {
            case 0:
              return StaggeredTile.count(2, 1);
            case 1:
              return StaggeredTile.count(2, 0.2);
            default:
              return StaggeredTile.count(bc.maxWidth < small ? 2 : 1, 0.75);
          }
        },
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
      ),
    );
  }

  Function staggeredViewItemBuilder(BuildContext context, BoxConstraints bc) {
    return (BuildContext context, int i) {
      switch (i) {
        case 0:
          return buildFeatured(bc);
        case 1:
          return buildFilternSort();
        default:
          return buildItems(index: i - 1);
      }
    };
  }

  Widget buildFeatured(BoxConstraints bc) {
    List<Widget> sample = List.generate(6, (i) {
      return Container(
        margin: EdgeInsets.all(12.0),
        color: Colors.blueGrey,
        width: bc.maxWidth * 0.9,
        child: Center(
          child: Text("Featured $i "),
        ),
      );
    });
    return Container(
      color: Colors.white,
      child: PageView.builder(
        itemCount: sample.length,
        itemBuilder: (bc, i) => sample[i],
      ),
    );
  }

  Widget buildItems({@required index}) {
    return internshipList[index];
    // FittedBox(
    //   alignment: Alignment.topCenter,
    //   fit: BoxFit.contain,
    //   child: internshipList[index],
    // );
  }

  Widget buildFilternSort() {
    return Container(
      color: Colors.teal,
      child: Row(
        children: <Widget>[
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.sort,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Container(height: 20, width: 2, color: Colors.white),
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.filter_list,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

List<Internship> internshipList = [
  Internship(
    title: "Intern 0",
    about: "Lorem ipsum dolor sit amet",
    available: 2,
    whoCanApply: "Anyone",
    tag: "Hybrid App Development",
    subtitle: "Lorem ipsum dolor sit amet",
    stipend: "4000/month",
    skillsRequired: "Flutter",
    posted: "2 days ago",
    perks: "Certificate",
    lastdate: "March 28, 2018",
    isFeatured: true,
    dates: "April 1, 2018 to April 15, 2015",
    isBookmarked: true,
  ),
  Internship(
    title: "Intern 1 asdfs",
    about: "Lorem ipsum dolor sit amet",
    available: 2,
    whoCanApply: "Anyone",
    tag: "Hybrid App Development",
    subtitle: "Lorem ipsum dolor sit amet",
    stipend: "4000/month",
    skillsRequired: "Flutter",
    posted: "2 days ago",
    perks: "Certificate",
    lastdate: "March 28, 2018",
    isFeatured: true,
    dates: "April 1, 2018 to April 15, 2015",
    isBookmarked: false,
  ),
  Internship(
    title: "Intern 2",
    about: "Lorem ipsum dolor sit amet",
    available: 2,
    whoCanApply: "Anyone",
    tag: "Hybrid App Development",
    subtitle: "Lorem ipsum dolor sit amet",
    stipend: "4000/month",
    skillsRequired: "Flutter",
    posted: "2 days ago",
    perks: "Certificate",
    lastdate: "March 28, 2018",
    isFeatured: true,
    dates: "April 1, 2018 to April 15, 2015",
    isBookmarked: true,
  ),
  Internship(
    title: "Intern 2",
    about: "Lorem ipsum dolor sit amet",
    available: 2,
    whoCanApply: "Anyone",
    tag: "Hybrid App Development",
    subtitle: "Lorem ipsum dolor sit amet",
    stipend: "4000/month",
    skillsRequired: "Flutter",
    posted: "2 days ago",
    perks: "Certificate",
    lastdate: "March 28, 2018",
    isFeatured: true,
    dates: "April 1, 2018 to April 15, 2015",
    isBookmarked: true,
  ),
  Internship(
    title: "Intern 2",
    about: "Lorem ipsum dolor sit amet",
    available: 2,
    whoCanApply: "Anyone",
    tag: "Hybrid App Development",
    subtitle: "Lorem ipsum dolor sit amet",
    stipend: "4000/month",
    skillsRequired: "Flutter",
    posted: "2 days ago",
    perks: "Certificate",
    lastdate: "March 28, 2018",
    isFeatured: true,
    dates: "April 1, 2018 to April 15, 2015",
    isBookmarked: true,
  ),
  Internship(
    title: "Intern 2",
    about: "Lorem ipsum dolor sit amet",
    available: 2,
    whoCanApply: "Anyone",
    tag: "Hybrid App Development",
    subtitle: "Lorem ipsum dolor sit amet",
    stipend: "4000/month",
    skillsRequired: "Flutter",
    posted: "2 days ago",
    perks: "Certificate",
    lastdate: "March 28, 2018",
    isFeatured: true,
    dates: "April 1, 2018 to April 15, 2015",
    isBookmarked: true,
  ),
  Internship(
    title: "Intern 2",
    about: "Lorem ipsum dolor sit amet",
    available: 2,
    whoCanApply: "Anyone",
    tag: "Hybrid App Development",
    subtitle: "Lorem ipsum dolor sit amet",
    stipend: "4000/month",
    skillsRequired: "Flutter",
    posted: "2 days ago",
    perks: "Certificate",
    lastdate: "March 28, 2018",
    isFeatured: true,
    dates: "April 1, 2018 to April 15, 2015",
    isBookmarked: true,
  ),
];

class Internship extends StatelessWidget {
  final String tag,
      title,
      subtitle,
      dates,
      stipend,
      lastdate,
      posted,
      about,
      skillsRequired,
      whoCanApply,
      perks;

  final int available;
  final bool isFeatured, isBookmarked;

  Internship({
    @required this.tag,
    @required this.title,
    @required this.subtitle,
    @required this.dates,
    @required this.stipend,
    @required this.lastdate,
    @required this.posted,
    @required this.about,
    @required this.skillsRequired,
    @required this.whoCanApply,
    @required this.perks,
    @required this.available,
    @required this.isFeatured,
    @required this.isBookmarked,
  });

  // color: Color(0xFFFF4C00),

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -4), blurRadius: 3, color: Colors.black26),
        ],
        color: Colors.teal,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildTag(),
              buildPosted(),
            ],
          ),
          Container(
            height: 60,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  child: buildTitles(),
                ),
                Positioned(
                  right: 0,
                  child: buildIconBar(),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
            ),
            margin: EdgeInsets.only(top: 12.0),
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 300,
                      child: ListTile(
                        leading: Icon(
                          Icons.calendar_today,
                        ),
                        title: Text(
                          dates,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      child: ListTile(
                        leading: Opacity(
                            opacity: 0.5,
                            child: Image.asset("lib/assets/rupees.png")),
                        title: Text(
                          stipend,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      child: ListTile(
                        leading: Icon(
                          Icons.check,
                        ),
                        title: Text(
                          lastdate,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column buildTitles() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          about,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        )
      ],
    );
  }

  Widget buildIconBar() {
    return Container(
      // decoration: BoxDecoration(
      // color: Colors.teal.shade600,
      // borderRadius: BorderRadius.all(Radius.circular(40)),
      // boxShadow: [
      //   BoxShadow(
      //       offset: Offset.zero,
      //       blurRadius: 8,
      //       spreadRadius: 8,
      //       color: Colors.black12)
      // ]),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.chat,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              isBookmarked ? Icons.bookmark : Icons.bookmark_border,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget buildPosted() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SmallTextTab(
        posted,
        color: Colors.white,
      ),
    );
  }

  Widget buildTag() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
        // gradient: LinearGradient(colors: [
        //   Colors.black12,
        //   Colors.transparent,
        //   Colors.transparent,
        //   Colors.black12,
        // ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 8,
      ),
      child: SmallTextTab(
        tag,
        // color: Colors.white,
      ),
    );
  }
}
