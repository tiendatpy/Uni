import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiendat_firebase/crud_sv/model.dart';

class PageSV extends StatelessWidget {
  const PageSV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Danh sách sinh viên"),
      ),
      body: StreamBuilder<List<SinhVienSnapShot>>(
          stream: SinhVienSnapShot.getAll(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text("Loi"),
              );
            } else {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                var list = snapshot.data!;
                return ListView.separated(
                    itemBuilder: (context, index) => ListTile(
                          leading: Text("${index + 1}"),
                          title: Text(list[index].sv.ten),
                          trailing: SizedBox(
                            width: 100,
                            child: Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.update),
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => PageUpdateSV(svSnapShot: list[index]),
                                    ));
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () {
                                    list[index].xoa();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) => const Divider(thickness: 1.5),
                    itemCount: list.length);
              }
            }
          }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PageAddSV(),
            ));
          }),
    );
  }
}

class PageChiTietSVState extends StatefulWidget {
  const PageChiTietSVState({super.key});

  @override
  State<PageChiTietSVState> createState() => _PageChiTietSVStateState();
}

class _PageChiTietSVStateState extends State<PageChiTietSVState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chi tiết"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
    );
  }
}

class PageAddSV extends StatelessWidget {
  const PageAddSV({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtId = TextEditingController();
    TextEditingController txtTen = TextEditingController();
    TextEditingController txtNgaySinh = TextEditingController();
    TextEditingController txtQueQuan = TextEditingController();

    @override
    void initState() {
      txtId.clear();
      txtTen.clear();
      txtNgaySinh.clear();
      txtQueQuan.clear();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Thêm sinh viên'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: [
            _buildTextField(txtId, "ID"),
            _buildTextField(txtTen, "Tên"),
            _buildTextField(txtNgaySinh, "Ngày sinh"),
            _buildTextField(txtQueQuan, "Quê quán"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (txtId.text.isNotEmpty &&
                          txtTen.text.isNotEmpty &&
                          txtNgaySinh.text.isNotEmpty &&
                          txtQueQuan.text.isNotEmpty) {
                        SinhVien sv = SinhVien(
                            id: txtId.text,
                            ten: txtTen.text,
                            ngay_sinh: txtNgaySinh.text,
                            que_quan: txtQueQuan.text);
                        SinhVienSnapShot.addNew(sv);
                        initState();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: const Text("Đã thêm thành công"),
                          duration: const Duration(seconds: 1),
                          action: SnackBarAction(
                            onPressed: () => ScaffoldMessenger.of(context).clearSnackBars(),
                            label: "X",
                          ),
                        ));
                      }
                    },
                    child: const Text("Thêm")),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController value, String key) {
    return Column(
      children: [
        TextField(
          controller: value,
          decoration: InputDecoration(labelText: key, border: const OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}

class PageUpdateSV extends StatelessWidget {
  final SinhVienSnapShot svSnapShot;
  const PageUpdateSV({required this.svSnapShot, super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtId = TextEditingController();
    TextEditingController txtTen = TextEditingController();
    TextEditingController txtNgaySinh = TextEditingController();
    TextEditingController txtQueQuan = TextEditingController();

    txtId.text = svSnapShot.sv.id;
    txtTen.text = svSnapShot.sv.ten;
    txtNgaySinh.text = svSnapShot.sv.ngay_sinh;
    txtQueQuan.text = svSnapShot.sv.que_quan;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cập nhật sinh viên"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: [
            _buildTextField(txtId, "ID"),
            _buildTextField(txtTen, "Tên"),
            _buildTextField(txtNgaySinh, "Ngày sinh"),
            _buildTextField(txtQueQuan, "Quê quán"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (txtId.text.isNotEmpty &&
                        txtTen.text.isNotEmpty &&
                        txtNgaySinh.text.isNotEmpty &&
                        txtQueQuan.text.isNotEmpty) {
                      svSnapShot.sv.id = txtId.text;
                      svSnapShot.sv.ten = txtTen.text;
                      svSnapShot.sv.ngay_sinh = txtNgaySinh.text;
                      svSnapShot.sv.que_quan = txtQueQuan.text;

                      svSnapShot.capnhat(svSnapShot.sv);
                      print("cap nhat thanh cong");
                    }
                  },
                  child: const Text("Cập nhật"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController value, String key) {
    return Column(
      children: [
        TextField(
          controller: value,
          decoration: InputDecoration(labelText: key, border: const OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
