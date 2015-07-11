.class public Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util$IntentionalThreadFactory;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentionalThreadFactory"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPriority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util$IntentionalThreadFactory;->mName:Ljava/lang/String;

    .line 93
    iput p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util$IntentionalThreadFactory;->mPriority:I

    .line 94
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 98
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util$IntentionalThreadFactory;->mName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 99
    .local v0, "thread":Ljava/lang/Thread;
    iget v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util$IntentionalThreadFactory;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 100
    return-object v0
.end method
