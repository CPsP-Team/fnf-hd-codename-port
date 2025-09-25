import hxvlc.util.Handle;
import lime.graphics.Image;
import funkin.backend.utils.WindowUtils;

function preStateSwitch() {
	WindowUtils.winTitle = window.title = "Friday Night Funkin' HD";
    window.setIcon(Image.fromBytes(Assets.getBytes(Paths.image('game/icon'))));
    Main.framerateSprite.codenameBuildField.text = "Friday Night Funkin' HD";
    FlxG.camera.bgColor = 0xFF000000;
}

function destroy() WindowUtils.winTitle = window.title = "Friday Night Funkin' - Codename Engine";

