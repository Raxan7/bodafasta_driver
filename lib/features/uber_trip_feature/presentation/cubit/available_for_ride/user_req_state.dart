part of 'user_req_cubit.dart';

@immutable
abstract class UserReqState  extends Equatable {
  const UserReqState();
}

class UserReqInitial extends UserReqState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class UserReqLoading extends UserReqState{
   const UserReqLoading();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}



class UserReqLoaded extends UserReqState{
  final List<TripEntity> tripHistoryList;
  const UserReqLoaded({required this.tripHistoryList});

  @override
  // TODO: implement props
  List<Object?> get props => [tripHistoryList];
}

class UserReqDisplayOne extends UserReqState{
  final TripEntity tripDriver;
  const UserReqDisplayOne({required this.tripDriver});

  @override
  // TODO: implement props
  List<Object?> get props => [tripDriver];
}

class UserReqFailureState extends UserReqState {
  final String message;

  const UserReqFailureState(this.message);
  @override
  List<Object> get props => [message];
}