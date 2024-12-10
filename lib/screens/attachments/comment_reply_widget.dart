import 'package:flutter/material.dart';

import '../../models/comment_vm.dart';
import 'comment_widget.dart';

class CommentReplyWidget extends StatelessWidget {
  final CommentVm commentVm;
  const CommentReplyWidget({required this.commentVm, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const Opacity(
        opacity: 0.0,
        child: CircleAvatar(
          backgroundColor: Colors.red,
        ),
      ),
      title: CommentWidget(commentVm: commentVm),
    );
  }
}
