import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testApp/features/screens/home/cubit/user_cubit.dart';

import '../../../components/custom_refresh/refresher.dart';
import '../../../components/custom_refresh/src/smart_refresher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().refreshController =
        RefreshController(initialRefresh: false);
    context.read<UserCubit>().page = 1;
    context.read<UserCubit>().getUsersList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        return Scaffold(
            body: customRefresher(
                controller: context.read<UserCubit>().refreshController,
                onRefresh: () => {context.read<UserCubit>().getUsersList()},
                onLoading: () => context.read<UserCubit>().getUsersList(),
                enablePullUp: state.hasReachedMax ? false : true,
                child: state.userList!.isEmpty
                    ? Center(
                        child: Container(
                          child: Text('No Data'),
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            state.userList?.length ?? 0,
                            (index) => ListTile(
                                  enabled: false,
                                  title: Text(
                                    state.userList?[index].firstName ?? '',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.edit),
                                      ),
                                      24.horizontalSpace,
                                      IconButton(
                                        onPressed: () {
                                          context.read<UserCubit>().deleteUser(
                                              state.userList?[index]);
                                        },
                                        icon: Icon(Icons.delete),
                                      )
                                    ],
                                  ),
                                )),
                      )));
      },
    );
  }
}
