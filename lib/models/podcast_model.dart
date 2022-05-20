import 'package:flutter/material.dart';

class PodcastModel {
  final String? coverPhoto;
  final String? title;
  final String? publisherName;
  final IconData? publisherIcon;
  final IconData? icon;
  final bool? isPlaying;

  PodcastModel(
      {this.coverPhoto,
      this.title,
      this.publisherName,
      this.publisherIcon,
      this.icon,
      this.isPlaying});
}
