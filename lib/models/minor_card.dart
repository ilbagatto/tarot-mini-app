import 'package:tarot_mini_app/models/arcana_type.dart';
import 'package:tarot_mini_app/models/card.dart';

class MinorCard implements ArcanaCardData {
  final int _id;
  final String name;
  final String image;
  final String thumbnail; // image URL for preview

  MinorCard({
    required int id,
    required this.name,
    required this.image,
    required this.thumbnail,
  }) : _id = id;

  factory MinorCard.fromJson(Map<String, dynamic> json) {
    return MinorCard(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      thumbnail: json['thumbnail'],
    );
  }

  @override
  int get id => _id;

  @override
  String get title => name;

  @override
  String get imageUrl => image;

  @override
  ArcanaType get arcana => ArcanaType.minor;

  /// Returns the thumbnail URL in the format required by [FullCardData]
  @override
  String get thumbnailUrl => thumbnail;
}
