import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front_end_unworkout/base/presentation/widgets/error_indicator.dart';
import 'package:front_end_unworkout/base/presentation/widgets/loading_indicator.dart';
import 'package:front_end_unworkout/routines/presentation/bloc/routine_bloc.dart';
import 'package:front_end_unworkout/routines/presentation/views/routine_view.dart';
import 'package:front_end_unworkout/routines/presentation/widgets/video_detail_widget.dart';
import 'package:front_end_unworkout/videos/presentation/pages/videos_page.dart';
import 'package:get_it/get_it.dart';

class RoutinePage extends StatelessWidget{
  const RoutinePage({Key? key}): super (key: key);

  @override
  Widget build(BuildContext context){
    const bool isMobile = kIsWeb;
    return BlocProvider<RoutineBloc>(
        create: (context) => GetIt.instance<RoutineBloc>(),
        child: Scaffold(
            appBar: AppBar(
              title: const Text("UNEXCERCISEHUB"),
              backgroundColor: const Color(0xFF2e23ac),
              centerTitle: true,
            ),
            backgroundColor: Colors.white,
            body: BlocBuilder<RoutineBloc, RoutineState>(
                builder: (context, state){
                  return state.when(
                      initial: (){
                        context.read<RoutineBloc>().add(const RoutineEvent.getRoutine(1));
                        return LoadingIndicator();
                      },
                      loading: () => LoadingIndicator(),
                      doneRoutine: (){
                        /*Navigator.push(context, MaterialPageRoute(builder: (context) => VideosPage()));*/
                        return RoutineView(onPressed: (){
                          showBottomSheet(context: context, builder: (BuildContext context){
                            return const VideoDetailWidget(isMobile: isMobile,);
                          });
                        },);
                      },
                      error: () => ErrorIndicator(onPressed: () {
                        context.read<RoutineBloc>().add(const RoutineEvent.getRoutine(1));
                      })
                  );
                }
            )
        )
    );
  }
}