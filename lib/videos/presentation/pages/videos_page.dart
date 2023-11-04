import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front_end_unworkout/base/presentation/widgets/error_indicator.dart';
import 'package:front_end_unworkout/base/presentation/widgets/loading_indicator.dart';
import 'package:front_end_unworkout/videos/presentation/bloc/videos_bloc.dart';
import 'package:front_end_unworkout/videos/presentation/widgets/videos_view.dart';
import 'package:get_it/get_it.dart';

class VideosPage extends StatelessWidget{
  const VideosPage({Key? key}): super (key: key);

  @override
  Widget build(BuildContext context){
    return BlocProvider<VideosBloc>(
        create: (context) => GetIt.instance<VideosBloc>(),
        child: Scaffold(
            appBar: AppBar(
              title: const Text("UNWORKOUT"),
              backgroundColor: const Color(0xFFD60909),
              centerTitle: true,
            ),
            backgroundColor: Colors.white,
            body: BlocBuilder<VideosBloc, VideosState>(
                builder: (context, state){
                  return state.when(
                      initial: (){
                        context.read<VideosBloc>().add(const VideosEvent.videos(1));
                        return LoadingIndicator();
                      },
                      loading: () => LoadingIndicator(),
                      doneVideos: (){
                        /*Navigator.push(context, MaterialPageRoute(builder: (context) => VideosPage()));*/
                        return VideosView();
                      },
                      error: () => ErrorIndicator(onPressed: () {
                        context.read<VideosBloc>().add(const VideosEvent.videos(1));
                      })
                  );
                }
            )
        )
    );
  }
}