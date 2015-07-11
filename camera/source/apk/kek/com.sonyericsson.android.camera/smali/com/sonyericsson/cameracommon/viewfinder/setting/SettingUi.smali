.class public Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;
.super Ljava/lang/Object;
.source "SettingUi.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
.implements Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;
.implements Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mCommonItemResolver:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;

.field protected final mContext:Landroid/content/Context;

.field protected final mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

.field private final mInterceptSettingDialogKeyListener:Landroid/view/View$OnKeyListener;

.field private final mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

.field private mSelectedTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

.field private mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

.field private final mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogStack"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .param p3, "commonSettings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .param p4, "items"    # [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi$1;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mInterceptSettingDialogKeyListener:Landroid/view/View$OnKeyListener;

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .line 69
    new-instance v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-direct {v1, p3}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 71
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;

    invoke-direct {v0, p3, p0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;-><init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;)V

    .line 74
    .local v0, "commonSettingChanger":Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;

    new-instance v2, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

    invoke-direct {v2, p1, p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;)V

    invoke-direct {v1, p1, p3, v2, p4}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mCommonItemResolver:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;

    .line 78
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 79
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 80
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 81
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSelectedTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mInterceptSettingDialogKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->setOnInterceptKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)V
    .locals 2
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "dialogStack"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .param p3, "items"    # [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    invoke-static {p3, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->getVisibleCommonKeys([Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/activity/BaseActivity;)[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    return-object v0
.end method

.method private copy(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .locals 2
    .param p1, "to"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "from"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->clear()V

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 249
    invoke-virtual {p2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method private static getVisibleCommonKeys([Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/activity/BaseActivity;)[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 7
    .param p0, "candidates"    # [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 265
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v4, "selection":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 267
    .local v1, "i":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    sget-object v5, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 281
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :pswitch_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_0

    .line 270
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    :pswitch_1
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isSystemApp(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 276
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    .end local v1    # "i":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v5

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clearShortcutSelected()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    .line 100
    return-void
.end method

.method public clearShortcutTray(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->updateShortcutItems(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 201
    return-void
.end method

.method public closeCurrentDialog()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeCurrentDialog()Z

    .line 182
    return-void
.end method

.method public closeDialogs(Z)V
    .locals 1
    .param p1, "withAnimation"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs(Z)V

    .line 187
    return-void
.end method

.method protected findCommonSettingKeyShownBySettingDialog()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 5

    .prologue
    .line 316
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 317
    .local v2, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isOpened(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    .end local v2    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :goto_1
    return-object v2

    .line 316
    .restart local v2    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v2    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSelectedTab()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSelectedTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    return-object v0
.end method

.method public hideShortcutTray()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->hideShortcutTray()V

    .line 195
    return-void
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    return v0
.end method

.method public onSettingChanged(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 261
    return-void
.end method

.method public onTabSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSelectedTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .line 256
    return-void
.end method

.method public openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Ljava/lang/Object;I)V
    .locals 6
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tabs"    # [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .param p3, "selectedTab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .param p4, "tag"    # Ljava/lang/Object;
    .param p5, "menuDialogRowCount"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 126
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSelectedTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getMenuDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSelectedTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setSelectedTab(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 129
    :cond_0
    return-void
.end method

.method public openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0, v1, p2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "titleId"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0, v1, p2, p3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public selectShortcut(Ljava/lang/Object;)V
    .locals 1
    .param p1, "shortcut"    # Ljava/lang/Object;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->selectByData(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    .line 208
    :cond_0
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->setUiOrientation(I)V

    .line 212
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->updateShortcutTray(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 88
    return-void
.end method

.method public showShortcutTray()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->showShortcutTray()V

    .line 191
    return-void
.end method

.method protected updateMenuItems(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Z)V
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "resetScrollPosition"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->copy(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 231
    if-eqz p2, :cond_1

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetInvalidated()V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected updateSettingItems(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->copy(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    .line 244
    :cond_0
    return-void
.end method

.method protected updateShortcutItems(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getSelected()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    if-nez v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getSelected()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    .line 219
    .local v0, "selected":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->copy(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->selectByItem(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 224
    .end local v0    # "selected":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    .line 226
    :cond_0
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->copy(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    goto :goto_0
.end method
