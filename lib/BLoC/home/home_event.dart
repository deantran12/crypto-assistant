part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class RefreshHomeEvent extends HomeEvent{}