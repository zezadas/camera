.class Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;
.super Ljava/lang/Object;
.source "SettingTabs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field final mFrame:Landroid/widget/FrameLayout;

.field final mIcon:Landroid/widget/ImageView;

.field mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;I)V
    .locals 2
    .param p2, "layoutId"    # I

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mIcon:Landroid/widget/ImageView;

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->clear()V

    .line 156
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    # getter for: Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->access$100(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    # getter for: Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->access$100(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;->onTabSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    goto :goto_0
.end method

.method public set(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V
    .locals 3
    .param p1, "tab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    # getter for: Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->descriptionId:I
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->access$000(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->getIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    return-void
.end method
