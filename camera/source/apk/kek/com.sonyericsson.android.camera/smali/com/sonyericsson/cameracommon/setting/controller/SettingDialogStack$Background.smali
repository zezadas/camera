.class Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;
.super Landroid/widget/FrameLayout;
.source "SettingDialogStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Background"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .line 701
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 702
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 734
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    # getter for: Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOnInterceptKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->access$100(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 736
    .local v0, "intercepted":Z
    if-nez v0, :cond_0

    .line 737
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 754
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 739
    :sswitch_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    # getter for: Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->access$200(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 743
    :sswitch_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    goto :goto_0

    .line 747
    :sswitch_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v1

    goto :goto_1

    .line 737
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x1b -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 761
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 769
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 763
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeCurrentDialog()Z

    move-result v0

    goto :goto_0

    .line 761
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 709
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    # invokes: Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getCurrentDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->access$000(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v0

    .line 711
    .local v0, "current":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 725
    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    :pswitch_0
    return v1

    .line 717
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v0, v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;->hitTest(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 719
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs(Z)V

    goto :goto_0

    .line 712
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
