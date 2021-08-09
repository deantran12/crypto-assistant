part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class HomeInitialState extends HomeState {}

class HomeFetchingState extends HomeState{}

class HomeFetchDataSuccessState extends HomeState{}

class HomeFetchDataFailedState extends HomeState{}