part of 'videos_bloc.dart';

@freezed
class VideosState with _$VideosState {
  const factory VideosState.initial() = Initial;
  const factory VideosState.loading() = Loading;
  const factory VideosState.doneVideos() = DoneVideos;
  const factory VideosState.error() = Error;
}
