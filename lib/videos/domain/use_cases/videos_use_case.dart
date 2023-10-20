import 'package:front_end_unworkout/videos/domain/repositories/videos_repository.dart';

class VideosUseCase {
  final IVideosRepository _iVideosRepository;

  VideosUseCase(this._iVideosRepository);

  Future<void> call({int? id}) {
    return _iVideosRepository.videos(id!);
  }
}
