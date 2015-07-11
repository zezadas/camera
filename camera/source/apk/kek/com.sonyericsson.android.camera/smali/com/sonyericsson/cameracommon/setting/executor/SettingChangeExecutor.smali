.class public Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;
.super Ljava/lang/Object;
.source "SettingChangeExecutor.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mSettingChanger:Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor<TT;>;"
    .local p1, "changer":Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;->mSettingChanger:Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;

    .line 23
    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor<TT;>;"
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;->mSettingChanger:Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;->changeValue(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V

    .line 28
    return-void
.end method
