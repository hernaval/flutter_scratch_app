import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  _TagListState createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final tagsList = <String>['All', '⚡️ Popular', '⭐️ Featured'];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      height: 40,
      child:ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tagsList.length,
          itemBuilder: (context, index) => GestureDetector(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 20
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor,
              width: 1
        ),
        borderRadius: BorderRadius.circular(20)
      ),

      child: Text(tagsList[index]),
    ),
    ),
          separatorBuilder: (_, index) => SizedBox(
    width: 15,
    ),
    )
    );
  }
}
