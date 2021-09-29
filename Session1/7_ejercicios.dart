main(){
  print(superDigit(13.toString()));
}


/**
 * Datos prueba
 * We promptly judged antique ivory buckles for the next prize
 * We promptly judged antique ivory buckles for the prize
 */
String pangram(String sentence)=>
      sentence.replaceAll(' ','').toLowerCase().split('').toSet().length==26?'pangram':'not pangram';


/**
 * Datos prueba
 * 148
 * 9875 
 * 123 
 */
int superDigit(String n) {
    if(n.length==1) return int.parse(n);

    double sum = 0;
    n.split('').forEach((element) => sum+=double.parse(element));

    return superDigit(sum.toString().replaceAll('.0',''));
  }