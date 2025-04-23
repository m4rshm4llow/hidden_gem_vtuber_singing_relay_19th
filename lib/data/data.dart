// ignore_for_file: annotate_overrides

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
@JsonSerializable()
class Data with _$Data {
  const Data({required this.opening, required this.archives});
  final Opening opening;
  final List<Archive> archives;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);

  Map<String, Object?> toJson() => _$DataToJson(this);
}

@freezed
@JsonSerializable()
class Opening with _$Opening {
  const Opening({required this.title, required this.url, required this.timelines});

  final String title;
  final String url;
  final List<Timeline> timelines;

  factory Opening.fromJson(Map<String, Object?> json) => _$OpeningFromJson(json);

  Map<String, Object?> toJson() => _$OpeningToJson(this);
}

@freezed
@JsonSerializable()
class Timeline with _$Timeline {
  const Timeline({required this.title, required this.time});

  final String title;
  final String time;

  factory Timeline.fromJson(Map<String, Object?> json) => _$TimelineFromJson(json);

  Map<String, Object?> toJson() => _$TimelineToJson(this);
}

@freezed
@JsonSerializable()
class Archive with _$Archive {
  const Archive({
    this.name,
    required this.title,
    required this.url,
    this.x,
    this.youtube,
    required this.songs,
  });

  final String? name;
  final String title;
  final String url;
  final String? x;
  final String? youtube;
  final List<Song> songs;

  factory Archive.fromJson(Map<String, Object?> json) => _$ArchiveFromJson(json);

  Map<String, Object?> toJson() => _$ArchiveToJson(this);
}

@freezed
@JsonSerializable()
class Song with _$Song {
  const Song({required this.title, required this.artist, required this.time});

  final String title;
  final String artist;
  final String time;

  factory Song.fromJson(Map<String, Object?> json) => _$SongFromJson(json);

  Map<String, Object?> toJson() => _$SongToJson(this);
}
