.class public Lcom/sonymobile/cameracommon/nfccontroller/parser/DINdefMessage;
.super Ljava/lang/Object;
.source "DINdefMessage.java"


# static fields
.field private static final OFFSET_VERSION:I = 0x4

.field private static final PASSWD_ATTR_HEAD:I = 0x2

.field private static final PASSWD_ATTR_LENGTH:I = 0x2

.field private static final SSID_ATTR_HEAD:I = 0x2

.field private static final SSID_ATTR_LENGTH:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION_LENGTH:I = 0x1


# instance fields
.field private final mMajorVersion:I

.field private final mMinorVersion:I

.field private final mPasswd:Ljava/lang/String;

.field private final mSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/cameracommon/nfccontroller/parser/DINdefMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/nfccontroller/parser/DINdefMessage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/nfc/NdefMessage;)V
    .locals 14
    .param p1, "ndefMessage"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    .line 40
    .local v0, "message":[B
    const/4 v12, 0x4

    aget-byte v11, v0, v12

    .line 43
    .local v11, "version":B
    shr-int/lit8 v12, v11, 0x4

    int-to-byte v12, v12

    iput v12, p0, Lcom/sonymobile/cameracommon/nfccontroller/parser/DINdefMessage;->mMajorVersion:I

    .line 44
    and-int/lit8 v12, v11, 0xf

    int-to-byte v12, v12

    iput v12, p0, Lcom/sonymobile/cameracommon/nfccontroller/parser/DINdefMessage;->mMinorVersion:I

    .line 46
    const/4 v4, 0x7

    .line 47
    .local v4, "offcetSsidLength":I
    const/16 v12, 0x9

    invoke-static {v0, v4, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 51
    .local v10, "ssidLengthByte":[B
    add-int/lit8 v3, v4, 0x2

    .line 52
    .local v3, "offcetSsid":I
    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v10}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    .line 53
    .local v9, "ssidLength":I
    add-int/lit8 v12, v9, 0x9

    invoke-static {v0, v3, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 57
    .local v8, "ssidByte":[B
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v12, p0, Lcom/sonymobile/cameracommon/nfccontroller/parser/DINdefMessage;->mSsid:Ljava/lang/String;

    .line 59
    add-int/lit8 v12, v9, 0x9

    add-int/lit8 v2, v12, 0x2

    .line 60
    .local v2, "offcetPasswdLength":I
    add-int/lit8 v12, v2, 0x2

    invoke-static {v0, v2, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 63
    .local v7, "passwdLengthByte":[B
    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v7}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 64
    .local v6, "passwdLength":I
    add-int/lit8 v1, v2, 0x2

    .line 65
    .local v1, "offcetPasswd":I
    add-int v12, v1, v6

    invoke-static {v0, v1, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 69
    .local v5, "passwdByte":[B
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v12, p0, Lcom/sonymobile/cameracommon/nfccontroller/parser/DINdefMessage;->mPasswd:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/parser/DINdefMessage;->mMajorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/parser/DINdefMessage;->mMinorVersion:I

    return v0
.end method

.method public getPasswd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/parser/DINdefMessage;->mPasswd:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/parser/DINdefMessage;->mSsid:Ljava/lang/String;

    return-object v0
.end method
