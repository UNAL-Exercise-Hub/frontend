part of 'videos_bloc.dart';

@freezed
class VideosEvent with _$VideosEvent {
  const factory VideosEvent.videos(int id) = Videos;
}
