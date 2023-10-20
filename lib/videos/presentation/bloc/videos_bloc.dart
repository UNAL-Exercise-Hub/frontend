import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:front_end_unworkout/videos/domain/use_cases/videos_use_case.dart';

part 'videos_bloc.freezed.dart';
part 'videos_event.dart';
part 'videos_state.dart';

class VideosBloc extends Bloc<VideosEvent, VideosState> {
  final VideosUseCase videosUseCase;

  VideosBloc({
    required this.videosUseCase,
  }) : super(const VideosState.initial()) {
    on<VideosEvent>((event, emit) async {
      await event.map(videos: (event) async => await _videosEvent(event, emit));
    });
  }

  Future<void> _videosEvent(Videos event, Emitter<VideosState> emit) async {
    emit(const VideosState.loading());
    try {
      await videosUseCase.call(id: event.id);
      emit(const VideosState.doneVideos());
    } catch (e) {
      emit(const VideosState.error());
    }
  }
}
