package;

import flixel.*;
import openfl.display.Sprite;
import states.*;

class Main extends Sprite
{
    public function new() {
        super();
        addChild(new FlxGame(0, 0, PlayState, true));
    }
}
