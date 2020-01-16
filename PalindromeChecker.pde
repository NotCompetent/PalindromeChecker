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
  String initial = word;
  initial.toLowerCase;
  initial = noSpaces(initial);
  String check = reverse(word);
  check.toLowerCase;
  check = noSpaces(check);
  if(check.equals(initial)){
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




