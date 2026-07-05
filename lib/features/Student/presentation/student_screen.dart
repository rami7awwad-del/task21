import 'package:exercise_projects/features/Student/logic/student_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: const Text('Attendance Summary',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
      ),
      body:Consumer<StudentProvider>(
        builder: (context,value,child) {
          return SingleChildScrollView(
            //'Present Students'
            child: Column(
               children:[


                ListTile(
                  tileColor: Colors.green.withOpacity(0.1),
                  leading: const Icon(Icons.check_circle, color: Colors.green),
                  title: Text('Present Students   (${value.itemscheck.length})',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.green),),
                ),



                ListView.separated(
                  itemBuilder:(context, index){ return Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: const Icon(Icons.person, color: Colors.green),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        value.itemscheck[index],
                        style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
          
                     subtitle: Padding(
                       padding: const EdgeInsets.only(left: 8.0, ),  
                       child: Text(
                                       "ID: 202600${index + 1}",
                                       style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                                     ),
                     ),
          
                   
                  ),
                ); }, 
                  separatorBuilder: (context, index) => const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey, 
                  endIndent: 16,
                ),
                   itemCount: value.itemscheck.length,
                  shrinkWrap: true,
                ),

                
                ListTile(
                  tileColor: Colors.red.withOpacity(0.1),
                  leading: const Icon(Icons.cancel, color: Colors.red),
                  title: Text('Absent Students   (${value.itemscancel.length}) ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.red),),
                ),




                ListView.separated(
                  itemBuilder:(context, index){ return Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: const Icon(Icons.person, color: Colors.red),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        value.itemscancel[index],
                        style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
          
                     subtitle: Padding(
                       padding: const EdgeInsets.only(left: 8.0, ),  
                       child: Text(
                                       "ID: 202600${index + 1}",
                                       style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                                     ),
                     ),
          
                  ),
                ); }, 
                  separatorBuilder: (context, index) => const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey, 
                  endIndent: 16,
                ),
                   itemCount: value.itemscancel.length,
                  shrinkWrap: true,
                ),
               ],
            ),
          );
        }
      ),
    );
  }
}