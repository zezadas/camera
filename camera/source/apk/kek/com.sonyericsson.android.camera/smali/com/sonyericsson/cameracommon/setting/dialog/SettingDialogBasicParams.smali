.class public final enum Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;
.super Ljava/lang/Enum;
.source "SettingDialogBasicParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

.field public static final enum SECOND_LAYER_DIALOG_DOUBLE_ITEM_PARAMS:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

.field public static final enum SECOND_LAYER_DIALOG_SINGLE_ITEM_PARAMS:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

.field public static final enum SHORTCUT_DIALOG_PARAMS:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;


# instance fields
.field private final mBackgroundId:I

.field private final mItemHeightResId:I

.field private final mPaddingResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    const-string v1, "SHORTCUT_DIALOG_PARAMS"

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_dialog_item_height:I

    sget v4, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_dialog_padding:I

    sget v5, Lcom/sonyericsson/cameracommon/R$drawable;->cam_shortcut_dialog_background_icn:I

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->SHORTCUT_DIALOG_PARAMS:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 20
    new-instance v3, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    const-string v4, "SECOND_LAYER_DIALOG_SINGLE_ITEM_PARAMS"

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->second_layer_dialog_item_double_line_height:I

    sget v7, Lcom/sonyericsson/cameracommon/R$dimen;->second_layer_dialog_padding:I

    sget v8, Lcom/sonyericsson/cameracommon/R$drawable;->cam_setting_sub_dialog_background_icn:I

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->SECOND_LAYER_DIALOG_SINGLE_ITEM_PARAMS:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 24
    new-instance v3, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    const-string v4, "SECOND_LAYER_DIALOG_DOUBLE_ITEM_PARAMS"

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->second_layer_dialog_item_double_line_height:I

    sget v7, Lcom/sonyericsson/cameracommon/R$dimen;->second_layer_dialog_padding:I

    sget v8, Lcom/sonyericsson/cameracommon/R$drawable;->cam_setting_sub_dialog_background_icn:I

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->SECOND_LAYER_DIALOG_DOUBLE_ITEM_PARAMS:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->SHORTCUT_DIALOG_PARAMS:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->SECOND_LAYER_DIALOG_SINGLE_ITEM_PARAMS:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->SECOND_LAYER_DIALOG_DOUBLE_ITEM_PARAMS:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    aput-object v1, v0, v10

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->$VALUES:[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "itemHeight"    # I
    .param p4, "padding"    # I
    .param p5, "backgroundId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->mItemHeightResId:I

    .line 34
    iput p4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->mPaddingResId:I

    .line 35
    iput p5, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->mBackgroundId:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->$VALUES:[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    return-object v0
.end method


# virtual methods
.method public getBackgroundId()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->mBackgroundId:I

    return v0
.end method

.method public getItemHeight(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->mItemHeightResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->mPaddingResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
