.class public abstract Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
.super Ljava/lang/Object;
.source "SettingDialogItem.java"


# instance fields
.field private mItem:Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 0
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->mItem:Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 23
    return-void
.end method


# virtual methods
.method protected changeDrawableState(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;
    .locals 1
    .param p1, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    .line 50
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    return-object v0
.end method

.method public getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->mItem:Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public select(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 0
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 38
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->select()V

    .line 39
    return-void
.end method

.method public setItem(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 0
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->mItem:Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 27
    return-void
.end method

.method public setUiOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 43
    return-void
.end method

.method public abstract update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
.end method
