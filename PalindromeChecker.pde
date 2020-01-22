public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String check = word;
  check = check.toLowerCase();
  check = noSpaces(check);
  check = onlyLetters(check);
  if(isPalindrome(check) == true){
    return true;
  }
  return false;
}
public String reverse(String sWord){
  String reverse = new String();
  for(int i = sWord.length()-1;i>=0;i--){
    reverse=reverse + sWord.charAt(i);
  }
  return reverse;
}
public String noSpaces(String sWord){
  String space = "";
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.charAt(i)!= ' '){
      space = space + sWord.charAt(i);
    }
  }
  return space;
}
public String onlyLetters(String sString){
  String beans = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      beans = beans + sString.charAt(i);
    }
  }
  return beans;
}
public boolean isPalindrome(String sWord){
  String reverse = new String();
  for(int i = sWord.length()-1;i>=0;i--){
    reverse=reverse + sWord.charAt(i);
  }
  if(sWord.equals(reverse)){
    return true;
  }else{
    return false;
  }
}





