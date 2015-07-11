.class Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$2;
.super Ljava/lang/Object;
.source "SettingEvSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 97
    :goto_1
    return v0

    .line 80
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->updateIndicator(FI)V
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->access$300(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;FI)V

    goto :goto_1

    .line 84
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->updateIndicator(FI)V
    invoke-static {v0, v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->access$300(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;FI)V

    goto :goto_0

    .line 89
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->updateIndicator(FI)V
    invoke-static {v0, v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->access$300(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;FI)V

    .line 92
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
