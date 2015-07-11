.class public Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;
.super Ljava/lang/Object;
.source "CommonResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/CommonResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectIndicator"
.end annotation


# static fields
.field public static final FAIL:I

.field public static final SUCCESS:I

.field public static final TRACKING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_focus_indicator_object_tracking_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->TRACKING:I

    .line 54
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_focus_indicator_object_tracking_success_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->SUCCESS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
