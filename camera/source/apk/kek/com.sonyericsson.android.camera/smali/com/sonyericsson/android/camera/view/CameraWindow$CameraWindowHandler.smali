.class Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;
.super Landroid/os/Handler;
.source "CameraWindow.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/CameraWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraWindowHandler"
.end annotation


# static fields
.field private static final MSG_OPEN_SCENE_DIALOG:I = 0x2

.field private static final MSG_OPEN_SETTINGS_MENU:I = 0x1

.field private static final MSG_PHOTO_VIDEO_SWITCH:I = 0x4

.field private static final MSG_SWITCH_CAMERA:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/CameraWindow;)V
    .locals 0

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/CameraWindow;Lcom/sonyericsson/android/camera/view/CameraWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/view/CameraWindow;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/view/CameraWindow$1;

    .prologue
    .line 1173
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;-><init>(Lcom/sonyericsson/android/camera/view/CameraWindow;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1181
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1201
    :goto_0
    :pswitch_0
    return-void

    .line 1183
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$200(Lcom/sonyericsson/android/camera/view/CameraWindow;)Lcom/sonyericsson/android/camera/view/settings/SettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->updateShortcutTray()V

    .line 1184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$200(Lcom/sonyericsson/android/camera/view/CameraWindow;)Lcom/sonyericsson/android/camera/view/settings/SettingController;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->PHOTO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->openMenuDialog(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)V

    goto :goto_0

    .line 1194
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # invokes: Lcom/sonyericsson/android/camera/view/CameraWindow;->switchPhotoVideo()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$300(Lcom/sonyericsson/android/camera/view/CameraWindow;)V

    goto :goto_0

    .line 1181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
