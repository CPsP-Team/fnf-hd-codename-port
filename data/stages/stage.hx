function create()
{
    switch(SONG.meta.name)
    {
        case "fresh":
            stage.getSprite('CROWD_FRESH').alpha = 1;
        case "dadbattle":
            stage.getSprite('CROWD_DADBATTLE').alpha = 1;
    }
}
