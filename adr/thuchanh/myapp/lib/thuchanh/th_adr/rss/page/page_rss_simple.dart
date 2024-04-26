import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:myapp/thuchanh/th_adr/rss/controller/rss_controller.dart';
import 'package:myapp/thuchanh/th_adr/rss/page/webview.dart';

class RssApp extends StatelessWidget {
  const RssApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: RssBindings(),
      home: const PageRss(),
    );
  }
}

class PageRss extends StatelessWidget {
  const PageRss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: GetBuilder<SimpleControllerRss>(
            init: SimpleControllerRss.instances,
            builder: (controller) => Text(controller.resourceName),
          ),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: GetBuilder<SimpleControllerRss>(
          id: "listRss",
          init: SimpleControllerRss.instances,
          builder: (controller) {
            var listRss = controller.rssList;
            return Padding(
              padding: const EdgeInsets.all(5),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  var rssItem = listRss[index];
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(MyWebPage1(
                              url: rssItem.link!,
                              rescourceName: controller.resourceName));
                        },
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image.network(rssItem.imageUrl!),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Text(
                                  "${rssItem.title}",
                                  style: const TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("${rssItem.desc}")
                    ],
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  thickness: 1.5,
                ),
                itemCount: listRss.length,
              ),
            );
          },
        ));
  }
}
