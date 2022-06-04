import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 50,
                color: const Color.fromARGB(255, 255, 17, 0),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: const BoxDecoration(
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
                    const Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.white,
                    ),
                    
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'BEE',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(Icons.notifications_none,
                        size: 30, color: Colors.white),
                 
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
            color: const Color.fromARGB(255, 255, 17, 0),
            child: Row(
              children: [
                const SizedBox(
                  width: 100,
                ),
                const Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 10,
                ),
                const Text(
                  'Patna,Bihar',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                const SizedBox(
                  width: 60,
                ),
                const Text(
                  'Garage Name',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          ),
          SizedBox(height: 8,),
          Stack(
            children:[ ClipPath(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                color: const Color.fromARGB(255, 255, 17, 0),
               
              ),
              clipper: CustomClipPath(),
            
            ),
             Column(
                children: [
                   Row(
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
                  'Account Details',
                  style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
                   Center(
          child: Column(children: <Widget>[
           
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                border: Border.all(
                  color: Color.fromARGB(255, 93, 92, 92),
                  width: 8,
                ),
              ),
              child: Container(
             width: 80.0,
             height: 80.0,
             decoration: BoxDecoration(
               shape: BoxShape.circle,
               color: const Color(0xff7c94b6),
               image: DecorationImage(
                 image: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
                 fit: BoxFit.cover,
                 
               ),
               
             ),
           ),
            ),
            Text('Shubham Verma', style: TextStyle(color: Colors.grey , fontWeight: FontWeight.bold),),
            Text('+91-9876543210',style: TextStyle(color: Colors.grey),)
          ]
          )
          
          ),
                ],
              ),
               Padding(
                padding: const EdgeInsets.fromLTRB(190, 110, 0, 0),
                 child: FloatingActionButton.small(
                    
                    child: Icon(
                      Icons.camera_alt_outlined, 
                      color: Color.fromARGB(255, 255, 17, 0),
                      size: 20,
                    ),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    onPressed: () => {},
                  ),
               ),
            ]
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.car_rental_rounded,
                  color: Color.fromARGB(255, 255, 17, 0),
                  size: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                const Text('Garage Name',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                Expanded(
                    child: SizedBox(
                  width: 120,
                )),
                const Text('Car Bajaar',
                    style: TextStyle(color: Colors.grey, fontSize: 10)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                const Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.female,
                  color: Color.fromARGB(255, 255, 17, 0),
                  size: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                const Text('Gender',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                Expanded(
                    child: SizedBox(
                  width: 190,
                )),
                const Text('Male',
                    style: TextStyle(color: Colors.grey, fontSize: 10)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                const Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                const Icon(
                  Icons.calendar_today,
                  color: Color.fromARGB(255, 255, 17, 0),
                  size: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                const Text('Birthday',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                Expanded(
                    child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.42,
                )),
                const Text('12-12-2000',
                    style: TextStyle(color: Colors.grey, fontSize: 10)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                const Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                const Icon(
                  Icons.email_outlined,
                  color: Color.fromARGB(255, 255, 17, 0),
                  size: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                const Text('Email',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                Expanded(
                    child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.425,
                )),
                const Text('abc@mail.com',
                    style: TextStyle(color: Colors.grey, fontSize: 10)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                const Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                const Icon(
                  Icons.phone_android_sharp,
                  color: Color.fromARGB(255, 255, 17, 0),
                  size: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                const Text('Phone Number',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                Expanded(
                    child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.235,
                )),
                const Text('+91-845454434',
                    style: TextStyle(color: Colors.grey, fontSize: 10)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                const Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey)
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 184, 184, 184),
                    ),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.fromLTRB(170, 0, 10, 10),
                child: const Icon(
                  Icons.mode_edit_outline_outlined,
                  size: 40,
                  color: Colors.black,
                ),
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(95, 25, 10, 0),
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 17, 0),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ))
            ],
          ),
          Expanded(child: SizedBox(height: 90)),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: InkWell(          
      onTap: (){},
      child: Container(        
                 width: MediaQuery.of(context).size.width-20,
                 height: 50,
                 decoration: BoxDecoration(
                               shape: BoxShape.rectangle, //here we set the circular figure
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                color: Colors.red,
                width: 1,
            ),
                             ),
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Row(
                               children: [
                                 Icon(
                                         Icons.logout,
                                         size: 30,
                                          color: Color.fromARGB(255, 255, 17, 0),
                                          ),
                                          SizedBox(width: 90,),
                                          Text('Log Out', style: TextStyle(fontWeight: FontWeight.bold , color: Color.fromARGB(255, 255, 17, 0)),)
                               ],
                             ),
                           )
                          )
),
         )
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width / 1.7, 0);
    path.lineTo(size.width / 1.7, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width/3, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
