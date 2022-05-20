import 'package:flutter/material.dart';

class ContentModel {
  final String? detailPhoto;
  final int? viewCount;
  final String? title;
  final String? content;
  final bool? isLiked;
  final String? publisherName;
  final String? publisherIcon;
  final String? coverPhoto;

  ContentModel(
      {this.detailPhoto,
      this.viewCount,
      this.title,
      this.content,
      this.coverPhoto,
      this.isLiked,
      this.publisherIcon,
      this.publisherName});
}
