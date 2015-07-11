.class public Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
.super Ljava/lang/Object;
.source "SettingDialogStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;
    }
.end annotation


# static fields
.field private static final DUMMY_ON_INTERCEPT_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

.field private final mDialogBackground:Landroid/view/ViewGroup;

.field private final mDialogTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMenuDialogOpened:Z

.field private mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

.field private mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

.field private mMenuDialogRowCount:I

.field private mOnInterceptKeyListener:Landroid/view/View$OnKeyListener;

.field private mOrientation:I

.field private mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

.field private mSecondLayerDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

.field private mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

.field private final mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

.field private mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

.field private mShortcutDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

.field private mShortcutDialotTitleId:I

.field private final mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

.field private mTargetAreaList:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->TAG:Ljava/lang/String;

    .line 832
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$1;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->DUMMY_ON_INTERCEPT_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingDialogListener"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;
    .param p3, "shortcutContainer"    # Landroid/view/ViewGroup;
    .param p4, "dialogContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ListView;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ListView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingDialogListener"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;
    .param p3, "shortcutContainer"    # Landroid/view/ViewGroup;
    .param p4, "dialogContainer"    # Landroid/view/ViewGroup;
    .param p5, "settingShortcutItems"    # Landroid/widget/ListView;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    .line 76
    iput v5, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogRowCount:I

    .line 101
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->setOnInterceptKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 105
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    .line 106
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;-><init>(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 111
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-direct {v0, p1, p3, p5}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    .line 114
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 115
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    .line 116
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .line 117
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 123
    iput-boolean v5, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    .line 125
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getCurrentDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)Landroid/view/View$OnKeyListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOnInterceptKeyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    return-object v0
.end method

.method private closeControlDialog(Z)Z
    .locals 3
    .param p1, "isAnimation"    # Z

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    if-eqz p1, :cond_0

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setCloseDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->close()V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    .line 577
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->removeLastRectList()V

    .line 579
    const/4 v0, 0x1

    .line 581
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeMenuDialog(Z)Z
    .locals 4
    .param p1, "isAnimation"    # Z

    .prologue
    const/4 v0, 0x0

    .line 527
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    if-eqz p1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setCloseDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->close()V

    .line 536
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .line 537
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    .line 539
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->removeLastRectList()V

    .line 541
    const/4 v0, 0x1

    .line 543
    :cond_1
    return v0
.end method

.method private closeSecondLayerDialog(Z)Z
    .locals 3
    .param p1, "isAnimation"    # Z

    .prologue
    .line 585
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    if-eqz p1, :cond_0

    .line 590
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setCloseDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->close()V

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 596
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->removeLastRectList()V

    .line 598
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 599
    const/4 v0, 0x1

    .line 601
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeShortcutDialog(Z)Z
    .locals 3
    .param p1, "isAnimation"    # Z

    .prologue
    .line 547
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    if-eqz p1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setCloseDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->close()V

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 558
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->removeLastRectList()V

    .line 560
    const/4 v0, 0x1

    .line 562
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private generateMenuDialogLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 661
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 662
    .local v0, "container":Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-object v2

    .line 666
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 667
    .local v1, "shortcutIcon":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    if-eqz v3, :cond_0

    .line 670
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getSelectedItemIconVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 671
    new-instance v2, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 673
    :cond_2
    new-instance v3, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v3, v0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object v2, v3

    goto :goto_0
.end method

.method private generateSecondLayerDialogLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 637
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 638
    .local v0, "container":Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-object v2

    .line 642
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 643
    .local v1, "menuItem":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-eqz v3, :cond_3

    .line 644
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getSelectedItemRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 657
    :cond_2
    new-instance v2, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 648
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v3, :cond_0

    .line 649
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getSelectedItemRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method private generateShortcutLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 620
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 621
    .local v0, "container":Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-object v2

    .line 625
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 626
    .local v1, "shortcutIcon":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    if-eqz v3, :cond_0

    .line 629
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getSelectedItemIconVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 630
    new-instance v2, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 632
    :cond_2
    new-instance v3, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v3, v0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object v2, v3

    goto :goto_0
.end method

