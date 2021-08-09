import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonc_crypto_assistant/BLoC/home/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        bottom: true,
        right: true,
        left: true,
        child: Scaffold(
          appBar: null,
          backgroundColor: Colors.white,
          body: _buildBody(),
        )
    );
  }

  Widget _buildBody() {
    return BlocProvider(
        create: (context) => HomeBloc(),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeInitialState || state is HomeFetchingState) {
              return Container(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              );
            }
            return Container(
              color: Colors.white,
            );
          },
        )
    );
  }
}