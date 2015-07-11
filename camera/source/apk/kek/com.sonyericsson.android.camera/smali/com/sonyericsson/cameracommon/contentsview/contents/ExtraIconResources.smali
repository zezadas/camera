.class Lcom/sonyericsson/cameracommon/contentsview/contents/ExtraIconResources;
.super Ljava/lang/Object;
.source "ExtraIconResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/contents/ExtraIconResources$1;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static get(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;)I
    .locals 2
    .param p0, "type"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .prologue
    .line 20
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/ExtraIconResources$1;->$SwitchMap$com$sonyericsson$cameracommon$contentsview$contents$Content$ContentsType:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 22
    :pswitch_0
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_photo_stack_burst_icn:I

    goto :goto_0

    .line 25
    :pswitch_1
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_photo_stack_timeshift_icn:I

    goto :goto_0

    .line 28
    :pswitch_2
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_photo_stack_timeshift_video_hummingbird_icn:I

    goto :goto_0

    .line 31
    :pswitch_3
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_photo_stack_timeshift_video_120fps_icn:I

    goto :goto_0

    .line 34
    :pswitch_4
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_photo_stack_4k_icn:I

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
