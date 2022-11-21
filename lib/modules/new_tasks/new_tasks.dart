import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtharwat/shared/blockapp/cubit_app.dart';
import '../../shared/blockapp/states_app.dart';
import '../../shared/components/components.dart';


class NewTasks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state) {},
      builder: (context,state) {

        var tasks = AppCubit.get(context).tasks;

        return ListView.separated(
          itemBuilder:(context,index) => buildTaskItem(tasks[index]),
          separatorBuilder: (context,index) => Padding(

            padding: EdgeInsetsDirectional.only(

              start: 20.0,
            ),
            child: Container(

              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],

            ),

          ),
          itemCount: tasks.length,

        );

      },
    );



  }


}
