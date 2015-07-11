.class Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;
.super Ljava/lang/Object;
.source "CommonSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoreTask"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/util/List;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p2, "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 215
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;->mOperations:Ljava/util/List;

    .line 216
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "com.sonymobile.cameracommon.provider"

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;->mOperations:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0

    .line 227
    :catch_1
    move-exception v0

    goto :goto_0
.end method
