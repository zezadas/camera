.class Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil$GetSharedPreferencesTask;
.super Ljava/lang/Object;
.source "SharedPreferencesUtil.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetSharedPreferencesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFileName:Ljava/lang/String;

.field private final mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil$GetSharedPreferencesTask;->mContext:Landroid/content/Context;

    .line 257
    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil$GetSharedPreferencesTask;->mFileName:Ljava/lang/String;

    .line 258
    iput p3, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil$GetSharedPreferencesTask;->mMode:I

    .line 259
    return-void
.end method


# virtual methods
.method public call()Landroid/content/SharedPreferences;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil$GetSharedPreferencesTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil$GetSharedPreferencesTask;->mFileName:Ljava/lang/String;

    iget v3, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil$GetSharedPreferencesTask;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 264
    .local v0, "sharePrefs":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil$GetSharedPreferencesTask;->call()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
