.class Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$1;
.super Landroid/widget/FrameLayout;
.source "SettingShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$1;->this$0:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 56
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 57
    .local v0, "height":I
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$1;->this$0:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    # invokes: Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->updateItemHeight(I)V
    invoke-static {v1, v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->access$000(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;I)V

    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 59
    return-void
.end method
