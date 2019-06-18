package entities;

import flixel.*;
import flixel.math.*;

class Player extends FlxSprite
{
    public static inline var SPEED = 200;

    private var direction:FlxVector;

	public function new(x:Float, y:Float) {
        super(x, y);
        loadGraphic("assets/images/player.png");
        direction = new FlxVector();
    }

    override public function update(elapsed:Float) {
        if(FlxG.keys.pressed.W) {
            direction.y = -SPEED;
        }
        else if(FlxG.keys.pressed.S) {
            direction.y = SPEED;
        }
        else {
            direction.y = 0;
        }
        if(FlxG.keys.pressed.A) {
            direction.x = -SPEED;
        }
        else if(FlxG.keys.pressed.D) {
            direction.x = SPEED;
        }
        else {
            direction.x = 0;
        }
        direction.normalize();
        direction.scale(SPEED);
        angle = getMidpoint().angleBetween(FlxG.mouse.getWorldPosition());
        velocity = new FlxPoint(direction.x, direction.y);
        super.update(elapsed);
    }
}
