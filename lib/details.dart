import 'package:bcsmath/subcategory.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  // String subCategoryName;
  // String subCategoryDetails;

  // Details(this.subCategoryName, this.subCategoryDetails);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String details = "গণিতের সর্টকাট"
 " পরিমাপের অংকগুলো মাত্র ৪টি টেকনিকে(উদাহরন সহ)আলোচনাঃ"
  "সুত্রঃ1- দৈর্ঘ্যর বৃদ্ধির হার প্রস্থের হ্রাসের চেয়ে বেশী হলে- ‪টেকনিকঃ‬"
  "ক্ষেত্রফল বৃদ্ধির হার=[{(100+বৃদ্ধির হার)×(100-হ্রাসের হার)}÷100]-100‪প্রশ্নঃএকটি‬ আয়তক্ষেত্রের দৈর্ঘ্য 20% বাড়ালে এবং  প্রস্থ 10% কমালে ক্ষেত্রফল শতকরা কত বৃদ্ধি পাবে?"
      "গণিতের সর্টকাট"
      " পরিমাপের অংকগুলো মাত্র ৪টি টেকনিকে(উদাহরন সহ)আলোচনাঃ"
      "সুত্রঃ1- দৈর্ঘ্যর বৃদ্ধির হার প্রস্থের হ্রাসের চেয়ে বেশী হলে- ‪টেকনিকঃ‬"
      "ক্ষেত্রফল বৃদ্ধির হার=[{(100+বৃদ্ধির হার)×(100-হ্রাসের হার)}÷100]-100‪প্রশ্নঃএকটি‬ আয়তক্ষেত্রের দৈর্ঘ্য 20% বাড়ালে এবং  প্রস্থ 10% কমালে ক্ষেত্রফল শতকরা কত বৃদ্ধি পাবে?"
      "গণিতের সর্টকাট"
      " পরিমাপের অংকগুলো মাত্র ৪টি টেকনিকে(উদাহরন সহ)আলোচনাঃ"
      "সুত্রঃ1- দৈর্ঘ্যর বৃদ্ধির হার প্রস্থের হ্রাসের চেয়ে বেশী হলে- ‪টেকনিকঃ‬"
      "ক্ষেত্রফল বৃদ্ধির হার=[{(100+বৃদ্ধির হার)×(100-হ্রাসের হার)}÷100]-100‪প্রশ্নঃএকটি‬ আয়তক্ষেত্রের দৈর্ঘ্য 20% বাড়ালে এবং  প্রস্থ 10% কমালে ক্ষেত্রফল শতকরা কত বৃদ্ধি পাবে?"
      "গণিতের সর্টকাট"
      " পরিমাপের অংকগুলো মাত্র ৪টি টেকনিকে(উদাহরন সহ)আলোচনাঃ"
      "সুত্রঃ1- দৈর্ঘ্যর বৃদ্ধির হার প্রস্থের হ্রাসের চেয়ে বেশী হলে- ‪টেকনিকঃ‬"
      "ক্ষেত্রফল বৃদ্ধির হার=[{(100+বৃদ্ধির হার)×(100-হ্রাসের হার)}÷100]-100‪প্রশ্নঃএকটি‬ আয়তক্ষেত্রের দৈর্ঘ্য 20% বাড়ালে এবং  প্রস্থ 10% কমালে ক্ষেত্রফল শতকরা কত বৃদ্ধি পাবে?"
      "গণিতের সর্টকাট"
      " পরিমাপের অংকগুলো মাত্র ৪টি টেকনিকে(উদাহরন সহ)আলোচনাঃ"
      "সুত্রঃ1- দৈর্ঘ্যর বৃদ্ধির হার প্রস্থের হ্রাসের চেয়ে বেশী হলে- ‪টেকনিকঃ‬"
      "ক্ষেত্রফল বৃদ্ধির হার=[{(100+বৃদ্ধির হার)×(100-হ্রাসের হার)}÷100]-100‪প্রশ্নঃএকটি‬ আয়তক্ষেত্রের দৈর্ঘ্য 20% বাড়ালে এবং  প্রস্থ 10% কমালে ক্ষেত্রফল শতকরা কত বৃদ্ধি পাবে?";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("topic will be come here "),

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("category Name  "),
                Icon(Icons.arrow_forward),
                InkWell(child: Text("  SubCategory Name"
                ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder:
                                (context) => SubCategory ()));
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(

                details,
              style: TextStyle(
                fontSize: 16
              ),

            ),
          )
        ],
      ),
    );
  }
}
