.class public Lcom/sonymobile/coversupport/CoverModeHandler;
.super Ljava/lang/Object;
.source "CoverModeHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;
    }
.end annotation


# static fields
.field private static final APP_PADDING:I = 0xc

.field public static final BACKGROUND_BLACK:I = 0x0

.field public static final BACKGROUND_TRANSPARENT:I = 0x1

.field private static final PADDING_BOTTOM:I = 0x3

.field private static final PADDING_LEFT:I = 0x0

.field private static final PADDING_RIGHT:I = 0x2

.field private static final PADDING_TOP:I = 0x1


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCoverModeReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentOrientation:I

.field private final mDecorView:Landroid/view/ViewGroup;

.field private mDisplay:Landroid/view/Display;

.field private mDoAdjustPadding:Z

.field private mInitialUiOptions:I

.field private mIsCoverMode:Z

.field private final mOnCoverModeChangedListener:Lcom/sonymobile/coversupport/OnCoverModeChangedListener;

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mPaddings:[I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonymobile/coversupport/OnCoverModeChangedListener;Z)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/sonymobile/coversupport/OnCoverModeChangedListener;
    .param p3, "doAdjustPadding"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v3, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mIsCoverMode:Z

    .line 51
    iput-boolean v3, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDoAdjustPadding:Z

    .line 52
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    .line 53
    iput v3, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mInitialUiOptions:I

    .line 80
    new-instance v1, Lcom/sonymobile/coversupport/CoverModeHandler$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/coversupport/CoverModeHandler$1;-><init>(Lcom/sonymobile/coversupport/CoverModeHandler;)V

    iput-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mCoverModeReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    iput-object p1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mActivity:Landroid/app/Activity;

    .line 151
    iput-object p2, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mOnCoverModeChangedListener:Lcom/sonymobile/coversupport/OnCoverModeChangedListener;

    .line 152
    iput-boolean p3, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDoAdjustPadding:Z

    .line 154
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDecorView:Landroid/view/ViewGroup;

    .line 155
    iget-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDecorView:Landroid/view/ViewGroup;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 156
    iget-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mInitialUiOptions:I

    .line 158
    new-instance v1, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    invoke-direct {v1, v4}, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;-><init>(Lcom/sonymobile/coversupport/CoverModeHandler$1;)V

    iput-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    .line 159
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 160
    iget-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 161
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDisplay:Landroid/view/Display;

    .line 163
    iget-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mCurrentOrientation:I

    .line 166
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sonymobile.covermode.intent.action.ACTION_COVER_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0, v0, v3}, Lcom/sonymobile/coversupport/CoverModeHandler;->setCoverMode(Landroid/content/Intent;Z)V

    .line 171
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/coversupport/CoverModeHandler;Landroid/content/Intent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/coversupport/CoverModeHandler;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/coversupport/CoverModeHandler;->setCoverMode(Landroid/content/Intent;Z)V

    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 5

    .prologue
    .line 303
    iget-object v2, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 304
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 305
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 306
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 308
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTalkBackEnabled()Z
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mActivity:Landroid/app/Activity;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 293
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCoverMode(Landroid/content/Intent;Z)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "notify"    # Z

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 88
    const-string v5, "com.sonymobile.covermode.intent.extra.COVER_MODE_ACTIVE"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 93
    .local v1, "coverMode":Z
    const-string v5, "com.sonymobile.covermode.intent.extra.COVER_WINDOW_RIGHT"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 94
    .local v4, "rightEdge":I
    const-string v5, "com.sonymobile.covermode.intent.extra.COVER_WINDOW_BOTTOM"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 96
    .local v0, "bottomEdge":I
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    const-string v6, "com.sonymobile.covermode.intent.extra.COVER_WINDOW_LEFT"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v8

    .line 97
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    const-string v6, "com.sonymobile.covermode.intent.extra.COVER_WINDOW_TOP"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v9

    .line 99
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 100
    .local v3, "displaySize":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 101
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 102
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    const/high16 v6, 0x41400000    # 12.0f

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->appPadding:I

    .line 105
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    aget v6, v5, v9

    iget-object v7, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v7, v7, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->appPadding:I

    sub-int/2addr v6, v7

    aput v6, v5, v9

    .line 106
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    aget v6, v5, v8

    iget-object v7, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v7, v7, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->appPadding:I

    sub-int/2addr v6, v7

    aput v6, v5, v8

    .line 108
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 121
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget-object v6, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    aget v6, v6, v8

    sub-int v6, v4, v6

    iput v6, v5, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->width:I

    .line 122
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget-object v6, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    aget v6, v6, v9

    sub-int v6, v0, v6

    iput v6, v5, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->height:I

    .line 124
    iget-boolean v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mIsCoverMode:Z

    if-eq v5, v1, :cond_1

    .line 125
    iput-boolean v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mIsCoverMode:Z

    .line 127
    iget-boolean v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDoAdjustPadding:Z

    if-eqz v5, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/sonymobile/coversupport/CoverModeHandler;->updateCoverModePadding()V

    .line 131
    :cond_0
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mOnCoverModeChangedListener:Lcom/sonymobile/coversupport/OnCoverModeChangedListener;

    if-eqz v5, :cond_1

    .line 132
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mOnCoverModeChangedListener:Lcom/sonymobile/coversupport/OnCoverModeChangedListener;

    iget-boolean v6, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mIsCoverMode:Z

    invoke-interface {v5, v6}, Lcom/sonymobile/coversupport/OnCoverModeChangedListener;->onCoverModeChanged(Z)V

    .line 135
    :cond_1
    return-void

    .line 111
    :pswitch_0
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    iget-object v7, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v7, v7, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->appPadding:I

    sub-int/2addr v6, v7

    aput v6, v5, v11

    .line 112
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    iget v6, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v4

    iget-object v7, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v7, v7, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->appPadding:I

    sub-int/2addr v6, v7

    aput v6, v5, v10

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    iget v6, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v0

    iget-object v7, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v7, v7, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->appPadding:I

    sub-int/2addr v6, v7

    aput v6, v5, v11

    .line 117
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v4

    iget-object v7, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v7, v7, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->appPadding:I

    sub-int/2addr v6, v7

    aput v6, v5, v10

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final getWindowInfo()Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    return-object v0
.end method

