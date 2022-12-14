import 'package:flutter/material.dart';

import '../../pages/post_add_update_page.dart';

class UpdatePostBtnWidget extends StatelessWidget {
  final post;
  const UpdatePostBtnWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return PostAddUpdatePage(
            isUpdatePost: true,
            post: post,
          );
        }));
      },
      icon: const Icon(Icons.edit),
      label: const Text('Edit'),
    );
  }
}
