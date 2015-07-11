.class public Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;
.super Ljava/lang/Object;
.source "OnScreenButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resource"
.end annotation


# static fields
.field public static final NONE:I = -0x1


# instance fields
.field final description:I

.field final landscape:I

.field final portrait:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "landscape"    # I
    .param p2, "portrait"    # I
    .param p3, "description"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->landscape:I

    .line 47
    iput p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->portrait:I

    .line 48
    iput p3, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->description:I

    .line 49
    return-void
.end method
