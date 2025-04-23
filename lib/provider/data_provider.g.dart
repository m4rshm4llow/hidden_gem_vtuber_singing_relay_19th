// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dataHash() => r'8904ea3be54549c8847b92bac94b62f9b61b161a';

/// See also [data].
@ProviderFor(data)
final dataProvider = FutureProvider<Data>.internal(
  data,
  name: r'dataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DataRef = FutureProviderRef<Data>;
String _$songListHash() => r'f42c3e30296e0d5b08ffefa4b2d2c333898c022d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [songList].
@ProviderFor(songList)
const songListProvider = SongListFamily();

/// See also [songList].
class SongListFamily extends Family<List<Song>> {
  /// See also [songList].
  const SongListFamily();

  /// See also [songList].
  SongListProvider call(String videoId) {
    return SongListProvider(videoId);
  }

  @override
  SongListProvider getProviderOverride(covariant SongListProvider provider) {
    return call(provider.videoId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'songListProvider';
}

/// See also [songList].
class SongListProvider extends AutoDisposeProvider<List<Song>> {
  /// See also [songList].
  SongListProvider(String videoId)
    : this._internal(
        (ref) => songList(ref as SongListRef, videoId),
        from: songListProvider,
        name: r'songListProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$songListHash,
        dependencies: SongListFamily._dependencies,
        allTransitiveDependencies: SongListFamily._allTransitiveDependencies,
        videoId: videoId,
      );

  SongListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.videoId,
  }) : super.internal();

  final String videoId;

  @override
  Override overrideWith(List<Song> Function(SongListRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: SongListProvider._internal(
        (ref) => create(ref as SongListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        videoId: videoId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<Song>> createElement() {
    return _SongListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SongListProvider && other.videoId == videoId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, videoId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SongListRef on AutoDisposeProviderRef<List<Song>> {
  /// The parameter `videoId` of this provider.
  String get videoId;
}

class _SongListProviderElement extends AutoDisposeProviderElement<List<Song>>
    with SongListRef {
  _SongListProviderElement(super.provider);

  @override
  String get videoId => (origin as SongListProvider).videoId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
