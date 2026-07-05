import 'package:exercise_projects/features/Student/logic/student_provider.dart';
import 'package:exercise_projects/features/Student/presentation/student_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> students = [
    'Student 1',
    'Student 2',
    'Student 3',
    'Student 4',
    'Student 5',
    'Student 6',
    'Student 7',
    'Student 8',
    'Student 9',
    'Student 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.menu,color: Colors.white,),
          onPressed: () {
            // Handle menu button press
          },
        ),

        title: Center(child: const Text('Students List', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu_open,color: Colors.white,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StudentScreen(),),
              );
            },
          ),
        ],
      ),
      body: Consumer<StudentProvider>(
        builder: (context,value,child) {
          return SingleChildScrollView(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey, 
              endIndent: 16,
            ),
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue.withOpacity( 0.2),
                      child: Icon(Icons.person, color: Colors.blue),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        students[index],
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
          
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                          value.addItemcheck(students[index]);
                            print('Checked items: ${value.itemscheck}');
                          },
                          icon: const Icon(Icons.check_circle, color: Colors.green),
                        ),
                        IconButton(
                          onPressed: () {
                          value.addItemcancel(students[index]);
                            print('Cancelled items: ${value.itemscancel}');
                          },
                          icon: const Icon(Icons.cancel, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: students.length,
              shrinkWrap: true,
            ),
          );
        }
      ),
    );
  }
}
