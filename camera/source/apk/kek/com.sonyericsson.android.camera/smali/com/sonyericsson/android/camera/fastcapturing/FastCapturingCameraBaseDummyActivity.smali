.class public Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;
.super Landroid/app/Activity;
.source "FastCapturingCameraBaseDummyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$1;,
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$FinishAllTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$DestroyRequestReceiver;
    }
.end annotation


# static fields
.field private static final FINISH_DELAY_TIME:I = 0x64

.field public static final INTENT_ACTION_FAST_CAPTURING_CAMERA_FINISHED:Ljava/lang/String; = "com.sonyericsson.android.camera.action.FAST_CAPTURING_CAMERA_FINISHED"

.field private static TAG:Ljava/lang/String;

.field private static mAvailableActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final mDestroyIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mDestroyRequestReceiver:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$DestroyRequestReceiver;

.field mFinishAllTask:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$FinishAllTask;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "FastCapturingCameraBaseDummyActivity"

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mAvailableActivities:Ljava/util/List;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mDestroyIntentFilter:Landroid/content/IntentFilter;

    .line 65
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mDestroyIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sonyericsson.android.camera.action.FAST_CAPTURING_CAMERA_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mDestroyIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mDestroyIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mDestroyIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$FinishAllTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$FinishAllTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mFinishAllTask:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$FinishAllTask;

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mAvailableActivities:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public finishAll()V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mFinishAllTask:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$FinishAllTask;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$DestroyRequestReceiver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$DestroyRequestReceiver;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mDestroyRequestReceiver:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$DestroyRequestReceiver;

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mDestroyRequestReceiver:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$DestroyRequestReceiver;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mDestroyIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mAvailableActivities:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mDestroyRequestReceiver:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$DestroyRequestReceiver;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mDestroyRequestReceiver:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$DestroyRequestReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mDestroyRequestReceiver:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$DestroyRequestReceiver;

    .line 235
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mAvailableActivities:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->finish()V

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    const-string v0, "com.sonyericsson.android.camera.action.FAST_CAPTURING_CAMERA_FINISHED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->finishAll()V

    .line 95
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 208
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 155
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 167
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->staticCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraDeviceStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 171
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->finish()V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 148
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 218
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->finish()V

    .line 185
    const/4 v0, 0x0

    return v0
.end method
