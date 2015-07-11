.class final enum Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;
.super Ljava/lang/Enum;
.source "MmsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/MmsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

.field public static final enum MPEG_4:Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

.field public static final enum THREE_GPP:Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;


# instance fields
.field private final mFormat:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 166
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    const-string v1, "THREE_GPP"

    const-string v2, "video/3gpp"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->THREE_GPP:Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    .line 167
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    const-string v1, "MPEG_4"

    const-string v2, "video/mp4"

    invoke-direct {v0, v1, v3, v2, v5}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->MPEG_4:Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    .line 165
    new-array v0, v5, [Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->THREE_GPP:Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->MPEG_4:Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "outputFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput-object p3, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->mValue:Ljava/lang/String;

    .line 171
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->mFormat:I

    .line 172
    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    .prologue
    .line 165
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->mFormat:I

    return v0
.end method

.method static from(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->values()[Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 179
    .local v3, "mime":Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;
    iget-object v4, v3, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->mValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    return-object v3

    .line 178
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v3    # "mime":Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "This value is not supported."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    const-class v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    return-object v0
.end method
