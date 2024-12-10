part of 'menu_index_cubit.dart';

class MenuIndexState extends Equatable {
  final int index;
  const MenuIndexState({
    this.index = 0,
  });

  @override
  List<Object> get props => [
        index,
      ];
}
