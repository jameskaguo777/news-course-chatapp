import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:sheria_pocket/widget/text.dart';

class DetailNews extends StatefulWidget {
  DetailNews({Key key}) : super(key: key);

  _DetailNews createState() => _DetailNews();
}

class _DetailNews extends State<DetailNews> {

  static const kHtml = '''<h1>Heading 1</h1>
    <h2>Heading 2</h2>
    <h3>Heading 3</h3>
    <h4>Heading 4</h4>
    <h5>Heading 5</h5>
    <h6>Heading 6</h6>
    <p>A paragraph with <strong>strong</strong> <em>emphasized</em> text.</p>

    <p>And of course, cat image:</p>
    <figure>
      <img src="https://media.giphy.com/media/6VoDJzfRjJNbG/giphy-downsized.gif" width="250" height="171" />
      <figcaption>Source: <a href="https://gph.is/QFgPA0">https://gph.is/QFgPA0</a></figcaption>
    </figure>
    ''';


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Text long titler yeah this keyboard sucks',
          style: TextStyle(color: Colors.black87),
          overflow: TextOverflow.ellipsis,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leadingWidth: 90,
        actions: [
          Icon(
            Icons.notifications_active,
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Center(
            child: Wrap(
              direction: Axis.horizontal,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.start,
              children: [
                IconButton(
                  color: Colors.black87,
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints(maxWidth: 20),
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () => Navigator.pop(context),
                  tooltip: 'Back',
                ),
                Text(
                  'Back',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontFamily: 'Poppins-SemiBold'),
                ),
              ],
            ),
          ),
        ),
        primary: true,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
        color: Colors.white,
        child: SingleChildScrollView(
                  child: Column(
            children: [
              _body(),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _body() {
    return Container(
        color: Colors.white,
        width: double.maxFinite,
        // height: MediaQuery.of(context).size.height*.7,
        child: Column(
          children: [
    Text(
      'Tezt cool tile with long expectection to be accepted in our spell context',

      style: TextStyle(
        color: Colors.black87,
        fontFamily: 'Poppins-Bold',
        fontSize: 20.0,
      ),
    ),
    SizedBox(height: 10,),
    Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.calendar_today, color: Colors.black, size: 20),
            SizedBox(
              width: 10,
            ),
            Text(
              '12 June 2020',
              style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Poppins-Medium',
                fontSize: 14,
              ),
              
            ),
          ],
        ),
    SizedBox(height: 10),
    CachedNetworkImage(
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/000/192/828/non_2x/vector-abstract-landscape-illustration.jpg',
    ),
    SizedBox(height: 5,),
    HtmlWidget(
    kHtml,
    onTapUrl: (url) => showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('onTapUrl'),
        content: Text(url),
      ),
    ),
          ),
          ],
        ),
      );
  }
}
