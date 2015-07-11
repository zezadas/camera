.class Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$4;
.super Ljava/lang/Object;
.source "SettingShortcut.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$4;->this$0:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$4;->this$0:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    # getter for: Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mRotation:F
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->access$300(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setRotation(F)V

    .line 310
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 315
    return-void
.end method
