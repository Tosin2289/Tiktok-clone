import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_clone/constants/constants.dart';
import 'package:tiktok_clone/views/screens/profile_screen.dart';

import '../../controller/search_controller.dart';
import '../../models/user.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final SearchController searchController = Get.put(SearchController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: TextFormField(
            onChanged: (value) => searchController.searchUser(value),
            onFieldSubmitted: (value) => searchController.searchUser(value),
            decoration: const InputDecoration(
                filled: false,
                hintText: 'Search',
                hintStyle: TextStyle(fontSize: 18, color: Colors.white)),
          ),
        ),
        body: searchController.searchedUsers.isEmpty
            ? const Center(
                child: Text(
                "Search for users!",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ))
            : ListView.builder(
                itemCount: searchController.searchedUsers.length,
                itemBuilder: (context, index) {
                  User user = searchController.searchedUsers[index];
                  return InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProfileScreen(
                        uid: user.uid,
                      ),
                    )),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(user.profilePhoto),
                      ),
                      title: Text(user.name,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18)),
                    ),
                  );
                },
              ),
      );
    });
  }
}
