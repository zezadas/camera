.class public Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
.super Lcom/sonyericsson/cameracommon/review/ReviewScreen;
.source "AutoReviewWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;,
        Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;,
        Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;,
        Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewScreenListener;,
        Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewTimerHandler;
    }
.end annotation


# static fields
.field private static ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

.field private mCrListener:Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDuration:J

.field private mInterceptKeyListener:Landroid/view/View$OnKeyListener;

.field private mIsOpened:Z

.field protected mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

.field private mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field private final mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

.field private mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, "com.sonymobile.moviecreator.intent.action.TIMESHIFT_VIDEO_EDITOR"

    sput-object v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 62
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 68
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 62
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 68
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 62
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 68
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 80
    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method public static isEditorAvailable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    .line 148
    return-void
.end method

.method public static launchEditor(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 95
    sget v4, Lcom/sonyericsson/cameracommon/R$anim;->edit_activity_fade_in:I

    sget v5, Lcom/sonyericsson/cameracommon/R$anim;->edit_activity_fade_out:I

    invoke-static {p0, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 100
    .local v2, "options":Landroid/app/ActivityOptions;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 107
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 111
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static launchEditorHighFrameRate(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 119
    sget v4, Lcom/sonyericsson/cameracommon/R$anim;->edit_activity_fade_in:I

    sget v5, Lcom/sonyericsson/cameracommon/R$anim;->edit_activity_fade_out:I

    invoke-static {p0, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 124
    .local v2, "options":Landroid/app/ActivityOptions;
    new-instance v0, Landroid/content/Intent;

    sget-object v4, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 131
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 135
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static launchPlayer(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchPlayer(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private transferKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mInterceptKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mInterceptKeyListener:Landroid/view/View$OnKeyListener;

    invoke-interface {v1, p0, p1, p2}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 346
    :cond_0
    return v0
.end method


# virtual methods
.method backToViewFinder()V
    .locals 0

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->hide()V

    .line 506
    return-void
.end method

.method getContentResolverUtilListener()Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mCrListener:Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    return-object v0
.end method

.method getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->cancelDialog()V

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->release()V

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    .line 295
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->clearFocus()V

    .line 296
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->hideScreen()V

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    if-eqz v0, :cond_1

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;->onReviewWindowClose()V

    .line 303
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mUri:Landroid/net/Uri;

    .line 304
    return-void
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 160
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->onAttachedToWindow()V

    .line 164
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setBackgroundColor(I)V

    .line 167
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mPictureImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewScreenListener;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewScreenListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mButtonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 170
    .local v0, "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setReviewScreen(Lcom/sonyericsson/cameracommon/review/ReviewScreen;)V

    .line 171
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setOnSelectedListener(Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;)V

    goto :goto_0

    .line 173
    .end local v0    # "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mButtonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 181
    .local v0, "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setReviewScreen(Lcom/sonyericsson/cameracommon/review/ReviewScreen;)V

    .line 182
    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setOnSelectedListener(Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;)V

    goto :goto_0

    .line 185
    .end local v0    # "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    :cond_0
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    .line 186
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mCrListener:Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    .line 188
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->onDetachedFromWindow()V

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    .line 191
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->transferKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 355
    .local v0, "intercepted":Z
    if-eqz v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v2

    .line 359
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v1

    .line 362
    .local v1, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    sget-object v4, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 385
    goto :goto_0

    .line 370
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->backToViewFinder()V

    goto :goto_0

    :pswitch_1
    move v2, v3

    .line 376
    goto :goto_0

    .line 381
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 395
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->transferKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 397
    .local v0, "intercepted":Z
    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return v1

    .line 401
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 409
    const/4 v1, 0x0

    goto :goto_0

    .line 405
    :sswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->backToViewFinder()V

    goto :goto_0

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public open(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)Z
    .locals 15
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "pictureRect"    # Landroid/graphics/Rect;
    .param p5, "reviewOrientation"    # I
    .param p6, "pictureOrientation"    # I
    .param p7, "isFront"    # Z
    .param p8, "listener"    # Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;
    .param p9, "crListener"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    .prologue
    .line 202
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 205
    const-string v2, "video/mp4"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "video/3gpp"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    :cond_0
    const-wide/16 v12, -0x1

    .line 212
    .local v12, "duration":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-nez v2, :cond_2

    .line 214
    const/4 v2, 0x0

    .line 248
    :goto_1
    return v2

    .line 209
    .end local v12    # "duration":J
    :cond_1
    iget-wide v12, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDuration:J

    .restart local v12    # "duration":J
    goto :goto_0

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mAutoReviewRight:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 219
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mAutoReviewRight:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :cond_3
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    .line 225
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mCrListener:Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    .line 227
    move-object/from16 v4, p2

    .line 228
    .local v4, "outputUri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 229
    .local v14, "path":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 233
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->STANDARD_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 238
    :cond_4
    const/4 v5, 0x0

    const-string v6, ""

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setupScreen(Landroid/app/Activity;Landroid/net/Uri;[BLjava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;IIZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 240
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->show()V

    .line 241
    invoke-virtual {p0, v12, v13}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->startTimer(J)V

    .line 242
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    if-eqz v2, :cond_5

    .line 243
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 244
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;->onReviewWindowOpen()V

    .line 246
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 248
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public open(Lcom/sonyericsson/cameracommon/activity/BaseActivity;[BLjava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)Z
    .locals 14
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "pictureData"    # [B
    .param p3, "videoPath"    # Ljava/lang/String;
    .param p4, "mime"    # Ljava/lang/String;
    .param p5, "pictureRect"    # Landroid/graphics/Rect;
    .param p6, "reviewOrientation"    # I
    .param p7, "pictureOrientation"    # I
    .param p8, "isFront"    # Z
    .param p9, "listener"    # Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;
    .param p10, "crListener"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 259
    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->UNLIMITED:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->getDuration()I

    move-result v2

    int-to-long v12, v2

    .line 262
    .local v12, "duration":J
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mAutoReviewRight:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mAutoReviewRight:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :cond_0
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    .line 267
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mCrListener:Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    .line 269
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setupScreen(Landroid/app/Activity;Landroid/net/Uri;[BLjava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;IIZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->show()V

    .line 272
    invoke-virtual {p0, v12, v13}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->startTimer(J)V

    .line 273
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    if-eqz v2, :cond_1

    .line 274
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 275
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;->onReviewWindowOpen()V

    .line 277
    :cond_1
    const/4 v2, 0x1

    .line 279
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDuration:J

    .line 197
    return-void
.end method

.method public setInterceptKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .param p1, "interceptKeyListener"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mInterceptKeyListener:Landroid/view/View$OnKeyListener;

    .line 330
    return-void
.end method

.method public setup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V
    .locals 1
    .param p1, "messagePopup"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p2, "settings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .prologue
    .line 83
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-direct {v0, p2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;)V

    .line 84
    return-void
.end method

.method public setup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;)V
    .locals 0
    .param p1, "messagePopup"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p2, "translator"    # Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 88
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 89
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->showScreen()V

    .line 284
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->requestFocus()Z

    .line 286
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setViewerLaunched()V

    .line 287
    return-void
.end method

.method public startTimer(J)V
    .locals 11
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    .line 310
    cmp-long v0, p1, v8

    if-lez v0, :cond_0

    .line 311
    new-instance v1, Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    new-instance v6, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewTimerHandler;

    invoke-direct {v6, p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewTimerHandler;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)V

    sget-object v7, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->TAG:Ljava/lang/String;

    move-wide v2, p1

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;-><init>(JJLandroid/os/Handler;Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->start()V

    .line 314
    :cond_0
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->cancel()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .line 323
    :cond_0
    return-void
.end method
