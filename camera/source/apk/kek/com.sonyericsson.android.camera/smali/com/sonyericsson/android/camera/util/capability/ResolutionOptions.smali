.class public Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;
.super Ljava/lang/Object;
.source "ResolutionOptions.java"


# instance fields
.field private final mBurstResolution:Ljava/lang/String;

.field private final mDefaultResolution:Ljava/lang/String;

.field private final mDefaultVideoSize:Ljava/lang/String;

.field private final mHdr3DefaultResolution:Ljava/lang/String;

.field private final mHdr3ResolutionOptions:[Ljava/lang/String;

.field private final mHighQualityVideoSize:I

.field private final mMaxPictureSize:I

.field private final mResolutionOptions:[Ljava/lang/String;

.field private final mSuperiorAutoResolutionOptions:[Ljava/lang/String;

.field private final mVideoSizeOptions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mMaxPictureSize:I

    .line 62
    iput v1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mHighQualityVideoSize:I

    .line 63
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 64
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    .line 65
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mBurstResolution:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    .line 69
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mHdr3ResolutionOptions:[Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mHdr3DefaultResolution:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxPictureWidth"    # I
    .param p3, "videoSize"    # I
    .param p4, "isResolutionIndependentHdrSupported"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mMaxPictureSize:I

    .line 90
    iput p3, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mHighQualityVideoSize:I

    .line 100
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionDependence;->isDependOnAspect(Landroid/content/Context;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 106
    .local v0, "independentOfAspect":Ljava/lang/Boolean;
    iget v11, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mMaxPictureSize:I

    sparse-switch v11, :sswitch_data_0

    .line 304
    const v8, 0x7f0e0012

    .line 305
    .local v8, "resIdResolutionOptions":I
    const v7, 0x7f0e0012

    .line 306
    .local v7, "resIdHdr3ResolutionOptions":I
    const v9, 0x7f0e001d

    .line 308
    .local v9, "resIdSuperiorAutoResolutionOptions":I
    const v10, 0x7f0e0029

    .line 309
    .local v10, "resIdVideoSizeOptions":I
    const v4, 0x7f090212

    .line 310
    .local v4, "resIdDefaultResolution":I
    const v6, 0x7f090212

    .line 311
    .local v6, "resIdHdr3DefaultResolution":I
    const v5, 0x7f090229

    .line 312
    .local v5, "resIdDefaultVideoSize":I
    const v3, 0x7f09021f

    .line 316
    .local v3, "resIdBurstResolution":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mHdr3ResolutionOptions:[Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mBurstResolution:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mHdr3DefaultResolution:Ljava/lang/String;

    .line 325
    return-void

    .line 108
    .end local v3    # "resIdBurstResolution":I
    .end local v4    # "resIdDefaultResolution":I
    .end local v5    # "resIdDefaultVideoSize":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    .end local v7    # "resIdHdr3ResolutionOptions":I
    .end local v8    # "resIdResolutionOptions":I
    .end local v9    # "resIdSuperiorAutoResolutionOptions":I
    .end local v10    # "resIdVideoSizeOptions":I
    :sswitch_0
    const v8, 0x7f0e0006

    .line 109
    .restart local v8    # "resIdResolutionOptions":I
    const v9, 0x7f0e0013

    .line 111
    .restart local v9    # "resIdSuperiorAutoResolutionOptions":I
    const v7, 0x7f0e0006

    .line 112
    .restart local v7    # "resIdHdr3ResolutionOptions":I
    const v10, 0x7f0e001e

    .line 113
    .restart local v10    # "resIdVideoSizeOptions":I
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 115
    const v4, 0x7f090213

    .line 116
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f090213

    .line 124
    .restart local v6    # "resIdHdr3DefaultResolution":I
    :goto_1
    const v3, 0x7f09021b

    .line 125
    .restart local v3    # "resIdBurstResolution":I
    const v5, 0x7f090220

    .line 126
    .restart local v5    # "resIdDefaultVideoSize":I
    goto :goto_0

    .line 120
    .end local v3    # "resIdBurstResolution":I
    .end local v4    # "resIdDefaultResolution":I
    .end local v5    # "resIdDefaultVideoSize":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    :cond_0
    const v4, 0x7f090209

    .line 121
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f090209

    .restart local v6    # "resIdHdr3DefaultResolution":I
    goto :goto_1

    .line 129
    .end local v4    # "resIdDefaultResolution":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    .end local v7    # "resIdHdr3ResolutionOptions":I
    .end local v8    # "resIdResolutionOptions":I
    .end local v9    # "resIdSuperiorAutoResolutionOptions":I
    .end local v10    # "resIdVideoSizeOptions":I
    :sswitch_1
    const v8, 0x7f0e0007

    .line 130
    .restart local v8    # "resIdResolutionOptions":I
    const v9, 0x7f0e0014

    .line 132
    .restart local v9    # "resIdSuperiorAutoResolutionOptions":I
    const v7, 0x7f0e0007

    .line 133
    .restart local v7    # "resIdHdr3ResolutionOptions":I
    const v10, 0x7f0e001f

    .line 134
    .restart local v10    # "resIdVideoSizeOptions":I
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 136
    const v4, 0x7f090214

    .line 137
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f090214

    .line 145
    .restart local v6    # "resIdHdr3DefaultResolution":I
    :goto_2
    const v3, 0x7f09021c

    .line 146
    .restart local v3    # "resIdBurstResolution":I
    const v5, 0x7f090221

    .line 147
    .restart local v5    # "resIdDefaultVideoSize":I
    goto/16 :goto_0

    .line 141
    .end local v3    # "resIdBurstResolution":I
    .end local v4    # "resIdDefaultResolution":I
    .end local v5    # "resIdDefaultVideoSize":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    :cond_1
    const v4, 0x7f09020a

    .line 142
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f09020a

    .restart local v6    # "resIdHdr3DefaultResolution":I
    goto :goto_2

    .line 150
    .end local v4    # "resIdDefaultResolution":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    .end local v7    # "resIdHdr3ResolutionOptions":I
    .end local v8    # "resIdResolutionOptions":I
    .end local v9    # "resIdSuperiorAutoResolutionOptions":I
    .end local v10    # "resIdVideoSizeOptions":I
    :sswitch_2
    const v8, 0x7f0e0008

    .line 151
    .restart local v8    # "resIdResolutionOptions":I
    const v7, 0x7f0e0008

    .line 152
    .restart local v7    # "resIdHdr3ResolutionOptions":I
    const v9, 0x7f0e0015

    .line 154
    .restart local v9    # "resIdSuperiorAutoResolutionOptions":I
    const v10, 0x7f0e0020

    .line 155
    .restart local v10    # "resIdVideoSizeOptions":I
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 157
    const v4, 0x7f090215

    .line 158
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f090215

    .line 165
    .restart local v6    # "resIdHdr3DefaultResolution":I
    :goto_3
    const v3, 0x7f09021d

    .line 166
    .restart local v3    # "resIdBurstResolution":I
    const v5, 0x7f090222

    .line 167
    .restart local v5    # "resIdDefaultVideoSize":I
    goto/16 :goto_0

    .line 161
    .end local v3    # "resIdBurstResolution":I
    .end local v4    # "resIdDefaultResolution":I
    .end local v5    # "resIdDefaultVideoSize":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    :cond_2
    const v4, 0x7f09020b

    .line 162
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f09020b

    .restart local v6    # "resIdHdr3DefaultResolution":I
    goto :goto_3

    .line 170
    .end local v4    # "resIdDefaultResolution":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    .end local v7    # "resIdHdr3ResolutionOptions":I
    .end local v8    # "resIdResolutionOptions":I
    .end local v9    # "resIdSuperiorAutoResolutionOptions":I
    .end local v10    # "resIdVideoSizeOptions":I
    :sswitch_3
    const v8, 0x7f0e0009

    .line 171
    .restart local v8    # "resIdResolutionOptions":I
    const v7, 0x7f0e0009

    .line 172
    .restart local v7    # "resIdHdr3ResolutionOptions":I
    const v9, 0x7f0e0016

    .line 174
    .restart local v9    # "resIdSuperiorAutoResolutionOptions":I
    const v10, 0x7f0e0021

    .line 175
    .restart local v10    # "resIdVideoSizeOptions":I
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 177
    const v4, 0x7f090216

    .line 178
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f090216

    .line 184
    .restart local v6    # "resIdHdr3DefaultResolution":I
    :goto_4
    const v3, 0x7f09021f

    .line 185
    .restart local v3    # "resIdBurstResolution":I
    const v5, 0x7f090223

    .line 186
    .restart local v5    # "resIdDefaultVideoSize":I
    goto/16 :goto_0

    .line 181
    .end local v3    # "resIdBurstResolution":I
    .end local v4    # "resIdDefaultResolution":I
    .end local v5    # "resIdDefaultVideoSize":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    :cond_3
    const v4, 0x7f09020c

    .line 182
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f090216

    .restart local v6    # "resIdHdr3DefaultResolution":I
    goto :goto_4

    .line 189
    .end local v4    # "resIdDefaultResolution":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    .end local v7    # "resIdHdr3ResolutionOptions":I
    .end local v8    # "resIdResolutionOptions":I
    .end local v9    # "resIdSuperiorAutoResolutionOptions":I
    .end local v10    # "resIdVideoSizeOptions":I
    :sswitch_4
    const v8, 0x7f0e000a

    .line 190
    .restart local v8    # "resIdResolutionOptions":I
    const v7, 0x7f0e000b

    .line 191
    .restart local v7    # "resIdHdr3ResolutionOptions":I
    if-eqz p4, :cond_4

    .line 192
    const v9, 0x7f0e0018

    .line 199
    .restart local v9    # "resIdSuperiorAutoResolutionOptions":I
    :goto_5
    iget v11, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mHighQualityVideoSize:I

    invoke-direct {p0, v11}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getVideoSizeOptions(I)I

    move-result v10

    .line 200
    .restart local v10    # "resIdVideoSizeOptions":I
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 202
    const v4, 0x7f090217

    .line 203
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f090217

    .line 210
    .restart local v6    # "resIdHdr3DefaultResolution":I
    :goto_6
    const v3, 0x7f09021e

    .line 212
    .restart local v3    # "resIdBurstResolution":I
    iget v11, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mHighQualityVideoSize:I

    invoke-direct {p0, v11}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize(I)I

    move-result v5

    .line 213
    .restart local v5    # "resIdDefaultVideoSize":I
    goto/16 :goto_0

    .line 195
    .end local v3    # "resIdBurstResolution":I
    .end local v4    # "resIdDefaultResolution":I
    .end local v5    # "resIdDefaultVideoSize":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    .end local v9    # "resIdSuperiorAutoResolutionOptions":I
    .end local v10    # "resIdVideoSizeOptions":I
    :cond_4
    const v9, 0x7f0e0017

    .restart local v9    # "resIdSuperiorAutoResolutionOptions":I
    goto :goto_5

    .line 206
    .restart local v10    # "resIdVideoSizeOptions":I
    :cond_5
    const v4, 0x7f09020d

    .line 207
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f09020e

    .restart local v6    # "resIdHdr3DefaultResolution":I
    goto :goto_6

    .line 216
    .end local v4    # "resIdDefaultResolution":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    .end local v7    # "resIdHdr3ResolutionOptions":I
    .end local v8    # "resIdResolutionOptions":I
    .end local v9    # "resIdSuperiorAutoResolutionOptions":I
    .end local v10    # "resIdVideoSizeOptions":I
    :sswitch_5
    const v8, 0x7f0e000c

    .line 217
    .restart local v8    # "resIdResolutionOptions":I
    const v7, 0x7f0e000c

    .line 218
    .restart local v7    # "resIdHdr3ResolutionOptions":I
    const v9, 0x7f0e0019

    .line 221
    .restart local v9    # "resIdSuperiorAutoResolutionOptions":I
    const v10, 0x7f0e0025

    .line 222
    .restart local v10    # "resIdVideoSizeOptions":I
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 224
    const v4, 0x7f090218

    .line 225
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f090218

    .line 232
    .restart local v6    # "resIdHdr3DefaultResolution":I
    :goto_7
    const v3, 0x7f09021f

    .line 233
    .restart local v3    # "resIdBurstResolution":I
    const v5, 0x7f090226

    .line 234
    .restart local v5    # "resIdDefaultVideoSize":I
    goto/16 :goto_0

    .line 228
    .end local v3    # "resIdBurstResolution":I
    .end local v4    # "resIdDefaultResolution":I
    .end local v5    # "resIdDefaultVideoSize":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    :cond_6
    const v4, 0x7f09020f

    .line 229
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f09020f

    .restart local v6    # "resIdHdr3DefaultResolution":I
    goto :goto_7

    .line 237
    .end local v4    # "resIdDefaultResolution":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    .end local v7    # "resIdHdr3ResolutionOptions":I
    .end local v8    # "resIdResolutionOptions":I
    .end local v9    # "resIdSuperiorAutoResolutionOptions":I
    .end local v10    # "resIdVideoSizeOptions":I
    :sswitch_6
    const/4 v2, 0x0

    .line 239
    .local v2, "mainSensor":I
    const/4 v11, 0x0

    :try_start_0
    invoke-static {v11}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v1

    .line 241
    .local v1, "mainList":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    if-eqz v1, :cond_7

    .line 242
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->getMaxPictureSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 247
    .end local v1    # "mainList":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    :cond_7
    :goto_8
    const/16 v11, 0x1480

    if-ne v2, v11, :cond_8

    .line 248
    const v8, 0x7f0e000d

    .line 250
    .restart local v8    # "resIdResolutionOptions":I
    const v7, 0x7f0e000e

    .line 252
    .restart local v7    # "resIdHdr3ResolutionOptions":I
    const v10, 0x7f0e0026

    .line 261
    .restart local v10    # "resIdVideoSizeOptions":I
    :goto_9
    if-eqz p4, :cond_9

    .line 262
    const v9, 0x7f0e001a

    .line 269
    .restart local v9    # "resIdSuperiorAutoResolutionOptions":I
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 271
    const v4, 0x7f090219

    .line 272
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f090219

    .line 279
    .restart local v6    # "resIdHdr3DefaultResolution":I
    :goto_b
    const v3, 0x7f09021f

    .line 280
    .restart local v3    # "resIdBurstResolution":I
    const v5, 0x7f090227

    .line 281
    .restart local v5    # "resIdDefaultVideoSize":I
    goto/16 :goto_0

    .line 255
    .end local v3    # "resIdBurstResolution":I
    .end local v4    # "resIdDefaultResolution":I
    .end local v5    # "resIdDefaultVideoSize":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    .end local v7    # "resIdHdr3ResolutionOptions":I
    .end local v8    # "resIdResolutionOptions":I
    .end local v9    # "resIdSuperiorAutoResolutionOptions":I
    .end local v10    # "resIdVideoSizeOptions":I
    :cond_8
    const v8, 0x7f0e000f

    .line 256
    .restart local v8    # "resIdResolutionOptions":I
    const v7, 0x7f0e0010

    .line 258
    .restart local v7    # "resIdHdr3ResolutionOptions":I
    const v10, 0x7f0e0027

    .restart local v10    # "resIdVideoSizeOptions":I
    goto :goto_9

    .line 265
    :cond_9
    const v9, 0x7f0e001b

    .restart local v9    # "resIdSuperiorAutoResolutionOptions":I
    goto :goto_a

    .line 275
    :cond_a
    const v4, 0x7f090210

    .line 276
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f090210

    .restart local v6    # "resIdHdr3DefaultResolution":I
    goto :goto_b

    .line 284
    .end local v2    # "mainSensor":I
    .end local v4    # "resIdDefaultResolution":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    .end local v7    # "resIdHdr3ResolutionOptions":I
    .end local v8    # "resIdResolutionOptions":I
    .end local v9    # "resIdSuperiorAutoResolutionOptions":I
    .end local v10    # "resIdVideoSizeOptions":I
    :sswitch_7
    const v8, 0x7f0e0011

    .line 285
    .restart local v8    # "resIdResolutionOptions":I
    const v7, 0x7f0e0011

    .line 286
    .restart local v7    # "resIdHdr3ResolutionOptions":I
    const v9, 0x7f0e001c

    .line 288
    .restart local v9    # "resIdSuperiorAutoResolutionOptions":I
    const v10, 0x7f0e0028

    .line 289
    .restart local v10    # "resIdVideoSizeOptions":I
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 291
    const v4, 0x7f09021a

    .line 292
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f09021a

    .line 299
    .restart local v6    # "resIdHdr3DefaultResolution":I
    :goto_c
    const v5, 0x7f090228

    .line 300
    .restart local v5    # "resIdDefaultVideoSize":I
    const v3, 0x7f09021f

    .line 301
    .restart local v3    # "resIdBurstResolution":I
    goto/16 :goto_0

    .line 295
    .end local v3    # "resIdBurstResolution":I
    .end local v4    # "resIdDefaultResolution":I
    .end local v5    # "resIdDefaultVideoSize":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    :cond_b
    const v4, 0x7f090211

    .line 296
    .restart local v4    # "resIdDefaultResolution":I
    const v6, 0x7f090211

    .restart local v6    # "resIdHdr3DefaultResolution":I
    goto :goto_c

    .line 244
    .end local v4    # "resIdDefaultResolution":I
    .end local v6    # "resIdHdr3DefaultResolution":I
    .end local v7    # "resIdHdr3ResolutionOptions":I
    .end local v8    # "resIdResolutionOptions":I
    .end local v9    # "resIdSuperiorAutoResolutionOptions":I
    .end local v10    # "resIdVideoSizeOptions":I
    .restart local v2    # "mainSensor":I
    :catch_0
    move-exception v11

    goto :goto_8

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x500 -> :sswitch_7
        0x780 -> :sswitch_6
        0xa20 -> :sswitch_5
        0xcc0 -> :sswitch_4
        0xfa0 -> :sswitch_3
        0x1020 -> :sswitch_2
        0x1480 -> :sswitch_1
        0x1760 -> :sswitch_0
    .end sparse-switch
.end method

.method private getDefaultVideoSize(I)I
    .locals 1
    .param p1, "videoSizeHeight"    # I

    .prologue
    .line 341
    const/4 v0, -0x1

    .line 342
    .local v0, "resId":I
    sparse-switch p1, :sswitch_data_0

    .line 350
    const v0, 0x7f090225

    .line 353
    :goto_0
    return v0

    .line 344
    :sswitch_0
    const v0, 0x7f090224

    .line 345
    goto :goto_0

    .line 347
    :sswitch_1
    const v0, 0x7f090225

    .line 348
    goto :goto_0

    .line 342
    :sswitch_data_0
    .sparse-switch
        0x2d0 -> :sswitch_1
        0x438 -> :sswitch_0
    .end sparse-switch
.end method

.method private getVideoSizeOptions(I)I
    .locals 1
    .param p1, "videoSizeHeight"    # I

    .prologue
    .line 328
    const/4 v0, -0x1

    .line 329
    .local v0, "resId":I
    sparse-switch p1, :sswitch_data_0

    .line 337
    :goto_0
    return v0

    .line 331
    :sswitch_0
    const v0, 0x7f0e0023

    .line 332
    goto :goto_0

    .line 334
    :sswitch_1
    const v0, 0x7f0e0024

    goto :goto_0

    .line 329
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d0 -> :sswitch_1
        0x438 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getBurstResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mBurstResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultVideoSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-object v0
.end method

.method public getHdr3DefaultResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mHdr3DefaultResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getHdr3ResolutionOptions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mHdr3ResolutionOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getPictureSize()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mMaxPictureSize:I

    return v0
.end method

.method public getResolutionOptions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSuperiorAutoResolutionOptions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSizeOptions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
