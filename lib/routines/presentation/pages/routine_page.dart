import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front_end_unworkout/base/presentation/widgets/error_indicator.dart';
import 'package:front_end_unworkout/base/presentation/widgets/loading_indicator.dart';
import 'package:front_end_unworkout/base/presentation/widgets/navbar.dart';
import 'package:front_end_unworkout/routines/presentation/bloc/routine_bloc.dart';
import 'package:front_end_unworkout/routines/presentation/views/routine_view.dart';
import 'package:get_it/get_it.dart';

class RoutinePage extends StatelessWidget{
  const RoutinePage({Key? key}): super (key: key);

  @override
  Widget build(BuildContext context){
    return BlocProvider<RoutineBloc>(
        create: (context) => GetIt.instance<RoutineBloc>(),
        child: Scaffold(
            appBar: Navbar(),
            backgroundColor: Colors.white,
            body: BlocBuilder<RoutineBloc, RoutineState>(
                builder: (context, state){
                  return state.when(
                      initial: (){
                        context.read<RoutineBloc>().add(const RoutineEvent.getRoutine());
                        return const RoutineView();
                      },
                      loading: () => LoadingIndicator(),
                      doneRoutine: (){
                        /*Navigator.push(context, MaterialPageRoute(builder: (context) => RoutinesPage()));*/
                        return const Text("");
                      },
                      error: () => ErrorIndicator(onPressed: () {
                        context.read<RoutineBloc>().add(const RoutineEvent.getRoutine());
                      })
                  );
                }
            )
        )
    );
  }
}