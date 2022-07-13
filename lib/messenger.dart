import'package:flutter/material.dart';
class Messenger extends StatelessWidget {
String ? image;
String ? name;
String ? message;
String ? time;
Messenger({Key? key, this.image, this.name,this.message,this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List <Messenger> data = [
      Messenger(
        name: 'Lee Everett',
        message: 'Im From Macon' ,
        image: 'https://pbs.twimg.com/profile_images/1022600116983812096/CBH7P5Sf_400x400.jpg',
        time: '11:11',
      ),
      Messenger(
        name: 'Ezio Auditore',
        message: 'We Work In Dark To Serve Light',
        image: 'https://store.playstation.com/store/api/chihiro/00_09_000/container/AR/es/99/UP0001-CUSA05008_00-AV00000000000002/0/image?_version=00_09_000&platform=chihiro&bg_color=000000&opacity=100&w=360&h=360',
        time: '10:00',
      ),
      Messenger(
        name: 'Prince Of Persia',
        message: 'Time Is An Ocean In A Storm',
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKuV-BERc7ae64BCXfFBbjjWZkVai7arTN2lC3eGc-1nGR86eBgq6D_Xul1cZV-M_4ACM&usqp=CAU',
        time: '9:00',
      ),
      Messenger(
        name: 'Leon Scott Kennedy',
        message: 'Umbrella G Virus',
        image: 'https://www.evilresource.com/images/data/full/re4/leon-s-kennedy.png',
        time: '8:00',
      ),
      Messenger(
        name: 'Alex Mercer',
        message: 'BlackLight Virus',
        image: 'https://static.wikia.nocookie.net/p__/images/6/66/Alex_mercer_prototype_2_.jpg/revision/latest/scale-to-width-down/250?cb=20180604140844&path-prefix=protagonist',
        time: '7:00',
      ),
      Messenger(
        name: 'Max Payne',
        message: 'Valker',
        image: 'https://cdnb.artstation.com/p/assets/covers/images/048/410/259/large/hossein-diba-hossein-diba-1.jpg?1649954237',
        time: '6:00',
      ),
      Messenger(
        name: 'Tommy Vercetti',
        message: 'Vice City',
        image: 'https://static.wikia.nocookie.net/gtawiki/images/9/9a/TommyVercetti-GTAVCDE.png/revision/latest?cb=20211111045208',
        time: '5:00',
      ),
      Messenger(
        name: 'Thomas Rogan',
        message: 'Curien Case',
        image: 'https://static.wikia.nocookie.net/houseofthedead/images/0/07/RoganGSophiePhoto.png/revision/latest?cb=20190807215821',
        time: '4:00',
      ),
      Messenger(
        name: 'Scorpion',
        message: 'GET OVER HERE',
        image: 'https://i.pinimg.com/originals/0d/0d/21/0d0d21439bc885f874786905e7735fc0.jpg',
        time: '3:00',
      ),
      Messenger(
        name: 'SpiderMan',
        message: 'Marvel',
        image: 'https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHw%3D&w=1000&q=80',
        time: '2:00',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration:const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xff343841),
                    Color(0xff1A1D24)
                  ]
              )
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: const [
              CircleAvatar(
                radius: 20,
               backgroundImage: NetworkImage('https://instagram.fcai19-6.fna.fbcdn.net/v/t51.2885-19/275293627_1808547052674661_1038467259398600036_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fcai19-6.fna.fbcdn.net&_nc_cat=101&_nc_ohc=u-cOF4et-ZgAX_dG1AJ&edm=ABfd0MgBAAAA&ccb=7-5&oh=00_AT_gG9jYb8Reao5lIIiE0wLmH8XOSgESyh1UbYyHJuEGrQ&oe=62D55CE3&_nc_sid=7bff83'),
              ),
              SizedBox(width: 10,),
              Text('Chats',style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 14,
              backgroundColor: Color(0xffD33F3D),
                child: Icon(Icons.add)),
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff343841),
              Color(0xff1A1D24)
            ]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xff1A1D24),

                    ),
                      borderRadius: BorderRadius.circular(16)
                  )
                ),
              ),
              const SizedBox(height: 16,),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context,i)=>Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:NetworkImage('${data[i].image}'),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${data[i].name}',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        const SizedBox(height: 5,),
                        Text('${data[i].message}',style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),)

                      ],
                    ),
                    const Spacer(flex: 1,),
                    Text('${data[i].time}',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12)),

                  ],
                ), separatorBuilder:(context,i)=> const SizedBox(height: 15,), itemCount: data.length),
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xff343841),
                          Color(0xff1A1D24)
                        ]
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundColor: Color(0xffD33F3D),
                      radius: 20,
                        child: Icon(Icons.account_circle)),
                    SizedBox(width: 15,),
                    CircleAvatar(
                        backgroundColor: Color(0xffD33F3D),
                        radius: 20,
                        child: Icon(Icons.camera_alt)),

      SizedBox(width: 15,),
                    CircleAvatar(
                        backgroundColor: Color(0xffD33F3D),
                        radius: 20,
                        child: Icon(Icons.settings))



                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
