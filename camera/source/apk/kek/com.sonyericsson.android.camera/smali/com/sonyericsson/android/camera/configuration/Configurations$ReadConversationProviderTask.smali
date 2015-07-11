.class Lcom/sonyericsson/android/camera/configuration/Configurations$ReadConversationProviderTask;
.super Ljava/lang/Object;
.source "Configurations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/Configurations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadConversationProviderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/ConversationReader;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/Configurations$ReadConversationProviderTask;->mContext:Landroid/content/Context;

    .line 129
    return-void
.end method


# virtual methods
.method public call()Lcom/sonyericsson/android/camera/configuration/ConversationReader;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ConversationReader;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/ConversationReader;-><init>()V

    .line 138
    .local v0, "reader":Lcom/sonyericsson/android/camera/configuration/ConversationReader;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/Configurations$ReadConversationProviderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ConversationReader;->readConversationProvider(Landroid/content/Context;)V

    .line 143
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
    .line 123
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations$ReadConversationProviderTask;->call()Lcom/sonyericsson/android/camera/configuration/ConversationReader;

    move-result-object v0

    return-object v0
.end method
