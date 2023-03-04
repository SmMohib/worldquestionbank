import 'package:flutter/material.dart';
import 'package:worldquestionbank/utilitys/colors.dart';

Widget searchableUsersWidget() {
    List<Map> users = [
      {'name': 'James', 'tel': '9010'},
      {'name': 'Michael', 'tel': '9011'},
      {'name': 'Jane', 'tel': '9013'},
     
    ];
    ValueNotifier<List<Map>> filtered = ValueNotifier<List<Map>>([]);
    TextEditingController searchController = TextEditingController();
    FocusNode searchFocus = FocusNode();
    bool searching = false;
    return ValueListenableBuilder<List>(
        valueListenable: filtered,
        builder: (context, value, _) {
          return Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: primary,
              borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
              boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 6,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  child: Card(
                    child: new ListTile(
                      leading: new Icon(Icons.search),
                      title: new TextField(
                        controller: searchController,
                        decoration: new InputDecoration(
                            hintText: 'Search', border: InputBorder.none),
                        onChanged: (text) {
                          if (text.length > 0) {
                            searching = true;
                            filtered.value = [];
                            users.forEach((user) {
                              if (user['name']
                                      .toString()
                                      .toLowerCase()
                                      .contains(text.toLowerCase()) ||
                                  user['tel'].toString().contains(text)) {
                                filtered.value.add(user);
                              }
                            });
                          } else {
                            searching = false;
                            filtered.value = [];
                          }
                        },
                      ),
                      trailing: new IconButton(
                        icon: new Icon(Icons.cancel),
                        onPressed: () {
                          searchController.clear();
                          searching = false;
                          filtered.value = [];
                          if (searchFocus.hasFocus) searchFocus.unfocus();
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: searching
                          ? filtered.value.length
                          : users.length,
                      itemBuilder: (context, index) {
                        final item = searching
                            ? filtered.value[index]
                            : users[index];
                        return ListTile(
                         
                          title: Text(item['name']),
                          subtitle: Text(item['tel']),
                          onTap: () {},
                        );
                      }),
                ),
              ],
            ),
          );
        });
  }