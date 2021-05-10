import 'package:estudo_bloc/app/modules/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estudo Cubit'),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeErrorState) {
            return Text(state.message);
          }

          if (state is HomeDoneState) {
            return ListView.builder(
              itemCount: state.users.length,
              itemBuilder: (_, i) {
                return ListTile(
                  title: Text(state.users[i].name),
                  subtitle: Text(state.users[i].company.name),
                );
              },
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
