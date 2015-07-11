.class Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferAllocator;
.super Ljava/lang/Object;
.source "NativeByteBufferAllocator.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "nativebytebuffer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native allocate(I)Ljava/nio/ByteBuffer;
.end method

.method static native release(Ljava/nio/ByteBuffer;)V
.end method
