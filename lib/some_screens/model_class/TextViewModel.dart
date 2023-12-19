// class TextViewModel {
//   TextView? textView;

//   TextViewModel({this.textView});

//   TextViewModel.fromJson(Map<String, dynamic> json) {
//     textView = json['TextView'] != null
//         ? new TextView.fromJson(json['TextView'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.textView != null) {
//       data['TextView'] = this.textView!.toJson();
//     }
//     return data;
//   }
// }

// class TextView {
//   int? fontSize;
//   int? descriptionFontSize;
//   String? fontColor;
//   String? fontWeight;
//   String? fontType;
//   int? numberOfLines;
//   String? backgroundColor;
//   int? margin;
//   int? padding;
//   String? text;
//   String? description;

//   TextView(
//       {this.fontSize,
//       this.descriptionFontSize,
//       this.fontColor,
//       this.fontWeight,
//       this.fontType,
//       this.numberOfLines,
//       this.backgroundColor,
//       this.margin,
//       this.padding,
//       this.text,
//       this.description});

//   TextView.fromJson(Map<String, dynamic> json) {
//     fontSize = json['FontSize'];
//     descriptionFontSize = json['DescriptionFontSize'];
//     fontColor = json['FontColor'];
//     fontWeight = json['FontWeight'];
//     fontType = json['FontType'];
//     numberOfLines = json['NumberOfLines'];
//     backgroundColor = json['BackgroundColor'];
//     margin = json['Margin'];
//     padding = json['Padding'];
//     text = json['Text'];
//     description = json['Description'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['FontSize'] = this.fontSize;
//     data['DescriptionFontSize'] = this.descriptionFontSize;
//     data['FontColor'] = this.fontColor;
//     data['FontWeight'] = this.fontWeight;
//     data['FontType'] = this.fontType;
//     data['NumberOfLines'] = this.numberOfLines;
//     data['Description'] = this.description;
//     data['Margin'] = this.margin;
//     data['Padding'] = this.padding;
//     data['Text'] = this.text;
//     return data;
//   }
// }