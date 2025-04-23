// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  opening: Opening.fromJson(json['opening'] as Map<String, dynamic>),
  archives:
      (json['archives'] as List<dynamic>)
          .map((e) => Archive.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'opening': instance.opening,
  'archives': instance.archives,
};

Opening _$OpeningFromJson(Map<String, dynamic> json) => Opening(
  title: json['title'] as String,
  url: json['url'] as String,
  timelines:
      (json['timelines'] as List<dynamic>)
          .map((e) => Timeline.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$OpeningToJson(Opening instance) => <String, dynamic>{
  'title': instance.title,
  'url': instance.url,
  'timelines': instance.timelines,
};

Timeline _$TimelineFromJson(Map<String, dynamic> json) =>
    Timeline(title: json['title'] as String, time: json['time'] as String);

Map<String, dynamic> _$TimelineToJson(Timeline instance) => <String, dynamic>{
  'title': instance.title,
  'time': instance.time,
};

Archive _$ArchiveFromJson(Map<String, dynamic> json) => Archive(
  name: json['name'] as String?,
  title: json['title'] as String,
  url: json['url'] as String,
  x: json['x'] as String?,
  youtube: json['youtube'] as String?,
  songs:
      (json['songs'] as List<dynamic>)
          .map((e) => Song.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ArchiveToJson(Archive instance) => <String, dynamic>{
  'name': instance.name,
  'title': instance.title,
  'url': instance.url,
  'x': instance.x,
  'youtube': instance.youtube,
  'songs': instance.songs,
};

Song _$SongFromJson(Map<String, dynamic> json) => Song(
  title: json['title'] as String,
  artist: json['artist'] as String,
  time: json['time'] as String,
);

Map<String, dynamic> _$SongToJson(Song instance) => <String, dynamic>{
  'title': instance.title,
  'artist': instance.artist,
  'time': instance.time,
};