.method public isCoverModeActive()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mIsCoverMode:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 175
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 179
    iget v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mCurrentOrientation:I

    iget-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mCurrentOrientation:I

    .line 181
    invoke-virtual {p0}, Lcom/sonymobile/coversupport/CoverModeHandler;->updateCoverModePadding()V

    .line 183
    :cond_0
    return-void
.end method

.method public setBackground(I)V
    .locals 2
    .param p1, "background"    # I

    .prologue
    .line 192
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDecorView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDecorView:Landroid/view/ViewGroup;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mOrientationSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 206
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mCoverModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sonymobile.covermode.intent.action.ACTION_COVER_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 215
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mCoverModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    return-void
.end method

.method public updateCoverModePadding()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 233
    iget-boolean v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mIsCoverMode:Z

    if-eqz v5, :cond_1

    .line 234
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDecorView:Landroid/view/ViewGroup;

    const/16 v6, 0x1e07

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 242
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mActivity:Landroid/app/Activity;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 244
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 245
    .local v3, "rotation":I
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget-object v6, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    add-int/lit8 v7, v3, 0x0

    rem-int/lit8 v7, v7, 0x4

    aget v6, v6, v7

    iput v6, v5, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->paddingLeft:I

    .line 246
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget-object v6, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    add-int/lit8 v7, v3, 0x1

    rem-int/lit8 v7, v7, 0x4

    aget v6, v6, v7

    iput v6, v5, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->paddingTop:I

    .line 247
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget-object v6, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    add-int/lit8 v7, v3, 0x2

    rem-int/lit8 v7, v7, 0x4

    aget v6, v6, v7

    iput v6, v5, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->paddingRight:I

    .line 248
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget-object v6, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mPaddings:[I

    add-int/lit8 v7, v3, 0x3

    rem-int/lit8 v7, v7, 0x4

    aget v6, v6, v7

    iput v6, v5, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->paddingBottom:I

    .line 250
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v2, v5, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->paddingRight:I

    .line 251
    .local v2, "paddingRightAdjusted":I
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v1, v5, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->paddingBottom:I

    .line 253
    .local v1, "paddingBottomAdjusted":I
    invoke-direct {p0}, Lcom/sonymobile/coversupport/CoverModeHandler;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/sonymobile/coversupport/CoverModeHandler;->getNavigationBarHeight()I

    move-result v0

    .line 255
    .local v0, "navigationBarHeight":I
    packed-switch v3, :pswitch_data_0

    .line 267
    .end local v0    # "navigationBarHeight":I
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDecorView:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v6, v6, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->paddingLeft:I

    iget-object v7, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v7, v7, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->paddingTop:I

    invoke-virtual {v5, v6, v7, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 273
    .end local v1    # "paddingBottomAdjusted":I
    .end local v2    # "paddingRightAdjusted":I
    .end local v3    # "rotation":I
    .end local v4    # "wm":Landroid/view/WindowManager;
    :goto_1
    return-void

    .line 258
    .restart local v0    # "navigationBarHeight":I
    .restart local v1    # "paddingBottomAdjusted":I
    .restart local v2    # "paddingRightAdjusted":I
    .restart local v3    # "rotation":I
    .restart local v4    # "wm":Landroid/view/WindowManager;
    :pswitch_0
    sub-int/2addr v1, v0

    .line 259
    goto :goto_0

    .line 262
    :pswitch_1
    sub-int/2addr v2, v0

    goto :goto_0

    .line 270
    .end local v0    # "navigationBarHeight":I
    .end local v1    # "paddingBottomAdjusted":I
    .end local v2    # "paddingRightAdjusted":I
    .end local v3    # "rotation":I
    .end local v4    # "wm":Landroid/view/WindowManager;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDecorView:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mInitialUiOptions:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 271
    iget-object v5, p0, Lcom/sonymobile/coversupport/CoverModeHandler;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
