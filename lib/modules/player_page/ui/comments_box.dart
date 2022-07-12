import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:kdrama/modules/player_page/repository/model/comment.dart';

class CommentsBox extends StatefulWidget {
  const CommentsBox({Key? key, required this.filedata}) : super(key: key);
  final List<Comment> filedata;
  @override
  State<CommentsBox> createState() => _CommentsBoxState();
}

class _CommentsBoxState extends State<CommentsBox> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController commentController = TextEditingController();

  Widget commentChild(data) {
    print(widget.filedata);
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(data[i]['pic'] + "$i")),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CommentBox(
      header: Text('Tst'),
      userImage:
          "https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400",
      labelText: 'Write a comment...',
      withBorder: false,
      errorText: 'Comment cannot be blank',
      sendButtonMethod: () {
        if (formKey.currentState!.validate()) {
          print(commentController.text);
          setState(() {
            var value = {
              'name': 'New User',
              'pic':
                  'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
              'message': commentController.text
            };
            // filedata.insert(0, value);
          });
          commentController.clear();
          FocusScope.of(context).unfocus();
        } else {
          print("Not validated");
        }
      },
      formKey: formKey,
      commentController: commentController,
      backgroundColor: Colors.amber,
      textColor: Colors.white,
      sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
      child: commentChild(widget.filedata),
    );
  }
}
