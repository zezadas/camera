.class abstract Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AutoFocus"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;)V
    .locals 0

    .prologue
    .line 1685
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/device/CameraDevice$1;

    .prologue
    .line 1685
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;)V

    return-void
.end method


# virtual methods
.method public abstract startAutoFocus(Lcom/sonyericsson/android/camera/device/AutoFocusListener;ZZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract stopAutoFocus()V
.end method
