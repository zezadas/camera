.class public Lcom/sonyericsson/android/camera/configuration/ConversationReader;
.super Ljava/lang/Object;
.source "ConversationReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/ConversationReader$MmsVideoTable;,
        Lcom/sonyericsson/android/camera/configuration/ConversationReader$MmsTable;,
        Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;
    }
.end annotation


# static fields
.field private static final INVALID_INT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ConversationReader"


# instance fields
.field private mMmsOptions:Lcom/sonyericsson/android/camera/configuration/MmsOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method


# virtual methods
.method public getMmsOptions()Lcom/sonyericsson/android/camera/configuration/MmsOptions;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ConversationReader;->mMmsOptions:Lcom/sonyericsson/android/camera/configuration/MmsOptions;

    return-object v0
.end method

.method public readConversationProvider(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/ConversationReader$MmsTable;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sonyericsson/android/camera/configuration/ConversationReader$MmsTable;-><init>(Landroid/content/ContentResolver;)V

    .line 36
    .local v1, "mmsTable":Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;
    new-instance v2, Lcom/sonyericsson/android/camera/configuration/ConversationReader$MmsVideoTable;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/configuration/ConversationReader$MmsVideoTable;-><init>(Landroid/content/ContentResolver;)V

    .line 40
    .local v2, "mmsVideoTable":Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;-><init>()V

    .line 41
    .local v0, "builder":Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;->read(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)V

    .line 42
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;->read(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)V

    .line 43
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->build()Lcom/sonyericsson/android/camera/configuration/MmsOptions;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/configuration/ConversationReader;->mMmsOptions:Lcom/sonyericsson/android/camera/configuration/MmsOptions;

    .line 44
    return-void
.end method
