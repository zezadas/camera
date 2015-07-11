.class public Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;
.super Landroid/widget/LinearLayout;
.source "SettingTabs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;,
        Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;,
        Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;

.field private mTabLeft:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

.field private mTabMiddle:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

.field private mTabRight:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;

    return-object v0
.end method

.method private clearSelected()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 93
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabLeft:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabMiddle:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabRight:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    .line 94
    .local v0, "i":Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;
    iget-object v2, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setSelected(Z)V

    goto :goto_0

    .line 96
    .end local v0    # "i":Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;
    :cond_0
    return-void
.end method


# virtual methods
.method public getSelected()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .locals 5

    .prologue
    .line 76
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabLeft:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabMiddle:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabRight:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    .line 77
    .local v0, "i":Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;
    iget-object v2, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .line 81
    .end local v0    # "i":Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 67
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->tab_left:I

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabLeft:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    .line 68
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->tab_middle:I

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabMiddle:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    .line 69
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->tab_right:I

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabRight:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;

    .line 71
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setVisibility(I)V

    .line 72
    return-void
.end method

.method public setOnSelectedListener(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;

    .line 100
    return-void
.end method

.method public setSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V
    .locals 7
    .param p1, "tab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 86
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabLeft:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    aput-object v5, v2, v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabMiddle:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    aput-object v5, v2, v3

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabRight:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    aput-object v6, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    .line 87
    .local v0, "i":Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;
    iget-object v5, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    if-ne v2, p1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    .line 89
    .end local v0    # "i":Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;
    :cond_1
    return-void
.end method

.method public varargs setTabs([Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V
    .locals 4
    .param p1, "tabs"    # [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "this argument is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabLeft:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->clear()V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabMiddle:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->clear()V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabRight:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->clear()V

    .line 112
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setVisibility(I)V

    .line 113
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->clearSelected()V

    .line 143
    :goto_0
    return-void

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabLeft:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->clear()V

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabMiddle:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->clear()V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabRight:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->clear()V

    .line 120
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setVisibility(I)V

    .line 121
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->clearSelected()V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabLeft:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->set(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabMiddle:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->clear()V

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabRight:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->set(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setVisibility(I)V

    .line 129
    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    goto :goto_0

    .line 133
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabLeft:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->set(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabMiddle:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->set(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mTabRight:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->set(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 136
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setVisibility(I)V

    .line 137
    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
