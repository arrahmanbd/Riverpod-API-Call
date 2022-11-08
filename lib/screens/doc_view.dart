import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/doc_provider.dart';
import '../models/doc_model.dart';
import 'details.dart';

class ViewTodo extends ConsumerWidget {
  const ViewTodo({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final _data = ref.watch(DocDataProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text('Doctor List'),
        ),
        body: _data.when(
          data: (_data) {
            return Column(
              children: [
                Expanded(child: ListView.builder(
                  itemCount: _data.data!.length,
                  itemBuilder: (context, index) {
                  return InkWell(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Details(e:_data.data![index].hospitalName.toString(),),
                      ),
                    ), 
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(_data.data![index].doctorImage.toString()),
                      ),
                      title: Text(_data.data![index].doctorName.toString()),
                      subtitle: Text(_data.data![index].doctorFee.toString()),
                    ),
                  );
                }))
              ],
            );
          },
          error: (err, s) => Center(child: CircularProgressIndicator()),
          loading: () => Center(child: CircularProgressIndicator()),
        ));
  }
}
