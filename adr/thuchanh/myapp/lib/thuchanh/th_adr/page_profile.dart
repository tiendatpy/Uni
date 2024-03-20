import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/thuchanh/th_adr/my_widget/radio_button.dart';
import 'package:myapp/thuchanh/th_adr/my_widget/wrapper_data.dart';
import 'package:myapp/thuchanh/th_adr/my_widget/dropdown_button.dart';

class PageProfile extends StatefulWidget {
  const PageProfile({super.key});

  @override
  State<PageProfile> createState() => _PageProfileState();
}

class SelectedValue {
  String? value;
  SelectedValue({this.value});
}

class _PageProfileState extends State<PageProfile> {
  StringWrapper gioiTinh = StringWrapper(value: "nam");
  StringWrapper ngiu = StringWrapper(value: "co");
  //
  StringWrapper phim = StringWrapper(value: "Đào");
  DateTime? ngaySinh = DateTime(2003, 12, 8);
  List<String> phepTinhs = [
    "Cộng",
    "Trừ",
    "Nhân",
    "Chia",
    "Tích phân",
    "Tất cả"
  ];
  SelectedValue pt = SelectedValue(value: "Cộng");
  // Món ăn
  List<String> monAns = ["Hải sản", "Cơm chiên", "Bánh mì", "Bò kho"];
  SelectedValue monan = SelectedValue(value: "Hải sản");
  int index = 0;
  @override
  _buildBody(BuildContext context, int index) {
    switch (index) {
      case 0:
        return _buildHome(context);
      case 1:
        return _build_SMS(context);
      case 2:
        return _buildPhone(context);
    }
  }

  _buildHome(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Image.asset("assets/images/saotho.jpg"),
              ),
            ),
            const SizedBox(height: 10),
            const Text("Họ tên"),
            const Text(
              "Nguyễn Tiến Đạt",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Giới tính"),
            // gioi tinh
            MyGroupRadioNTU(
                labels: const ["nam", "nữ"],
                groupValue: gioiTinh,
                isHorizontal: true),
            const Text("Bạn có người yêu chưa"),
            MyGroupRadioNTU(labels: const ["Có", "Chưa"], groupValue: ngiu),
            const Text("Ngày sinh"),
            Row(
              children: [
                Expanded(
                  child: Text(
                      "${ngaySinh?.day ?? 1}/${ngaySinh?.month ?? 1}/${ngaySinh?.year ?? 2003}"),
                ),
                IconButton(
                  onPressed: () async {
                    var d = await showDatePicker(
                      context: context,
                      firstDate: DateTime(1990),
                      lastDate: DateTime(2040),
                    );
                    if (d != null) {
                      setState(() {
                        ngaySinh = d;
                      });
                    }
                  },
                  icon: const Icon(Icons.calendar_month),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Quê quán"),
            const Text(
              "Khánh Hòa",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Sở thích"),
            const Text(
              "Chạy bộ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Chọn phép toán giỏi nhất"),
            buildDropdownButton(label: phepTinhs, s: pt),
            const Text("Chọn món ăn ngon nhất"),
            buildDropdownButton(label: monAns, s: monan),
            const SizedBox(height: 10),
            const Text("Chọn phim"),
            MyDropDownButtonNTU(
              labels: const ["Đào", "Phở", "Piano"],
              value: phim,
              isExpand: true,
              itemBuilder: (label) => Row(
                children: [
                  const Icon(
                    Icons.image,
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(label),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _build_SMS(BuildContext context) {
    return const Center(
      child: Text("Gửi SMS"),
    );
  }

  _buildPhone(BuildContext context) {
    return const Center(
      child: Text("Gửi Phone"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My profile'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: Drawer(
        // child: ListView(
        //   children: <Widget>[
        //     DrawerHeader(
        //       decoration: const BoxDecoration(color: Colors.amber),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           SizedBox(
        //             height: 50,
        //             width: 50,
        //             child: Image.asset(
        //               "assets/images/saotho.jpg",
        //             ),
        //           ),
        //           const Text('XYZ'),
        //           const Text(
        //             'Drawer header',
        //             style: TextStyle(fontSize: 30, color: Colors.blueAccent),
        //           )
        //         ],
        //       ),
        //     ),
        //     const ListTile(
        //       leading: Icon(Icons.message),
        //       hoverColor: Colors.black,
        //       title: Text(
        //         "Message",
        //         style: TextStyle(fontSize: 20),
        //       ),
        //     ),
        //     const ListTile(
        //       leading: Icon(Icons.account_circle),
        //       hoverColor: Colors.black,
        //       title: Text(
        //         "User",
        //         style: TextStyle(fontSize: 20),
        //       ),
        //     ),
        //     const ListTile(
        //       leading: Icon(Icons.settings),
        //       hoverColor: Colors.black,
        //       title: Text(
        //         "Settings",
        //         style: TextStyle(fontSize: 20),
        //       ),
        //     )
        //   ],
        // ),
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Tiến Đạt"),
              accountEmail: Text("tiendat2003@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/saotho.jpg"),
              ),
            ),
            // listView phai boc trong Expand
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(Icons.inbox),
                    title: const Text("Inbox"),
                    trailing: const Text("10"),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Inbox()));
                    },
                  )
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
          ],
        ),
      ),
      body: _buildBody(context, index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home, color: Colors.blue),
              icon: Icon(Icons.home, color: Colors.grey),
              label: "Home"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.message, color: Colors.blue),
              icon: Icon(Icons.message, color: Colors.grey),
              label: "SMS"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.phone, color: Colors.blue),
              icon: Icon(Icons.phone, color: Colors.grey),
              label: "Phone"),
        ],
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }

  DropdownButton<String> buildDropdownButton(
      {required List<String> label, required SelectedValue s}) {
    return DropdownButton(
      isExpanded: true,
      value: s.value,
      items: label
          .map((pheptinh) => DropdownMenuItem(
                value: pheptinh,
                child: Text(pheptinh),
              ))
          .toList(),
      onChanged: (value) {
        setState(() {
          s.value = value;
        });
      },
    );
  }
}

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inbox"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text("Inbox"),
      ),
    );
  }
}
