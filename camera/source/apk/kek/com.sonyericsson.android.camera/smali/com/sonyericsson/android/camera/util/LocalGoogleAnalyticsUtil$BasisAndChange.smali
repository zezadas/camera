.class Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;
.super Ljava/lang/Object;
.source "LocalGoogleAnalyticsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasisAndChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBasis:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mChange:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;, "Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange<TT;>;"
    .local p1, "basis":Ljava/lang/Object;, "TT;"
    .local p2, "change":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mBasis:Ljava/lang/Object;

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mChange:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mBasis:Ljava/lang/Object;

    .line 45
    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mChange:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mChange:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mChange:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mBasis:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method hasChange()Z
    .locals 2

    .prologue
    .line 49
    .local p0, "this":Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;, "Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mBasis:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mChange:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
