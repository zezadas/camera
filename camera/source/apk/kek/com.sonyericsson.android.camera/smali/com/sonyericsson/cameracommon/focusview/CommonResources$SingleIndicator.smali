.class public Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;
.super Ljava/lang/Object;
.source "CommonResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/CommonResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleIndicator"
.end annotation


# static fields
.field public static final FAIL:I

.field public static final NORMAL:I

.field public static final SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_focus_indicator_white_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->NORMAL:I

    .line 30
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_focus_indicator_green_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->SUCCESS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
