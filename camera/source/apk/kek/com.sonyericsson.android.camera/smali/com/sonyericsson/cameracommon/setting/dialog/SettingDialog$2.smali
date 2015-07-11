.class Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$2;
.super Ljava/lang/Object;
.source "SettingDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->close()V

    .line 159
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 154
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 149
    return-void
.end method
