.class public Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;
.super Ljava/lang/Object;
.source "CommonResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/CommonResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceIndicator"
.end annotation


# static fields
.field public static final FAIL:I

.field public static final NORMAL:I

.field public static final PRIORITY:I

.field public static final SUCCESS:I

.field public static final TRANSPARENT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_focus_indicator_white_for_touch_cap_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->NORMAL:I

    .line 43
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_focus_indicator_green_for_touch_cap_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->SUCCESS:I

    .line 46
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_focus_indicator_yellow_for_touch_cap_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->PRIORITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
