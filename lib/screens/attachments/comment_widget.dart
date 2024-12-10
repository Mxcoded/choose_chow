import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/models/comment_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommentWidget extends StatelessWidget {
  final CommentVm commentVm;
  const CommentWidget({
    required this.commentVm,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String viewingString;
    if (commentVm.isForMultipleComments == true) {
      viewingString = "View";
    } else if (commentVm.isComment == true) {
      viewingString = "Viewing";
    } else {
      viewingString = "";
    }
    return ListTile(
      minVerticalPadding: 0,
      contentPadding: EdgeInsets.zero,
      titleAlignment: ListTileTitleAlignment.top,
      leading: SizedBox(
        height: double.infinity,
        child: CircleAvatar(
          backgroundImage: AssetImage(
            commentVm.imageUrl,
          ),
        ),
      ),
      title: ListTile(
        minVerticalPadding: 0,
        contentPadding: EdgeInsets.zero,
        titleAlignment: ListTileTitleAlignment.top,
        title: RobotoCustomText(
          text: commentVm.name,
          fontSize: 16.dp,
          fontWeight: FontWeight.w600,
        ),
        subtitle: RobotoCustomText(
          text: commentVm.date,
          fontWeight: FontWeight.w600,
          textColor: ColorUtility.hexadecimalGrey05,
        ),
      ),
      subtitle: ListTile(
        minVerticalPadding: 0,
        contentPadding: EdgeInsets.zero,
        titleAlignment: ListTileTitleAlignment.top,
        title: RobotoCustomText(
          text: commentVm.comment,
          fontSize: 13.dp,
          fontWeight: FontWeight.w400,
        ),
        subtitle: commentVm.isComment == true ||
                commentVm.isForMultipleComments == true
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: InkWell(
                      onTap: commentVm.isForMultipleComments == true
                          ? () {
                              Navigator.pushNamed(
                                context,
                                "/single_comment_widget",
                                arguments: commentVm.copyWith(
                                  isForMultipleComments: false,
                                  isComment: true,
                                ),
                              );
                            }
                          : null,
                      child: RobotoCustomText(
                        text: commentVm.numberOfReplies! <= 1
                            ? "$viewingString ${commentVm.numberOfReplies} Reply"
                            : "$viewingString ${commentVm.numberOfReplies} Replies",
                        textColor: ColorUtility.primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        RobotoCustomText(
                          text: " ${commentVm.numberOfLike}",
                          fontWeight: FontWeight.w600,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Stack(
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage(AssetImageUtility.collectionImage2),
                        ),
                        Positioned(
                          top: 25,
                          left: 30,
                          child: Icon(
                            FontAwesomeIcons.solidHeart,
                            color: Colors.red,
                            size: 15.dp,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            : null,
      ),
    );
  }
}
