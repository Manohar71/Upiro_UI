import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 50,
                color: Color.fromARGB(255, 255, 17, 0),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                    ),
                    color: Colors.white,
                  ),
                  width: 150,
                  height: 50,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'BEE',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.notifications_none, size: 30, color: Colors.white),
                  ],
                ),
              ),
               Padding(
                     padding: const EdgeInsets.fromLTRB(260, 20, 10, 0),
                      child: Text('LOGO', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    )
              
            ],
          ),
          Container(
            height: 20,
            color: Color.fromARGB(255, 255, 17, 0),
            child: Row(
              children: [
                SizedBox(
                  width: 120,
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 10,
                ),
                Text(
                  'Patna,Bihar',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Garage Name',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                FloatingActionButton.small(
                  
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 20,
                  ),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                  onPressed: () => {},
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Fill Details',
                  style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  Text(
                    'Full Name',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Shubham Verma',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Phone Number',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '+91-987654321',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'abc@mail.com',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Garage Name',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Garage Name',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Garage Registeration Number',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Registeration Number',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Garage Address',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Garage Address',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 10),
                 Text(
                    'State',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(9)
                      
                    ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: value,
                          isExpanded: true,
                          hint: Text('Select',style: TextStyle(color: Colors.grey),),
                          
                          icon: Icon(Icons.keyboard_arrow_down_sharp),
                                          items: items.map(buildMenuItem).toList(),
                                          onChanged: (value) => setState(() => this.value = value),
                                        ),
                      )),
                       SizedBox(height: 10),
                 Text(
                    'City',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(9)
                      
                    ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: value,
                          isExpanded: true,
                          hint: Text('Select',style: TextStyle(color: Colors.grey),),
                          
                          icon: Icon(Icons.keyboard_arrow_down_sharp),
                                          items: items.map(buildMenuItem).toList(),
                                          onChanged: (value) => setState(() => this.value = value),
                                        ),
                      )),
                      SizedBox(height: 10),
                       Text(
                    'Add Garage Photos',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 90,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color.fromARGB(255, 209, 209, 209),
                              width: 1,
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 90,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color.fromARGB(255, 209, 209, 209),
                              width: 1,
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 90,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color.fromARGB(255, 209, 209, 209),
                              width: 1,
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Add Documents',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 90,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color.fromARGB(255, 209, 209, 209),
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Center(
                 child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                          shape: BoxShape.circle,
                          color: Colors.white,),
                          child: Center(child: Text('1', style: TextStyle(color: Colors.grey),)),
                    ),
               ),
               SizedBox(height: 18,),
                Text(
                                  'MMSE',
                                  style: TextStyle(color: Colors.grey , fontSize: 10),
                                )
                              ],
                            ),
                           
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 90,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color.fromARGB(255, 209, 209, 209),
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Center(
                 child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                          shape: BoxShape.circle,
                          color: Colors.white,),
                          child: Center(child: Text('2', style: TextStyle(color: Colors.grey),)),
                    ),
               ),
               SizedBox(height: 18,),
                Text(
                                  'Adhar Card',
                                  style: TextStyle(color: Colors.grey , fontSize: 10),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 90,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color.fromARGB(255, 209, 209, 209),
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Center(
                 child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                          shape: BoxShape.circle,
                          color: Colors.white,),
                          child: Center(child: Text('3', style: TextStyle(color: Colors.grey),)),
                    ),
               ),
               SizedBox(height: 18,),
                Text(
                                  'Bank Detail',
                                  style: TextStyle(color: Colors.grey , fontSize: 10),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    child: Text('Update'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Color.fromARGB(255, 255, 17, 0),
                      onSurface: Colors.grey,
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(value: item, child: Text(item));
}
