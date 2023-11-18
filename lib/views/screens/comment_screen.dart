// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timeago/timeago.dart' as tago;
import '../../controller/comment_controller.dart';

class CommentScreen extends StatelessWidget {
  final String id;
  CommentScreen({
    Key? key,
    required this.id,
  }) : super(key: key);
  TextEditingController commentController = TextEditingController();
  CommentController commentControllers = Get.put(CommentController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    commentControllers.updatePostId(id);
    return Scaffold(
        body: SingleChildScrollView(
            child: SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          Expanded(
            child: Obx(() {
              return ListView.builder(
                  itemCount: commentControllers.comments.length,
                  itemBuilder: (context, index) {
                    final comment = commentControllers.comments[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage: NetworkImage(comment.profilePhoto),
                      ),
                      title: Wrap(children: [
                        Text(
                          comment.username,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          comment.comment,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ]),
                      subtitle: Row(children: [
                        Text(
                          tago.format(comment.datePublished.toDate()),
                          style: const TextStyle(
                              fontSize: 12, color: Colors.white),
                        ),
                        const SizedBox(width: 10),
                        Text('${comment.likes.length} likes',
                            style: const TextStyle(
                                fontSize: 12, color: Colors.white))
                      ]),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.favorite)),
                    );
                  });
            }),
          ),
          const Divider(),
          ListTile(
            title: TextFormField(
              controller: commentController,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                  hintText: 'Comment',
                  hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red))),
            ),
            trailing: TextButton(
              onPressed: () =>
                  commentControllers.postComment(commentController.text),
              child: const Text(
                'Send',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    )));
  }
}
