import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF1B1E22),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50, left: 16, right: 16, bottom: 16),
            color: Color(0xFF1B1E22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.notifications_none,
                  color: const Color.fromARGB(255, 59, 59, 59),
                  size: 28,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/10.jpg"),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Agwa",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // باقي العناصر زي ما هي
          _buildDrawerItem(Icons.whatshot, "اخر التحديثات", selected: true),
          _buildDrawerItem(Icons.list, "لائحة الانمي"),
          _buildDrawerItem(Icons.calendar_today, "المواسم"),
          Divider(color: Colors.white30),
          _buildDrawerItem(Icons.bar_chart, "التقييم العالمي"),
          _buildDrawerItem(Icons.bar_chart_outlined, "التقييم العربي"),
          Divider(color: Colors.white30),
          _buildDrawerItem(Icons.playlist_add_check, "قائمتي"),
          _buildDrawerItem(Icons.playlist_add, "القائمة المخصصة"),
          _buildDrawerItem(Icons.favorite_border, "أنمياتي المفضلة"),
          _buildDrawerItem(Icons.favorite, "شخصياتي المفضلة"),
          _buildDrawerItem(Icons.watch_later, "اخر المشاهدات"),
          _buildDrawerItem(Icons.download, "تحميـلاتي"),
          Divider(color: Colors.white30),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "الشخصيات الاكثر شعبية",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(
    IconData icon,
    String title, {
    bool selected = false,
  }) {
    return ListTile(
      leading: Icon(icon, color: selected ? Colors.amber : Colors.white),
      title: Text(
        title,
        style: TextStyle(
          color: selected ? Colors.amber : Colors.white,
          fontSize: 16,
        ),
      ),
      onTap: () {
        // هنا يمكنك إضافة منطق التنقل إذا لزم الأمر
      },
    );
  }
}
