.class Lcom/sonyericsson/android/camera/view/settings/SettingController$1;
.super Ljava/lang/Object;
.source "SettingController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/settings/SettingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/settings/SettingController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController$1;->this$0:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController$1;->this$0:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    # getter for: Lcom/sonyericsson/android/camera/view/settings/SettingController;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->access$200(Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    move-result-object v4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 110
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController$1;->this$0:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    # getter for: Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->access$300(Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    .line 111
    .local v1, "type":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 112
    sget-object v4, Lcom/sonyericsson/android/camera/view/settings/SettingController$2;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 122
    :cond_0
    sget-object v4, Lcom/sonyericsson/android/camera/view/settings/SettingController$2;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 145
    :cond_1
    :goto_0
    :pswitch_0
    return v2

    .line 124
    :pswitch_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController$1;->this$0:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    # getter for: Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->access$100(Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isControlDialogOpened()Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController$1;->this$0:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    # getter for: Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->access$100(Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController$1;->this$0:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->closeDialogTemporary()V

    :cond_2
    move v2, v3

    .line 133
    goto :goto_0

    .line 137
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController$1;->this$0:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    # getter for: Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->access$100(Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController$1;->this$0:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->closeDialogTemporary()V

    :cond_3
    move v2, v3

    .line 142
    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 122
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
