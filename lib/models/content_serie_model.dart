import 'package:educto2/models/content_model.dart';
import 'package:flutter/material.dart';

class ContentSerieModel {
  final String? coverPhoto;
  final String? title;
  final IconData? publisherIcon;
  final String? publisherName;
  final String? desc;

  final List<ContentModel>? contents;

  ContentSerieModel(
      {this.coverPhoto,
      this.title,
      this.publisherIcon,
      this.publisherName,
      this.desc,
      this.contents});
}
