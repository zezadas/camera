.class Lcom/sonyericsson/android/camera/controller/Shooting$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Shooting.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/AutoFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/Shooting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoFocusCallback"
.end annotation


# static fields
.field public static final AF_FAILED:I = 0x1

.field public static final AF_SUCCESS:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/Shooting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/Shooting$1;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/Shooting$AutoFocusCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 48
    const/4 v0, 0x1

    .line 49
    .local v0, "resultCode":I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isLogForOperatorsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoFocus finished with resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->dForOperators(Ljava/lang/String;)I

    .line 55
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_AF_DONE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v1, v0, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 56
    return-void
.end method
