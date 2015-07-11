.class Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$1;
.super Landroid/database/DataSetObserver;
.source "SettingTabDialogBasic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->registerOnItemSelectedListener()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->access$000(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)V

    .line 93
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->registerOnItemSelectedListener()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->access$000(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)V

    .line 98
    return-void
.end method
