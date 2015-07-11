.class public Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;
.super Ljava/lang/Object;
.source "SettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemLayoutParams"
.end annotation


# instance fields
.field public final bottom:Z

.field public final height:I

.field public final left:Z

.field public final right:Z

.field public final top:Z


# direct methods
.method public constructor <init>(IZZZZ)V
    .locals 0
    .param p1, "height"    # I
    .param p2, "top"    # Z
    .param p3, "bottom"    # Z
    .param p4, "left"    # Z
    .param p5, "right"    # Z

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->height:I

    .line 145
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->top:Z

    .line 146
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->bottom:Z

    .line 147
    iput-boolean p4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->left:Z

    .line 148
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->right:Z

    .line 149
    return-void
.end method
