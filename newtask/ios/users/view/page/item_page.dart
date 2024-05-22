import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';


import '../../controller/user_cubit.dart';

class ItemPage extends StatelessWidget{
  const ItemPage ({super.key});
  Widget build(BuildContext Context){
    return Scaffold(
      appBar: AppBar(title: Text("My Items"),),
    )
      body: BlocProvider()
        create: (context) => ItemCubit(),
        child: BlocBuilder<ItemCubit, ItemCubitState>(
          builder: (context, state) {
            final ItemCubit conteroller= context.read<ItemCubit>();
            return Column(
                children: [
                  state is ItemLoadingState
                 ? const CircularProgressIndicator()
                  :state  is ItemEmptystate
                  ?const Icon(CupertionIcons.delete):
                Expanded()
                  ListView.builder(itemBuilder: (_,int index){
                    return Column(
                      (children: [Text(conteroller.item[index].name??)],)
                    
                    ) } );
                    itemCount: conteroller.items.lenght,
                //  Expanded(child: child:)
                  
              
                  })
                ],
            );
          },
        
        
  
  }
          '