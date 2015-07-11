.class public final Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;
.super Ljava/lang/Object;
.source "CoverModeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/coversupport/CoverModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowInfo"
.end annotation


# instance fields
.field public appPadding:I

.field public height:I

.field public paddingBottom:I

.field public paddingLeft:I

.field public paddingRight:I

.field public paddingTop:I

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->paddingTop:I

    .line 68
    iput v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->paddingBottom:I

    .line 69
    iput v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->paddingLeft:I

    .line 70
    iput v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->paddingRight:I

    .line 71
    iput v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->width:I

    .line 72
    iput v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->height:I

    .line 73
    iput v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->appPadding:I

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/coversupport/CoverModeHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/coversupport/CoverModeHandler$1;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;-><init>()V

    return-void
.end method
