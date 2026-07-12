## STATUS: [in dev]
# FunkinGif
this is a mod "library" for adding gifs as sprites on [Friday Night Funkin'](https://github.com/FunkinCrew/funkin)
while not inherently a good execution of this concept, it "should" work (check releases or the gamebanana)

I would recommend using 'flags' to avoid possible issues if funkingif doesn't exist or has problems getting parsed
```haxe 
    #if funkingif /* put your code here*/ #end
```
natually this won't always work, or could break.
I do not claim this to work or be upheld forever, I simply enjoy coding and sometimes make silly things

> [!NOTE]
> Keep in mind that this is being developed for the windows builds of Funkin'
> If you run into errors on other builds (Mac, Linux) I CAN'T help you, but you're free to open issues or offer help.

# Disclaimer
while I am crediting MAJigsaw77 and yanrishatum I'm not using their code directly,
instead iterating and adjusting it to make everything work for funkin' considering errors were common when using the files directly

specifically parameterized types: 
```haxe 
    var a = new Array<Int>();
    var b = new Vector<Int>();
```
these tend to throw errors relating to the paramter arguement, and I have no way to fix this since it's a Hscript issue

to avoid this I decided to adjust the code to avoid this bevahioral error.
I understand this might make it less stable by avoiding the parameterization of types but will guarantee it has a bigger chance of working

# Variables & Functions
```haxe

//this function is used to load any given sprite's gif
function load(gif:String, ?loop:Bool, ?fps:Int) {}
/**
 * @param gif name/path of the gif file in question
 * @param loop if the gif should endlessly loop, if blank it'll loop
 * @param fps if the gif should have a set frame rate, if blank it'll use it's native frame rate
 */

// used to start or reset any given sprite's gif
function play() {}

// used to pause any given sprite's gif
function pause() {}

// used to resume playing any given sprite's gif
function resume() {}

```

# Usage
```haxe
import gifs.objects.GifSprite;

var demoGif:GifSprite = new GifSprite(x, y).load('test', true, 24);
demoGif.screenCenter();
add(demoGif);
```
