.class Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$2;
.super Landroid/database/DataSetObserver;
.source "SettingShortcut.java"


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
    .line 278
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$2;->this$0:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$2;->this$0:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    # invokes: Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->registerOnItemSelectedListener()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->access$100(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;)V

    .line 284
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$2;->this$0:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    # invokes: Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->registerOnItemSelectedListener()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->access$100(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;)V

    .line 290
    return-void
.end method
