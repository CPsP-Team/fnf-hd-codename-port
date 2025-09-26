import hxvlc.util.Handle;
import lime.graphics.Image;
import funkin.backend.utils.WindowUtils;
import funkin.backend.system.framerate.Framerate;

function preStateSwitch() {
	WindowUtils.winTitle = window.title = "Friday Night Funkin' HD";
    window.setIcon(Image.fromBytes(Assets.getBytes(Paths.image('game/icon'))));
    Framerate.codenameBuildField.text = "Friday Night Funkin' HD";
    FlxG.camera.bgColor = 0xFF000000;
}

function destroy() WindowUtils.winTitle = window.title = "Friday Night Funkin' - Codename Engine";
