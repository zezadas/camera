.class final enum Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;
.super Ljava/lang/Enum;
.source "MmsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/MmsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Codec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

.field public static final enum H263:Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

.field public static final enum H264:Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;


# instance fields
.field private final mQuality:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 138
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    const-string v1, "H263"

    const-string v2, "H263"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->H263:Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    .line 139
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    const-string v1, "H264"

    const-string v2, "H264"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->H264:Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    .line 137
    new-array v0, v5, [Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->H263:Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->H264:Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "quality"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    iput-object p3, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->mValue:Ljava/lang/String;

    .line 143
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->mQuality:I

    .line 144
    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    .prologue
    .line 137
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->mQuality:I

    return v0
.end method

.method static from(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->values()[Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 151
    .local v1, "codec":Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;
    iget-object v4, v1, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->mValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    return-object v1

    .line 150
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "codec":Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "This value is not supported."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    const-class v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    return-object v0
.end method
