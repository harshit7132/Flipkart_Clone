import 'package:flutter/material.dart';

class StoreTypeBarHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: FilledButton.icon(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.store_mall_directory,
                ),
                label: const Text(
                  "Flipkart",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: FilledButton.icon(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.fastfood),
                label: const Text(
                  "Grocery",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBarHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: const TextField(
        decoration: InputDecoration(
            hintText: "Search on Flipkart",
            border: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.white),
            ),
            prefixIcon: Icon(
              Icons.search,
            ),
            contentPadding: const EdgeInsets.all(12)),
      ),
    );
  }
}

class TopCategoriesOne extends StatelessWidget {
  const TopCategoriesOne({
    required this.data,
  });

  final List<Map<String, String>> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFDF3DA),
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 90.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: InkWell(
                onTap: () => () {},
                child: SizedBox(
                  child: Image.asset(
                    "assets/topCategories/${data[index]['imgName']}.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class TopBannerOne extends StatelessWidget {
  const TopBannerOne({
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFDF3DA),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: InkWell(
            onTap: () => () {},
            child: SizedBox(
              child: Image.asset(
                data,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
