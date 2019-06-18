package states;

import flixel.*;
import flixel.util.*;
import entities.*;

class PlayState extends FlxState
{
    private var player:Player;

	override public function create() {
        // Set cursor sprite
        var cursor = new FlxSprite();
        cursor.loadGraphic("assets/images/cursor.png");
        FlxG.mouse.load(cursor.pixels);

        player = new Player(0, 0);
        add(player);

        super.create();
    }

    override public function update(elapsed:Float) {
        super.update(elapsed);
    }
}
