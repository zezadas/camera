.class Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;
.super Ljava/lang/Object;
.source "FastViewFinder.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V
    .locals 0

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 1103
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 1106
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1116
    :cond_0
    :goto_0
    return v3

    .line 1110
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    goto :goto_0

    .line 1106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
