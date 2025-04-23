// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Data {

 Opening get opening; List<Archive> get archives;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.opening, opening) || other.opening == opening)&&const DeepCollectionEquality().equals(other.archives, archives));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,opening,const DeepCollectionEquality().hash(archives));

@override
String toString() {
  return 'Data(opening: $opening, archives: $archives)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
 Opening opening, List<Archive> archives
});




}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? opening = null,Object? archives = null,}) {
  return _then(Data(
opening: null == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as Opening,archives: null == archives ? _self.archives : archives // ignore: cast_nullable_to_non_nullable
as List<Archive>,
  ));
}

}



/// @nodoc
mixin _$Opening {

 String get title; String get url; List<Timeline> get timelines;
/// Create a copy of Opening
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpeningCopyWith<Opening> get copyWith => _$OpeningCopyWithImpl<Opening>(this as Opening, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Opening&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.timelines, timelines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,url,const DeepCollectionEquality().hash(timelines));

@override
String toString() {
  return 'Opening(title: $title, url: $url, timelines: $timelines)';
}


}

/// @nodoc
abstract mixin class $OpeningCopyWith<$Res>  {
  factory $OpeningCopyWith(Opening value, $Res Function(Opening) _then) = _$OpeningCopyWithImpl;
@useResult
$Res call({
 String title, String url, List<Timeline> timelines
});




}
/// @nodoc
class _$OpeningCopyWithImpl<$Res>
    implements $OpeningCopyWith<$Res> {
  _$OpeningCopyWithImpl(this._self, this._then);

  final Opening _self;
  final $Res Function(Opening) _then;

/// Create a copy of Opening
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? url = null,Object? timelines = null,}) {
  return _then(Opening(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,timelines: null == timelines ? _self.timelines : timelines // ignore: cast_nullable_to_non_nullable
as List<Timeline>,
  ));
}

}



/// @nodoc
mixin _$Timeline {

 String get title; String get time;
/// Create a copy of Timeline
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimelineCopyWith<Timeline> get copyWith => _$TimelineCopyWithImpl<Timeline>(this as Timeline, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Timeline&&(identical(other.title, title) || other.title == title)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,time);

@override
String toString() {
  return 'Timeline(title: $title, time: $time)';
}


}

/// @nodoc
abstract mixin class $TimelineCopyWith<$Res>  {
  factory $TimelineCopyWith(Timeline value, $Res Function(Timeline) _then) = _$TimelineCopyWithImpl;
@useResult
$Res call({
 String title, String time
});




}
/// @nodoc
class _$TimelineCopyWithImpl<$Res>
    implements $TimelineCopyWith<$Res> {
  _$TimelineCopyWithImpl(this._self, this._then);

  final Timeline _self;
  final $Res Function(Timeline) _then;

/// Create a copy of Timeline
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? time = null,}) {
  return _then(Timeline(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}



/// @nodoc
mixin _$Archive {

 String? get name; String get title; String get url; String? get x; String? get youtube; List<Song> get songs;
/// Create a copy of Archive
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArchiveCopyWith<Archive> get copyWith => _$ArchiveCopyWithImpl<Archive>(this as Archive, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Archive&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.x, x) || other.x == x)&&(identical(other.youtube, youtube) || other.youtube == youtube)&&const DeepCollectionEquality().equals(other.songs, songs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,url,x,youtube,const DeepCollectionEquality().hash(songs));

@override
String toString() {
  return 'Archive(name: $name, title: $title, url: $url, x: $x, youtube: $youtube, songs: $songs)';
}


}

/// @nodoc
abstract mixin class $ArchiveCopyWith<$Res>  {
  factory $ArchiveCopyWith(Archive value, $Res Function(Archive) _then) = _$ArchiveCopyWithImpl;
@useResult
$Res call({
 String? name, String title, String url, String? x, String? youtube, List<Song> songs
});




}
/// @nodoc
class _$ArchiveCopyWithImpl<$Res>
    implements $ArchiveCopyWith<$Res> {
  _$ArchiveCopyWithImpl(this._self, this._then);

  final Archive _self;
  final $Res Function(Archive) _then;

/// Create a copy of Archive
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? title = null,Object? url = null,Object? x = freezed,Object? youtube = freezed,Object? songs = null,}) {
  return _then(Archive(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,x: freezed == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String?,youtube: freezed == youtube ? _self.youtube : youtube // ignore: cast_nullable_to_non_nullable
as String?,songs: null == songs ? _self.songs : songs // ignore: cast_nullable_to_non_nullable
as List<Song>,
  ));
}

}



/// @nodoc
mixin _$Song {

 String get title; String get artist; String get time;
/// Create a copy of Song
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SongCopyWith<Song> get copyWith => _$SongCopyWithImpl<Song>(this as Song, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Song&&(identical(other.title, title) || other.title == title)&&(identical(other.artist, artist) || other.artist == artist)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,artist,time);

@override
String toString() {
  return 'Song(title: $title, artist: $artist, time: $time)';
}


}

/// @nodoc
abstract mixin class $SongCopyWith<$Res>  {
  factory $SongCopyWith(Song value, $Res Function(Song) _then) = _$SongCopyWithImpl;
@useResult
$Res call({
 String title, String artist, String time
});




}
/// @nodoc
class _$SongCopyWithImpl<$Res>
    implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._self, this._then);

  final Song _self;
  final $Res Function(Song) _then;

/// Create a copy of Song
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? artist = null,Object? time = null,}) {
  return _then(Song(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,artist: null == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


// dart format on
