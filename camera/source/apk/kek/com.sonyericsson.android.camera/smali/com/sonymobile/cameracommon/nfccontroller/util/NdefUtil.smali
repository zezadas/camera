.class public Lcom/sonymobile/cameracommon/nfccontroller/util/NdefUtil;
.super Ljava/lang/Object;
.source "NdefUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMimeNdefRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Landroid/nfc/NdefRecord;

    const/4 v1, 0x2

    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0
.end method

.method public static varargs createNdefMessage([Landroid/nfc/NdefRecord;)Landroid/nfc/NdefMessage;
    .locals 1
    .param p0, "records"    # [Landroid/nfc/NdefRecord;

    .prologue
    .line 25
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-direct {v0, p0}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v0
.end method
