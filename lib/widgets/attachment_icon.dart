import 'package:flutter/material.dart';
import 'package:top_movies_flutter/index.dart';

class AttachmentIcon extends StatelessWidget {
  const AttachmentIcon({Key? key, required this.attachment, this.onTap})
      : super(key: key);

  final Attachment attachment;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return attachment.type == AttachmentType.doc
        ? AppIcons.attachmentDoc
        : AppIcons.attachmentPdf;
  }
}
