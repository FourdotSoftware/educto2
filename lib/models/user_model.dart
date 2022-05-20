import 'package:educto2/models/content_serie_model.dart';
import 'package:educto2/models/podcast_serie_model.dart';
import 'package:flutter/material.dart';

class UserModel {
  final String? coverPhoto;
  final String? profilePhoto;
  final String? publisherName;
  final String? publisherMail;
  final String? bio;
  final String? followerCount;
  final String? readcount;
  final String? contentCount;
  final List<ContentSerieModel>? contentSeries;
  final List<PodcastSerieModel>? podcastSeries;

  UserModel(
      {this.coverPhoto,
      this.profilePhoto,
      this.publisherName,
      this.publisherMail,
      this.bio,
      this.followerCount,
      this.readcount,
      this.contentCount,
      this.contentSeries,
      this.podcastSeries});
}
