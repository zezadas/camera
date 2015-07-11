.class Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi$1;
.super Ljava/lang/Object;
.source "SettingUi.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi$1;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 292
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi$1;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    # getter for: Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->access$000(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 295
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 305
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 299
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi$1;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi$1;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    .line 302
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
