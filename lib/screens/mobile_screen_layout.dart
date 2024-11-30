import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/colors.dart';
import 'package:whatsapp_ui_clone/widgets/contacts_list.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          centerTitle: false,
          title: const Text("Whatsapp", style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.grey)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, color: Colors.grey)),
          ],
          bottom: TabBar(
            controller: tabController,
            indicatorColor: tabColor,
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            tabs: const [Tab(text: "CHATS"), Tab(text: "STATUS"), Tab(text: "CALLS")],
          ),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, backgroundColor: tabColor, child: const Icon(Icons.comment, color: Colors.white)),
        body: const ContactsList());
  }
}
