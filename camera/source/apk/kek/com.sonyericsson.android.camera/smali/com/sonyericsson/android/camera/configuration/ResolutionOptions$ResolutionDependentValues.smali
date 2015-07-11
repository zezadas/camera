.class final enum Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;
.super Ljava/lang/Enum;
.source "ResolutionOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResolutionDependentValues"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;,
        Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

.field public static final enum EIGHT:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

.field public static final enum FIVE:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

.field public static final enum ONE:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

.field public static final enum THIRTEEN:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

.field public static final enum TWELVE:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

.field public static final enum TWENTY:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

.field public static final enum TWENTY_THREE:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

.field public static final enum TWO:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

.field public static final enum VGA:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;


# instance fields
.field private final mDefaultVideoSize:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;

.field private final mNormalResolutionValue:I

.field private final mResolutionOptionsValue:I

.field private final mVideoSizeOptions:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;

.field private final mWideResolutionValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    const-string v1, "TWENTY_THREE"

    const v3, 0x7f090213

    const v4, 0x7f090209

    const v5, 0x7f0e0006

    new-instance v6, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$1;

    invoke-direct {v6}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$1;-><init>()V

    new-instance v7, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$2;

    invoke-direct {v7}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$2;-><init>()V

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->TWENTY_THREE:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .line 88
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    const-string v4, "TWENTY"

    const v6, 0x7f090214

    const v7, 0x7f09020a

    const v8, 0x7f0e0007

    new-instance v9, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$3;

    invoke-direct {v9}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$3;-><init>()V

    new-instance v10, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$4;

    invoke-direct {v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$4;-><init>()V

    move v5, v11

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->TWENTY:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .line 103
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    const-string v4, "THIRTEEN"

    const v6, 0x7f090215

    const v7, 0x7f09020b

    const v8, 0x7f0e0008

    new-instance v9, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$5;

    invoke-direct {v9}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$5;-><init>()V

    new-instance v10, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$6;

    invoke-direct {v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$6;-><init>()V

    move v5, v12

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->THIRTEEN:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .line 118
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    const-string v4, "TWELVE"

    const v6, 0x7f090216

    const v7, 0x7f09020c

    const v8, 0x7f0e0009

    new-instance v9, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$7;

    invoke-direct {v9}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$7;-><init>()V

    new-instance v10, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$8;

    invoke-direct {v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$8;-><init>()V

    move v5, v13

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->TWELVE:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .line 133
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    const-string v4, "EIGHT"

    const v6, 0x7f090217

    const v7, 0x7f09020d

    const v8, 0x7f0e000a

    new-instance v9, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$9;

    invoke-direct {v9}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$9;-><init>()V

    new-instance v10, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$10;

    invoke-direct {v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$10;-><init>()V

    move v5, v14

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->EIGHT:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .line 150
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    const-string v4, "FIVE"

    const/4 v5, 0x5

    const v6, 0x7f090218

    const v7, 0x7f09020f

    const v8, 0x7f0e000c

    new-instance v9, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$11;

    invoke-direct {v9}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$11;-><init>()V

    new-instance v10, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$12;

    invoke-direct {v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$12;-><init>()V

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->FIVE:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .line 165
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    const-string v4, "TWO"

    const/4 v5, 0x6

    const v6, 0x7f090219

    const v7, 0x7f090210

    const v8, 0x7f0e000f

    new-instance v9, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$13;

    invoke-direct {v9}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$13;-><init>()V

    new-instance v10, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$14;

    invoke-direct {v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$14;-><init>()V

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->TWO:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .line 180
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    const-string v4, "ONE"

    const/4 v5, 0x7

    const v6, 0x7f09021a

    const v7, 0x7f090211

    const v8, 0x7f0e0011

    new-instance v9, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$15;

    invoke-direct {v9}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$15;-><init>()V

    new-instance v10, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$16;

    invoke-direct {v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$16;-><init>()V

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->ONE:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .line 197
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    const-string v4, "VGA"

    const/16 v5, 0x8

    const v6, 0x7f090212

    const v7, 0x7f090212

    const v8, 0x7f0e0012

    new-instance v9, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$17;

    invoke-direct {v9}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$17;-><init>()V

    new-instance v10, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$18;

    invoke-direct {v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$18;-><init>()V

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->VGA:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .line 72
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->TWENTY_THREE:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->TWENTY:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->THIRTEEN:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->TWELVE:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->EIGHT:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->FIVE:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->TWO:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->ONE:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->VGA:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;)V
    .locals 0
    .param p3, "normalResolution"    # I
    .param p4, "wideResolution"    # I
    .param p5, "resolutionOptions"    # I
    .param p6, "defaultVideoSize"    # Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;
    .param p7, "videoSizeOptions"    # Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;",
            "Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 223
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mNormalResolutionValue:I

    .line 224
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mWideResolutionValue:I

    .line 225
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mResolutionOptionsValue:I

    .line 226
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mDefaultVideoSize:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;

    .line 227
    iput-object p7, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mVideoSizeOptions:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;

    .line 228
    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .prologue
    .line 72
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mResolutionOptionsValue:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mVideoSizeOptions:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .prologue
    .line 72
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mNormalResolutionValue:I

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .prologue
    .line 72
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mWideResolutionValue:I

    return v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mDefaultVideoSize:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    return-object v0
.end method
