import 'package:educto2/models/podcast_model.dart';
import 'package:flutter/material.dart';

class PodcastSerieModel {
  final String? coverPhoto;
  final String? title;
  final IconData? publisherIcon;
  final String? publisherName;
  final String? desc;
  final List<PodcastModel>? podcasts;

  PodcastSerieModel(
      {this.coverPhoto,
      this.title,
      this.publisherIcon,
      this.publisherName,
      this.desc,
      this.podcasts});
}
