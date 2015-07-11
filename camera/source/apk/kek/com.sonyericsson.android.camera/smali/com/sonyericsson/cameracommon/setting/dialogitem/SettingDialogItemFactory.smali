.class public Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;
.super Ljava/lang/Object;
.source "SettingDialogItemFactory.java"


# static fields
.field public static final BUTTON:I = 0x1

.field public static final CATEGORY_BUTTON:I = 0x3

.field public static final CATEGORY_SWITCH:I = 0x4

.field public static final END_OF_TYPE_LIST:I = 0x8

.field public static final EV:I = 0x5

.field public static final ICON:I = 0x0

.field public static final MENU:I = 0x6

.field public static final VALUE_BUTTON:I = 0x2

.field public static final VERTICAL_ICON_LIST:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;Landroid/view/ViewGroup;)Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
    .locals 4
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 35
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 56
    :goto_0
    return-object v1

    .line 37
    :cond_0
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    if-nez v1, :cond_1

    .line 38
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 41
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_0

    .line 43
    :cond_2
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 44
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_0

    .line 46
    :cond_3
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 47
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_0

    .line 49
    :cond_4
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 50
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_0

    .line 52
    :cond_5
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    .line 53
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_0

    .line 55
    :cond_6
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 56
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_0

    .line 59
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The specified type is unknown. type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDialogItemTypeCount()I
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x8

    return v0
.end method
