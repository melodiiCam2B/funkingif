# Disclaimer
while I am crediting MAJigsaw77 and yanrishatum I'm not using their code directly,
instead iterating on it to make everything work for funkin' since it still throws errors

specifically parameterized types: 
```haxe 
    Array<Int>, Vector<Int>, DynamicAccess<Int>
```
these tend to throw errors relating to the paramter arrows <, >

to avoid this I decided to recode it from the ground up so it works for Friday Night Funkin' (0.8.4) at the of writing.
I understand this might make it less stable by avoiding the parameterization of types 

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
