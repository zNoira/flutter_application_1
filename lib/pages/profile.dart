import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String currentShirt = 'assets/avatarcustomize/shirts/whitepolo.png';
  String currentPants = 'assets/avatarcustomize/pants/jeans.png';
  String currentHat = 'assets/avatarcustomize/accessories/placeholderhat.png';
  String currentShoes = 'assets/avatarcustomize/shoes/basicshoes.png';
  String currentSkin = 'assets/avatarcustomize/skin/skintone1.png';
  String currentFace = 'assets/avatarcustomize/face/defaultface.png';
  String currentHair = 'assets/avatarcustomize/hair/maschair1.png';

  final List<String> shirtAssets = [
    'assets/avatarcustomize/shirts/blackcardigan.png', 
    'assets/avatarcustomize/shirts/bluelongsleevesshirt.png', 
    'assets/avatarcustomize/shirts/mushroomshirt.png', 
    'assets/avatarcustomize/shirts/pinkstarshirt.png', 
    'assets/avatarcustomize/shirts/redjacket.png', 
    'assets/avatarcustomize/shirts/whitepolo.png'
    ];
  
  final List<String> pantsAssets = [
    'assets/avatarcustomize/pants/blackpants.png', 
    'assets/avatarcustomize/pants/jeans.png', 
    'assets/avatarcustomize/pants/whiteskrit.png'
    ];
  
  final List<String> hatAssets = [
    'assets/avatarcustomize/accessories/placeholderhat.png', 
    'assets/avatarcustomize/accessories/basicglasses.png', 
    'assets/avatarcustomize/accessories/basicshades.png', 
    'assets/avatarcustomize/accessories/flower1.png', 
    'assets/avatarcustomize/accessories/headphones1.png', 
    'assets/avatarcustomize/accessories/headphones2.png', 
    'assets/avatarcustomize/accessories/mushroomhat.png', 
    'assets/avatarcustomize/accessories/trafficcone.png', 
    'assets/avatarcustomize/accessories/witchhat.png'
  ];
 
  final List<String> shoeAssets = [
    'assets/avatarcustomize/shoes/basicshoes.png', 
    'assets/avatarcustomize/shoes/brownboots.png', 
    'assets/avatarcustomize/shoes/mushroomshoes.png', 
    'assets/avatarcustomize/shoes/shoeswithsocks.png'
  ];
  
  final List<String> skinAssets = [
    'assets/avatarcustomize/skin/skintone1.png', 
    'assets/avatarcustomize/skin/skintone2.png', 
    'assets/avatarcustomize/skin/skintone3.png', 
    'assets/avatarcustomize/skin/skintone4.png'
  ];
 
  final List<String> faceAssets = [
    'assets/avatarcustomize/face/defaultface.png', 
    'assets/avatarcustomize/face/seriousface.png', 
    'assets/avatarcustomize/face/smileface.png', 
    'assets/avatarcustomize/face/smugface.png'
  ];
 
  final List<String> hairAssets = [
    'assets/avatarcustomize/hair/femhair1.png', 
    'assets/avatarcustomize/hair/femhair2.png', 
    'assets/avatarcustomize/hair/femhair3.png', 
    'assets/avatarcustomize/hair/maschair1.png', 
    'assets/avatarcustomize/hair/maschair2.png', 
    'assets/avatarcustomize/hair/maschair3.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f2f5),
      // Top Bar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff02AA6D),
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Icon(Icons.monetization_on, color: Colors.amber, size: 25),
            const SizedBox(width: 8),
            Text('250', style: GoogleFonts.russoOne(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 20)),
            const SizedBox(width: 20),
            const Icon(Icons.settings_outlined, color: Color.fromARGB(255, 255, 255, 255)),
          ],
        ),
      ),
      body: Row(
        children: [
          _buildSidebar(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        _buildProfileHeader(),
                        const SizedBox(height: 20),
                        _buildInformationGrid(),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            // --- EDIT TO ACTUALLY TRACK ASSIGNMENT AND STREAK INFO [PLACEHOLDER] ---
                            Expanded(child: _buildStatCard('32', 'Assignments Done', Icons.check_circle_outline)),
                            const SizedBox(width: 20),
                            Expanded(child: _buildStatCard('7', 'Current Streak', Icons.local_fire_department_outlined)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    flex: 1,
                    child: _buildDigitalAvatarCard(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Column(
      children: [
        Container(
          height: 150,
          decoration: const BoxDecoration(
            color: Color(0xffe0e0e0),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 10, right: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(onPressed: () {}, 
                  icon: const Icon(Icons.edit_note, color: Color(0xff1B5E42))),
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const CircleAvatar(
                  radius: 65, backgroundColor: Colors.white,
                  child: CircleAvatar(radius: 60, backgroundColor: Color(0xffd9d9d9), 
                  child: Icon(Icons.person, size: 60, color: Colors.white)),
                ),
                const SizedBox(width: 20),
                Column(
                  // --- EDIT TO ACTUALLY TRACK ACCOUNT INFO [PLACEHOLDER] ---
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('McCathy Fukiko', style: GoogleFonts.russoOne(fontSize: 22, color: const Color(0xff1B5E42))),
                    const SizedBox(height: 5),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(color: const Color(0xff0BC66E), borderRadius: BorderRadius.circular(20)),
                      child: Text('STUDENT', style: GoogleFonts.russoOne(fontSize: 10, color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
 
 // --- EDIT TO ACTUALLY TRACK ACCOUNT INFO [PLACEHOLDER] ---
  Widget _buildInformationGrid() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('INFORMATION', style: GoogleFonts.russoOne(fontSize: 14, color: Colors.black54)),
          const Divider(height: 30),
          Row(
            children: [
              _buildInfoSubCard('EMAIL ADDRESS', 'mfukiko@mcm.edu.ph', Icons.email_outlined),
              const SizedBox(width: 15),
              _buildInfoSubCard('STUDENT ID', '2024110515', Icons.numbers),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              _buildInfoSubCard('GRADE & SECTION', 'Grade 12 - Iron', Icons.school_outlined),
              const SizedBox(width: 15),
              _buildInfoSubCard('CAMPUS', 'MMCM', Icons.location_on_outlined),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDigitalAvatarCard() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Text('DIGITAL AVATAR', style: GoogleFonts.russoOne(fontSize: 24, color: const Color(0xff1B5E42))),
          const Divider(height: 10, indent: 20, endIndent: 20),
          Text('SILVER', style: GoogleFonts.russoOne(fontSize: 18, color: Colors.grey[600])),
          Text('Level 12', style: GoogleFonts.russoOne(fontSize: 12, color: Colors.grey[600])),
          const SizedBox(height: 20),
          _buildAvatarStack(450, currentShirt, currentPants, currentHat, currentSkin, currentShoes, currentFace, currentHair),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => _showAvatarCustomizationDialog(context),
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff3dbd89), 
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              child: Text('Edit Avatar', style: GoogleFonts.russoOne(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebar() {
    return Container(
      width: 250, color: Colors.white, padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/taskhaven_greenlogoicon.png', height: 150),
          const SizedBox(height: 40),
          _buildSidebarItem('Dashboard', Icons.grid_view_outlined),
          _buildSidebarItem('Classrooms', Icons.groups_outlined),
          _buildSidebarItem('Profile', Icons.person_outline, isActive: true),
          _buildSidebarItem('Assignments', Icons.format_list_bulleted),
          _buildSidebarItem('Shop', Icons.shopping_cart_outlined),
          _buildSidebarItem('Inventory', Icons.inventory_2_outlined),
          const Spacer(),
          _buildSidebarItem('Log Out', Icons.logout),
        ],
      ),
    );
  }

  Widget _buildSidebarItem(String label, IconData icon, {bool isActive = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(icon, color: isActive ? const Color(0xff0BC66E) : const Color(0xff1B5E42), size: 24),
          const SizedBox(width: 15),
          Text(label, style: GoogleFonts.russoOne(fontSize: 16, color: isActive ? const Color(0xff0BC66E) : const Color(0xff1B5E42))),
        ],
      ),
    );
  }

  Widget _buildInfoSubCard(String label, String value, IconData icon) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(color: const Color(0xfff8f9fa), 
        borderRadius: BorderRadius.circular(10), 
        border: Border.all(color: Colors.black12)),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xff1B5E42), size: 24),
            const SizedBox(width: 10),
            Flexible(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(label, style: GoogleFonts.russoOne(fontSize: 8, color: const Color(0xff0BC66E))),
                Text(value, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String val, String lbl, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xff0BC66E), size: 30),
          const SizedBox(width: 15),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(val, style: GoogleFonts.russoOne(fontSize: 24, color: const Color(0xff1B5E42))),
            Text(lbl, style: GoogleFonts.russoOne(fontSize: 12, color: Colors.grey)),
          ]),
        ],
      ),
    );
  }

  Widget _buildAvatarStack(double size, String shirt, String pants, String hat, String skin, String shoes, String face, String hair) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(skin, height: size, filterQuality: FilterQuality.none),
        Image.asset(face, height: size, filterQuality: FilterQuality.none),
        Image.asset(hair, height: size, filterQuality: FilterQuality.none),
        Image.asset(shoes, height: size, filterQuality: FilterQuality.none),
        Image.asset(pants, height: size, filterQuality: FilterQuality.none),
        Image.asset(shirt, height: size, filterQuality: FilterQuality.none),
        Image.asset(hat, height: size, filterQuality: FilterQuality.none),
      ],
    );
  }

  void _showAvatarCustomizationDialog(BuildContext context) {
    String tempShirt = currentShirt; 
    String tempPants = currentPants; 
    String tempHat = currentHat;
    String tempSkin = currentSkin; 
    String tempShoes = currentShoes; 
    String tempFace = currentFace;
    String tempHair = currentHair; 
    String selectedCategory = 'Shirts';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setDialogState) {
          List<String> currentGridItems = 
          (selectedCategory == 'Skin') ? skinAssets : 
          (selectedCategory == 'Face') ? faceAssets : 
          (selectedCategory == 'Hair') ? hairAssets : 
          (selectedCategory == 'Shirts') ? shirtAssets : 
          (selectedCategory == 'Pants') ? pantsAssets : 
          (selectedCategory == 'Shoes') ? shoeAssets : hatAssets;

          return AlertDialog(
            backgroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: SizedBox(width: 700, height: 500, child: Row(children: [
              Expanded(flex: 1, child: Column(children: [
                _buildAvatarStack(250, tempShirt, tempPants, tempHat, tempSkin, tempShoes, tempFace, tempHair),
                const Spacer(),
                ElevatedButton(onPressed: () { setState(() { 
                  currentShirt = tempShirt; 
                  currentPants = tempPants; 
                  currentHat = tempHat; 
                  currentSkin = tempSkin; 
                  currentShoes = tempShoes; 
                  currentFace = tempFace; 
                  currentHair = tempHair; 
                  }); Navigator.pop(context); }, 
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff3dbd89)), 
                  child: const Text('Save Avatar', style: TextStyle(color: Colors.white)))
              ])),

              const VerticalDivider(),
              Expanded(flex: 2, child: Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                  _buildTabIcon(Icons.palette, 'Skin', selectedCategory, (cat) => setDialogState(() => selectedCategory = cat)),
                  _buildTabIcon(Icons.emoji_emotions, 'Face', selectedCategory, (cat) => setDialogState(() => selectedCategory = cat)),
                  _buildTabIcon(Icons.face_retouching_natural_rounded, 'Hair', selectedCategory, (cat) => setDialogState(() => selectedCategory = cat)),
                  _buildTabIcon(Icons.checkroom, 'Shirts', selectedCategory, (cat) => setDialogState(() => selectedCategory = cat)),
                  _buildTabIcon(Icons.dry_cleaning_rounded, 'Pants', selectedCategory, (cat) => setDialogState(() => selectedCategory = cat)),
                  _buildTabIcon(Icons.roller_skating_rounded, 'Shoes', selectedCategory, (cat) => setDialogState(() => selectedCategory = cat)),
                  _buildTabIcon(Icons.design_services_rounded, 'Hats', selectedCategory, (cat) => setDialogState(() => selectedCategory = cat)),
                ]),
                Expanded(child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10), 
                itemCount: currentGridItems.length, itemBuilder: (context, index) {
                  final item = currentGridItems[index];
                  return GestureDetector(onTap: () => setDialogState(() { 
                    if (selectedCategory == 'Skin') tempSkin = item; 
                    if (selectedCategory == 'Face') tempFace = item; 
                    if (selectedCategory == 'Hair') tempHair = item; 
                    if (selectedCategory == 'Shirts') tempShirt = item; 
                    if (selectedCategory == 'Pants') tempPants = item; 
                    if (selectedCategory == 'Shoes') tempShoes = item; 
                    if (selectedCategory == 'Hats') tempHat = item; 
                  }), child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey[200]!), 
                  borderRadius: BorderRadius.circular(10)), child: Image.asset(item, fit: BoxFit.contain)));
                }))
              ]))
            ])),
          );
        });
      },
    );
  }

  Widget _buildTabIcon(IconData icon, String category, String active, Function(String) onTap) {
    return IconButton(icon: Icon(icon, color: (active == category) ? const Color(0xff3dbd89) : Colors.grey), onPressed: () => onTap(category));
  }
}

