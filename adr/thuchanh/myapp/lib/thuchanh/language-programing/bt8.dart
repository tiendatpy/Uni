void main(){
  var res = cntWords("hello hello con te  te con de ");
  res.forEach((key, value) {
    print("$key: $value");
  });
}
Map<String,int> cntWords(String s){
  Map<String,int> outputMap = {};
  List<String> words = s.toLowerCase().split(RegExp(r"[\s,]+"));
  for (String word in words) { 
    outputMap[word] = (outputMap[word] ?? 0) + 1; 
  }
  outputMap.remove('');
  return outputMap;
}