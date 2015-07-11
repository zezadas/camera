.class Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$1;
.super Landroid/widget/FrameLayout;
.source "SettingEvSlider.java"


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
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 59
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->getSelectedItemDisplyPosition()I
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->access$100(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;)I

    move-result v1

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->updateIndicator(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->access$200(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;I)V

    .line 68
    return-void
.end method
