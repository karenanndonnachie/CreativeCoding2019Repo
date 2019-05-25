class Console
{
    float x;
    float y;
    String chars;
    int numChars;
    boolean active;
    int font;
    
    Console(float x, float y, int font)
    {
        this.x = x;
        this.y = y;
        active = false;
        this.font = font;
        chars = "";
        numChars = 0;
    }
    
    void display()
    {
        line(x,y,x,y+font);
        textSize(font);
        text(chars,x,y);
    }
    
    void addChar(char c)
    {
        chars += c;
        numChars++;
    }
    
    String readString()
    {
        return chars;
    }
    
    boolean isActive()
    {
        return active;
    }
    
    void activate()
    {
        active = true;
    }
    
    void deactivate()
    {
        active = false;
    }
    
    void reset()
    {
        chars = "";
    }
    
    void deleteChar()
    {
            if (numChars > 0)
            {        
                  chars = chars.substring(0,chars.length()-1);
                  numChars -= 1;
            }
    }
    void playWord() //this is where your typed in text works...
    {
      background(0); //[optional] overwrite the text
      char[] allChars = new char[chars.length()]; //gather the string and split into letters
      for (int i = 0; i < chars.length(); i++) { //for each letter that was typed...
        allChars[i] = chars.charAt(i);
        println(allChars[i]); //just to debug
        x=random(450);y=random(450); //place letter randomly x & y
        font = int(random(100)+12); textSize(font); //randomise size of letters
        text(allChars[i], x, y); //write each letter
           //here you can play each typed character's note & display the braille
           //it would be something like   allChars[i].do()  or 
           // do(allChars[i]) would trigger a finction "do()" with a variable of the letter
    }
    chars="";
    }
}
