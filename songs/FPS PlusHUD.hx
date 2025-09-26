import funkin.backend.FunkinText;
import openfl.system.System;

var scoreTxtFPSPlus:FunkinText;

function postCreate() {
    scoreTxtFPSPlus = new FunkinText(healthBarBG.x - 155, (FlxG.height * 0.9) + 36, 800, "", 22);
    scoreTxtFPSPlus.cameras = [camHUD];
    scoreTxtFPSPlus.screenCenter(FlxAxes.X);
    scoreTxtFPSPlus.x += 180;
    add(scoreTxtFPSPlus);
    for (hudOld in [scoreTxt, accuracyTxt, missesTxt, splashHandler]) {
        hudOld.visible = false;
    }
    
}

function update() {
    var num = accuracy;
	num = num * Math.pow(10, 100);
	num = Math.round( num ) / Math.pow(10, 100);
    if (accuracy < 0) {
        scoreTxtFPSPlus.text = "Score:" + songScore + " | Misses:" + misses + " | Accuracy:0%";
    }
    else {
        scoreTxtFPSPlus.text = "Score:" + songScore + " | Misses:" + misses + " | Accuracy:" + CoolUtil.quantize(accuracy * 100, 100) + "%";
    }
}