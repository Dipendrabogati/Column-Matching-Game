import 'package:flutter/material.dart';
//import 'package:game/paint_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var col1;
  var col2;
  var showPoint=false;
  int point=0;
  int count=0;
  var colAName='';
  var colBName='';
  List indexes=[];
  // var answer={
  //   '0':1,
  //   '1':2,
  //   '2':0,
  // };
  // bool entireColAflag=false;
  // bool entireColBflag=false;
  List<bool> col1Flag=[false,false,false];
  List<bool> col2Flag=[false,false,false];
  List isSelected=[false,false,false,false,false,false];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const  Text('Match the following Column'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(showPoint==true?'Your point is $point':'Your point is 0',
                style:const  TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text('hello'),
                          const SizedBox(width: 6,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                if(col1Flag[0]==false) {
                                  col1 = 0;
                                  col1Flag[0] = true;
                                  isSelected[0] = true;
                                  count+=1;
                                  indexes.add(col1);
                                  colAName='hello';
                                }
                              });
                              if(count%2==0){
                                if(colAName==colBName){
                                  point+=1;
                                }
                              }

                            },
                            child: Container(
                              height: 12,
                              width: 12,
                              color:isSelected[0]==true?Colors.green: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text('data'),
                          const SizedBox(width:6,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                if(col1Flag[1]==false) {
                                  col1 = 1;
                                  col1Flag[1] = true;
                                  isSelected[1] = true;
                                  indexes.add(col1);
                                  count+=1;
                                  colAName='data';
                                }
                              });
                              if(count%2==0){
                                if(colAName==colBName){
                                  point+=1;
                                }
                              }
                            },
                            child: Container(
                              height: 12,
                              width: 12,
                              color:isSelected[1]==true?Colors.green: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text('dipendra'),
                          const SizedBox(width: 6,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                if(col1Flag[2]==false) {
                                  col1 = 2;
                                  col1Flag[2] = true;
                                  isSelected[2] = true;
                                  count+=1;
                                  indexes.add(col1);
                                  colAName='dipendra';

                                }
                              });
                              if(count%2==0){
                                if(colAName==colBName){
                                  point+=1;
                                }
                              }
                            },
                            child: Container(
                              height: 12,
                              width: 12,
                              color:isSelected[2]==true?Colors.green: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 100,
                      child: Column(
                        children: [
                          if(count%2==0&&count!=0)...{
                            col1Flag[0]==true&&(col2Flag[0]==true||col2Flag[1]==true||col2Flag[2]==true)?
                            CustomPaint(painter: LinePainter(col1,col2,indexes)):Container(),
                          },
                          if(count%2==0&&count!=0)...{
                            col1Flag[1]==true&&(col2Flag[0]==true||col2Flag[1]==true||col2Flag[2]==true)?
                            CustomPaint(painter: LinePainter(col1,col2,indexes),):Container(),},
                          if(count%2==0&&count!=0)...{
                            col1Flag[2]==true&&(col2Flag[0]==true||col2Flag[1]==true||col2Flag[2]==true)?
                            CustomPaint(painter: LinePainter(col1,col2,indexes),):Container(),},
                          if(count%2==0&&count!=0)...{
                            col2Flag[0]==true&&(col1Flag[0]==true||col1Flag[1]==true||col1Flag[2]==true)?
                            CustomPaint(painter: LinePainter(col1,col2,indexes)):Container(),},
                          if(count%2==0&&count!=0)...{
                            col2Flag[1]==true&&(col1Flag[0]==true||col1Flag[1]==true||col1Flag[2]==true)?
                            CustomPaint(painter: LinePainter(col1,col2,indexes)):Container(),},
                          if(count%2==0&&count!=0)...{
                            col2Flag[2]==true&&(col1Flag[0]==true||col1Flag[1]==true||col1Flag[2]==true)?
                            CustomPaint(painter: LinePainter(col1,col2,indexes)):Container(),
                          }

                        ],
                      ),
                    ),
                  ),

                  Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                if(col2Flag[0]==false) {
                                  col2=0;
                                  col2Flag[0] = true;
                                  isSelected[3] = true;
                                  count+=1;
                                  indexes.add(col2);
                                  colBName='dipendra';
                                }
                              });
                              if(count%2==0){
                                if(colAName==colBName){
                                  point+=1;
                                }
                              }
                            },
                            child: Container(
                              height: 12,
                              width: 12,
                              color:isSelected[3]==true?Colors.green: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 6,),
                          const Text('dipendra'),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                if(col2Flag[1]==false) {
                                  col2 = 1;
                                  col2Flag[1] = true;
                                  isSelected[4] = true;
                                  count+=1;
                                  indexes.add(col2);
                                  colBName='hello';
                                }
                              });
                              if(count%2==0){
                                if(colAName==colBName){
                                  point+=1;
                                }
                              }
                            },
                            child: Container(
                              height: 12,
                              width: 12,
                              color:isSelected[4]==true?Colors.green: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 6,),
                          const Text('hello'),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                if(col2Flag[2]==false) {
                                  col2 = 2;
                                  col2Flag[2] = true;
                                  isSelected[5] = true;
                                  count+=1;
                                  indexes.add(col2);
                                  colBName='data';
                                }
                              });
                              if(count%2==0){
                                if(colAName==colBName){
                                  point+=1;
                                }
                              }
                            },
                            child: Container(
                              height: 12,
                              width: 12,
                              color:isSelected[5]==true?Colors.green: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 6,),
                          const Text('data'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 50,),
              TextButton(
                  onPressed: (){
                    setState(() {
                      showPoint=true;
                    });
                    // for(int i=0;i<3;i++){
                    //   print('hello');
                    //   print(answer['${i}']);
                    //   for(int j=0;j<indexes.length;i+=2){
                    //      if(answer['${i}']==indexes[j]){
                    //        if(j>0&&j<indexes.length-1) {
                    //          if (indexes[--j] == i || indexes[++j] == i) {
                    //            setState(() {
                    //              point += 1;
                    //            });
                    //           // print(point);
                    //          }
                    //        }
                    //      }
                    //   }
                    // }
                  },
                  child:const  Text('Submit',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.black,
                    ),))
            ],
          ),
        ),
      ),
    );
  }
}
class LinePainter extends CustomPainter {
  var index1,index2;
  List indexes=[];
  LinePainter(this.index1,this.index2,this.indexes);


  final list1=const [
    Offset(-192, 8),
    Offset(-195,25),
    Offset(-175,42),
  ];
  final list2= const [
    Offset(177, 8),
    Offset(177, 24),
    Offset(177, 42),
  ];
  final list3= const [
    Offset(177, 9),
    Offset(177, 25),
    Offset(177, 40),
  ];
  final list4= const [
    Offset(177, 9),
    Offset(177, 24),
    Offset(177, 40),
  ];

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 4;

    if(index1==0){
      canvas.drawLine(list1[index1], list2[index2], paint);
    }else if(index1==1){
      canvas.drawLine(list1[index1], list3[index2], paint);
    }else{
      canvas.drawLine(list1[index1], list4[index2], paint);
    }

    if (indexes.length==6){
      for(int i=0;i<indexes.length;i+=2){
        if(indexes[i]==0){
          canvas.drawLine(list1[indexes[i]], list2[indexes[1+i]], paint);
        }else if(indexes[i]==1){
          canvas.drawLine(list1[indexes[i]], list3[indexes[1+i]], paint);
        }else{
          canvas.drawLine(list1[indexes[i]], list4[indexes[1+i]], paint);
        }
      }
    }
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
