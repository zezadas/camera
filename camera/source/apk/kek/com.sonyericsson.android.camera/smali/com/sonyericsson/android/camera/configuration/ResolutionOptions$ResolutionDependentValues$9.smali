.class final Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$9;
.super Ljava/lang/Object;
.source "ResolutionOptions.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1
    .param p1, "videoSize"    # I

    .prologue
    .line 140
    # invokes: Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getDefaultVideoSize(I)I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->access$000(I)I

    move-result v0

    return v0
.end method
