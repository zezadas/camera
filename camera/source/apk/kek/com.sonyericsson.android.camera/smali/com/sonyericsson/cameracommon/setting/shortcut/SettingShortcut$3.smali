.class Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$3;
.super Ljava/lang/Object;
.source "SettingShortcut.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;


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
    .line 296
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$3;->this$0:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 1
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$3;->this$0:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    # invokes: Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->access$200(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 301
    return-void
.end method
