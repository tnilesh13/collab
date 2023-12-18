class VideoViewModel {
  VideoView? videoView;

  VideoViewModel({this.videoView});

  VideoViewModel.fromJson(Map<String, dynamic> json) {
    videoView = json['VideoView'] != null
        ? new VideoView.fromJson(json['VideoView'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.videoView != null) {
      data['VideoView'] = this.videoView!.toJson();
    }
    return data;
  }
}

class VideoView {
  String? src;
  String? containerColor;
  String? backgroundColor;
  int? margin;
  int? padding;
  TextView? textView;

  VideoView(
      {this.src,
      this.containerColor,
      this.backgroundColor,
      this.margin,
      this.padding,
      this.textView});

  VideoView.fromJson(Map<String, dynamic> json) {
    src = json['Src'];
    containerColor = json['ContainerColor'];
    backgroundColor = json['BackgroundColor'];
    margin = json['Margin'];
    padding = json['Padding'];
    textView = json['TextView'] != null
        ? new TextView.fromJson(json['TextView'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Src'] = this.src;
    data['ContainerColor'] = this.containerColor;
    data['BackgroundColor'] = this.backgroundColor;
    data['Margin'] = this.margin;
    data['Padding'] = this.padding;
    if (this.textView != null) {
      data['TextView'] = this.textView!.toJson();
    }
    return data;
  }
}

class TextView {
  int? fontSize;
  String? fontColor;
  String? fontWeight;
  String? fontType;
  int? numberOfLines;
  String? backgroundColor;
  int? margin;
  int? padding;
  String? text;

  TextView(
      {this.fontSize,
      this.fontColor,
      this.fontWeight,
      this.fontType,
      this.numberOfLines,
      this.backgroundColor,
      this.margin,
      this.padding,
      this.text});

  TextView.fromJson(Map<String, dynamic> json) {
    fontSize = json['FontSize'];
    fontColor = json['FontColor'];
    fontWeight = json['FontWeight'];
    fontType = json['FontType'];
    numberOfLines = json['NumberOfLines'];
    backgroundColor = json['BackgroundColor'];
    margin = json['Margin'];
    padding = json['Padding'];
    text = json['Text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['FontSize'] = this.fontSize;
    data['FontColor'] = this.fontColor;
    data['FontWeight'] = this.fontWeight;
    data['FontType'] = this.fontType;
    data['NumberOfLines'] = this.numberOfLines;
    data['BackgroundColor'] = this.backgroundColor;
    data['Margin'] = this.margin;
    data['Padding'] = this.padding;
    data['Text'] = this.text;
    return data;
  }
}