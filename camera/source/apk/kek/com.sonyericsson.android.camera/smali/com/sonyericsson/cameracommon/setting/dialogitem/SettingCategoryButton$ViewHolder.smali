.class Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;
.super Ljava/lang/Object;
.source "SettingCategoryButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field mBackground:Landroid/view/View;

.field mCategory:Landroid/widget/TextView;

.field mContainer:Landroid/view/View;

.field mDivider:Landroid/view/View;

.field mValue:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;-><init>()V

    return-void
.end method
