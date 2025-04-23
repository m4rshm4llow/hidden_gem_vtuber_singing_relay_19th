import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/data/data.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/gen/assets.gen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_provider.g.dart';

@Riverpod(keepAlive: true)
FutureOr<Data> data(Ref ref) async {
  final json = await rootBundle.loadString(Assets.json.data);
  return Data.fromJson(jsonDecode(json));
}

@riverpod
List<Song> songList(Ref ref, String videoId) {
  final archives = ref.watch(dataProvider).valueOrNull?.archives ?? [];
  return archives.firstWhere((e) => e.url.contains(videoId)).songs;
}
