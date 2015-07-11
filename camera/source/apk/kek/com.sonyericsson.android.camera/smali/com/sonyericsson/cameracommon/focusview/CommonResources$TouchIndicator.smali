.class public Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;
.super Ljava/lang/Object;
.source "CommonResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/CommonResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchIndicator"
.end annotation


# static fields
.field public static final FAIL:I

.field public static final NORMAL:I

.field public static final SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_focus_indicator_white_for_touch_cap_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->NORMAL:I

    .line 36
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_focus_indicator_green_for_touch_cap_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->SUCCESS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
