.class public Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
.super Landroid/widget/RelativeLayout;
.source "ContentPallet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;
    }
.end annotation


# static fields
.field private static final INSERTANIMATION_DURATION:I = 0x12c

.field private static final INSERTANIMATION_FADE_END:F = 1.0f

.field private static final INSERTANIMATION_FADE_START:F = 0.0f

.field private static final INSERTANIMATION_SCALE_END:F = 1.0f

.field private static final INSERTANIMATION_SCALE_START:F = 0.7f

.field private static final TAG:Ljava/lang/String;

.field private static final intervalTime:J = 0xbb8L


# instance fields
.field private curTime:J

.field private final mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

.field private mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

.field private mIsRequestHide:Z

.field private mRequestId:I

.field private mThumbnailClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->curTime:J

    .line 78
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->curTime:J

    .line 78
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    .line 97
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->curTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnailClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    return-object v0
.end method


# virtual methods
.method public cancelRequestHide()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsRequestHide:Z

    .line 250
    return-void
.end method

.method createInsertAnimation(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 8
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const v1, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 212
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 213
    .local v7, "animation":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v5, v3, v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v6, v3, v4

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 219
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 221
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 222
    const-wide/16 v0, 0x12c

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 223
    invoke-virtual {v7, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 224
    return-object v7
.end method

.method disableClick()V
    .locals 2

    .prologue
    .line 202
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->content_thumbnail_frame:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 204
    return-void
.end method

.method enableClick()V
    .locals 2

    .prologue
    .line 197
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->content_thumbnail_frame:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 199
    return-void
.end method

.method getRequestId()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mRequestId:I

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initialize(ILcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "listener"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    .prologue
    .line 107
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mRequestId:I

    .line 108
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnailClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    .line 109
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->content_thumbnail_frame:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    const/4 v0, 0x0

    .line 119
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .line 121
    .end local v0    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->content_thumbnail_frame:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method public requestHide()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsRequestHide:Z

    .line 242
    return-void
.end method

.method set(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .locals 12
    .param p1, "content"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .prologue
    const/16 v11, 0xd

    const/4 v10, 0x4

    const/4 v9, -0x2

    .line 143
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .line 146
    sget v8, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {p0, v8}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 147
    .local v5, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    sget v8, Lcom/sonyericsson/cameracommon/R$id;->content_thumbnail:I

    invoke-virtual {p0, v8}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 152
    .local v6, "thumbnailView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 154
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->shouldShowPlayableIcon()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 167
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v4, "playabeIcon":Landroid/widget/ImageView;
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->addView(Landroid/view/View;)V

    .line 169
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 171
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getPlayIconResourceId()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    .end local v4    # "playabeIcon":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->shouldShowExtraIcon()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 178
    .local v3, "inflater":Landroid/view/LayoutInflater;
    if-eqz v3, :cond_4

    .line 179
    sget v8, Lcom/sonyericsson/cameracommon/R$layout;->content_extra_icon:I

    invoke-virtual {v3, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 180
    .local v7, "view":Landroid/view/View;
    sget v8, Lcom/sonyericsson/cameracommon/R$id;->content_extra_icon_image:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 181
    .local v2, "icon":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getExtraIconResourceId()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 188
    .end local v2    # "icon":Landroid/widget/ImageView;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    sget v8, Lcom/sonyericsson/cameracommon/R$id;->content_thumbnail_frame:I

    invoke-virtual {p0, v8}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-boolean v8, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsRequestHide:Z

    if-eqz v8, :cond_2

    .line 192
    invoke-virtual {p0, v10}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->setVisibility(I)V

    .line 194
    :cond_2
    return-void

    .line 157
    :cond_3
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 158
    .local v1, "corruptedIcon":Landroid/widget/ImageView;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->addView(Landroid/view/View;)V

    .line 159
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 160
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 161
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 162
    sget v8, Lcom/sonyericsson/cameracommon/R$drawable;->cam_photo_stack_file_corrupted_icn:I

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 183
    .end local v1    # "corruptedIcon":Landroid/widget/ImageView;
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    sget-object v8, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->TAG:Ljava/lang/String;

    const-string v9, "could not get inflater."

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