.method private getContainerRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 678
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 679
    .local v0, "container":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 680
    const/4 v0, 0x0

    .line 692
    .end local v0    # "container":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 683
    .restart local v0    # "container":Landroid/graphics/Rect;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 684
    .local v3, "res":Landroid/content/res/Resources;
    sget v4, Lcom/sonyericsson/cameracommon/R$dimen;->left_container_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 685
    .local v1, "marginLeft":I
    sget v4, Lcom/sonyericsson/cameracommon/R$dimen;->right_container_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 686
    .local v2, "marginRight":I
    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private getCurrentDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    .locals 4

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getDialogList()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 499
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    if-eqz v1, :cond_0

    .line 503
    .end local v1    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :goto_1
    return-object v1

    .line 498
    .restart local v1    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    .end local v1    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getDialogList()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    .locals 3

    .prologue
    .line 611
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private removeLastRectList()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 814
    :cond_0
    return-void
.end method

.method private resetEnabledOfDialogs()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 509
    const/4 v6, 0x4

    new-array v3, v6, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    aput-object v6, v3, v8

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    aput-object v6, v3, v7

    const/4 v6, 0x2

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    aput-object v9, v3, v6

    const/4 v6, 0x3

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    aput-object v9, v3, v6

    .line 516
    .local v3, "dialogs":[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getCurrentDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v1

    .line 518
    .local v1, "current":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    move-object v0, v3

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 519
    .local v2, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    if-eqz v2, :cond_0

    .line 520
    if-ne v2, v1, :cond_1

    move v6, v7

    :goto_1
    invoke-interface {v2, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;->setEnabled(Z)V

    .line 518
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v6, v8

    .line 520
    goto :goto_1

    .line 523
    .end local v2    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_2
    return-void
.end method


# virtual methods
.method public clearShortcutSelected()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->clearSelected()V

    .line 151
    return-void
.end method

.method public closeCurrentDialog()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 421
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    move-result v0

    .line 423
    :cond_0
    if-nez v0, :cond_1

    .line 424
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    move-result v0

    .line 426
    :cond_1
    if-nez v0, :cond_2

    .line 427
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    move-result v0

    .line 429
    :cond_2
    if-nez v0, :cond_3

    .line 430
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    move-result v0

    .line 432
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 434
    if-eqz v0, :cond_4

    .line 435
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v1

    if-nez v1, :cond_5

    .line 437
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->show()V

    .line 438
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->clearSelected()V

    .line 439
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearFocus()V

    .line 440
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v1, p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onCloseSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Z)V

    .line 453
    :cond_4
    :goto_0
    return v0

    .line 445
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onCloseSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Z)V

    goto :goto_0
.end method

.method public closeDialogs()V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs(Z)V

    .line 458
    return-void
.end method

.method public closeDialogs(Z)V
    .locals 3
    .param p1, "withAnimation"    # Z

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "handled":Z
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 465
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 466
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 467
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 468
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 471
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->show()V

    .line 475
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearFocus()V

    .line 476
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onCloseSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Z)V

    .line 481
    :cond_0
    return-void
.end method

