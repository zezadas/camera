.class public Lcom/sonymobile/cameracommon/view/RecognizedScene;
.super Ljava/lang/Object;
.source "RecognizedScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/view/RecognizedScene$1;
    }
.end annotation


# instance fields
.field final mIconId:I

.field final mSceneMode:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

.field final mTextId:I


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V
    .locals 0
    .param p1, "scene"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;
    .param p2, "iconId"    # I
    .param p3, "textId"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mSceneMode:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    .line 28
    iput p2, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mIconId:I

    .line 29
    iput p3, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mTextId:I

    .line 30
    return-void
.end method

.method public static create(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;)Lcom/sonymobile/cameracommon/view/RecognizedScene;
    .locals 3
    .param p0, "scene"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    .prologue
    const/4 v2, -0x1

    .line 33
    if-nez p0, :cond_0

    .line 34
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V

    .line 93
    :goto_0
    return-object v0

    .line 37
    :cond_0
    sget-object v0, Lcom/sonymobile/cameracommon/view/RecognizedScene$1;->$SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    invoke-direct {v0, p0, v2, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V

    goto :goto_0

    .line 39
    :pswitch_0
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    invoke-direct {v0, p0, v2, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V

    goto :goto_0

    .line 42
    :pswitch_1
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_scene_recog_softsnap_icn:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_scenes_auto_recog_softsnap_cy_txt:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V

    goto :goto_0

    .line 45
    :pswitch_2
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_scene_recog_landscape_icn:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_scenes_auto_recog_landscape_txt:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V

    goto :goto_0

    .line 48
    :pswitch_3
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_scene_recog_night_icn:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_scenes_auto_recog_twilight_txt:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V

    goto :goto_0

    .line 51
    :pswitch_4
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_scene_recog_night_portrait_icn:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_scenes_auto_recog_twilight_portrait_cy_txt:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V

    goto :goto_0

    .line 54
    :pswitch_5
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_scene_recog_backlight_icn:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_scenes_auto_recog_backlight_txt:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V

    goto :goto_0

    .line 57
    :pswitch_6
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_scene_recog_backlight_portrait_icn:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_scenes_auto_recog_backlight_portrait_cy_txt:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V

    goto :goto_0

    .line 60
    :pswitch_7
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_scene_recog_document_icn:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_scenes_auto_recog_text_txt:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V

    goto :goto_0

    .line 63
    :pswitch_8
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_scene_recog_super_low_light_icn:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_scenes_auto_recog_low_light_cy_txt:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V

    goto :goto_0

    .line 66
    :pswitch_9
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_scene_recog_infant_icn:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_scenes_auto_recog_infant_cy_txt:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V

    goto :goto_0

    .line 69
    :pswitch_a
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_scene_recog_spotlight_icn:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_scenes_auto_recog_spotlight_cy_txt:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V

    goto :goto_0

    .line 72
    :pswitch_b
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_scene_recog_gourmet_icn:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_scenes_auto_recog_gourmet_txt:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;II)V

    goto/16 :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mIconId:I

    return v0
.end method

.method public getSceneMode()Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mSceneMode:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mTextId:I

    return v0
.end method