.method public getBlurTargetAreaList()Ljava/util/Stack;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 789
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 790
    .local v3, "shortcutIconRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getSelectedItemIconVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 791
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getDialogList()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v1

    .line 797
    .local v1, "dialogs":[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    array-length v4, v1

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 798
    aget-object v0, v1, v2

    .line 799
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    if-eqz v0, :cond_1

    .line 800
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;->getLayoutCoordinator()Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    move-result-object v4

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-interface {v4, v5}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;->coordinatePosition(I)V

    .line 801
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;->getLayoutCoordinator()Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;->getDialogRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 804
    .end local v0    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    return-object v4
.end method

.method public getMenuDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    return-object v0
.end method

.method public getSecondLayerDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    return-object v0
.end method

.method public hideShortcutTray()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->hide()V

    .line 147
    return-void
.end method

.method public isControlDialogOpened()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialogOpened()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMenuDialogOpened()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 174
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 175
    .local v0, "i":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const/4 v2, 0x1

    .line 179
    .end local v0    # "i":Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)Z
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    if-eqz v4, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v2

    .line 287
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    .line 294
    .local v0, "alreadyOpened":Z
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    .line 295
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    .line 296
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    .line 297
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 299
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->generateShortcutLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    move-result-object v1

    .line 300
    .local v1, "coordinateData":Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    if-eqz v1, :cond_0

    .line 303
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->createControl(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    .line 304
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 307
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setOpenDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 309
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->open(Landroid/view/ViewGroup;)V

    .line 310
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->setSensorOrientation(I)V

    .line 311
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 315
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 317
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v2, p0, v0, v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onOpenSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;ZZ)V

    move v2, v3

    .line 321
    goto :goto_0
.end method

.method public openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Z)Z
    .locals 6
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "requestUpdate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 195
    new-array v2, v5, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;Ljava/lang/Object;I)Z
    .locals 6
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tabs"    # [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .param p3, "onSelectedTabListener"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;
    .param p4, "tag"    # Ljava/lang/Object;
    .param p5, "menuDialogRowCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    iput p5, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogRowCount:I

    .line 213
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-eqz v4, :cond_0

    .line 266
    :goto_0
    return v2

    .line 218
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    .line 224
    .local v0, "alreadyOpened":Z
    const/4 v1, 0x0

    .line 226
    .local v1, "isAnimation":Z
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    if-nez v4, :cond_2

    .line 227
    const/4 v1, 0x1

    .line 231
    :cond_2
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    .line 232
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    .line 233
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    .line 234
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 236
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->generateMenuDialogLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .line 237
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    if-eqz v2, :cond_4

    .line 238
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    array-length v5, p2

    invoke-static {v2, v4, p5, v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->createMenu(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;II)Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .line 243
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setTabs([Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 244
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 245
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v2, p3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setOnSelectedTabListener(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;)V

    .line 248
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 249
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setOpenDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 252
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->open(Landroid/view/ViewGroup;)V

    .line 253
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setSensorOrientation(I)V

    .line 254
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v2, v4, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    .line 260
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 261
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 263
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v2, p0, v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onOpenSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;ZZ)V

    move v2, v3

    .line 266
    goto :goto_0
.end method

.method public openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)Z
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 383
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    .line 386
    .local v0, "alreadyOpened":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 388
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->generateSecondLayerDialogLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .line 389
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogRowCount:I

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->numberOfTabs()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->createSecondLayerDialog(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;II)Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 395
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 398
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setOpenDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 400
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->open(Landroid/view/ViewGroup;)V

    .line 401
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setSensorOrientation(I)V

    .line 402
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 407
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 409
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v1, p0, v0, v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onOpenSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;ZZ)V

    .line 412
    return v5
.end method

.method public openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;I)Z
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "shortcutDialogTitleId"    # I

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;)Z
    .locals 5
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "shortcutDialogTitleId"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 336
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialotTitleId:I

    if-ne v3, p2, :cond_0

    .line 373
    :goto_0
    return v1

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    .line 343
    .local v0, "alreadyOpened":Z
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    .line 344
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    .line 345
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    .line 346
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 348
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->generateShortcutLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .line 349
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-static {v1, v3, p2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->createShortcutDialog(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;I)Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 354
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 357
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setOpenDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 359
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->open(Landroid/view/ViewGroup;)V

    .line 360
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setSensorOrientation(I)V

    .line 361
    iput p2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialotTitleId:I

    .line 362
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 367
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 369
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v1, p0, v0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onOpenSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;ZZ)V

    move v1, v2

    .line 373
    goto :goto_0
.end method

.method public setOnInterceptKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    sget-object v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->DUMMY_ON_INTERCEPT_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOnInterceptKeyListener:Landroid/view/View$OnKeyListener;

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOnInterceptKeyListener:Landroid/view/View$OnKeyListener;

    goto :goto_0
.end method

.method public setUiOrientation(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    .line 484
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    .line 485
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    if-eqz v4, :cond_0

    .line 486
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSensorOrientation(I)V

    .line 488
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getDialogList()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 489
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    if-eqz v1, :cond_1

    .line 490
    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-interface {v1, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;->setSensorOrientation(I)V

    .line 488
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_2
    return-void
.end method

.method public setupShortcutTray(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSensorOrientation(I)V

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->show()V

    .line 134
    return-void
.end method

.method public showShortcutTray()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->show()V

    .line 143
    return-void
.end method

.method public updateMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .locals 4
    .param p1, "commonKeyAdapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 817
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v0

    .line 818
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->clear()V

    .line 820
    const/4 v2, 0x0

    .line 823
    .local v2, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 824
    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    check-cast v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 825
    .restart local v2    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    .line 823
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 829
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    .line 830
    return-void
.end method

.method public updateShortcutSelected(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "itemData":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSelected(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public updateShortcutTray(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->updateAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSensorOrientation(I)V

    .line 139
    return-void
.end method
