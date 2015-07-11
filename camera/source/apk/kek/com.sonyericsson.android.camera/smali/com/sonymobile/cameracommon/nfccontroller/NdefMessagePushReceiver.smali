.class public Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;
.super Ljava/lang/Object;
.source "NdefMessagePushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$1;,
        Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefMessageReceiver;,
        Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefPushMessageCallback;,
        Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;
    }
.end annotation


# static fields
.field private static final IS_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;

.field private mContext:Landroid/content/Context;

.field private final mDefaultPushMsgCallback:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefPushMessageCallback;

.field private mIsReceiverRegistered:Z

.field private mNdefMessageFilter:Landroid/content/IntentFilter;

.field private final mNdefMsgReceiver:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefMessageReceiver;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPendingIntentFilters:[Landroid/content/IntentFilter;

.field private mPushMessage:Landroid/nfc/NdefMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v2, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mContext:Landroid/content/Context;

    .line 35
    iput-object v2, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mActivity:Landroid/app/Activity;

    .line 38
    iput-object v2, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 41
    iput-object v2, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 44
    iput-object v2, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPendingIntentFilters:[Landroid/content/IntentFilter;

    .line 47
    iput-object v2, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNdefMessageFilter:Landroid/content/IntentFilter;

    .line 50
    iput-object v2, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPushMessage:Landroid/nfc/NdefMessage;

    .line 53
    iput-object v2, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mCallback:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;

    .line 56
    iput-boolean v3, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mIsReceiverRegistered:Z

    .line 246
    new-instance v1, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefPushMessageCallback;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefPushMessageCallback;-><init>(Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$1;)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mDefaultPushMsgCallback:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefPushMessageCallback;

    .line 264
    new-instance v1, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefMessageReceiver;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefMessageReceiver;-><init>(Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$1;)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNdefMsgReceiver:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefMessageReceiver;

    .line 79
    iput-object p1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mActivity:Landroid/app/Activity;

    .line 83
    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 84
    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NFC is not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 97
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;)Landroid/nfc/NdefMessage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPushMessage:Landroid/nfc/NdefMessage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;)Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mCallback:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;

    return-object v0
.end method


# virtual methods
.method public disablePushMessage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 259
    iput-object v3, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPushMessage:Landroid/nfc/NdefMessage;

    .line 260
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mActivity:Landroid/app/Activity;

    new-array v2, v4, [Landroid/app/Activity;

    invoke-virtual {v0, v3, v1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 261
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mActivity:Landroid/app/Activity;

    new-array v2, v4, [Landroid/app/Activity;

    invoke-virtual {v0, v3, v1, v2}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 262
    return-void
.end method

.method public disableReceiveNdefMessage()V
    .locals 2

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNdefMsgReceiver:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefMessageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mIsReceiverRegistered:Z

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mCallback:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;

    .line 195
    return-void
.end method

.method public enablePushMessage(Landroid/nfc/NdefMessage;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Z)V
    .locals 1
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "pushCompleteCallback"    # Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .param p3, "isForcePush"    # Z

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPushMessage:Landroid/nfc/NdefMessage;

    .line 211
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mDefaultPushMsgCallback:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefPushMessageCallback;

    invoke-virtual {p0, v0, p2, p3}, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->enablePushMessage(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Z)V

    .line 215
    return-void
.end method

.method public enablePushMessage(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Z)V
    .locals 4
    .param p1, "createNdefMsgCallback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p2, "pushCompletedCallback"    # Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .param p3, "isForcePush"    # Z

    .prologue
    const/4 v3, 0x0

    .line 229
    if-eqz p3, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;I)V

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mActivity:Landroid/app/Activity;

    new-array v2, v3, [Landroid/app/Activity;

    invoke-virtual {v0, p2, v1, v2}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 244
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mActivity:Landroid/app/Activity;

    new-array v2, v3, [Landroid/app/Activity;

    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public enableReceiveNdefMessage(Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;Ljava/util/Set;)V
    .locals 9
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "mimeTypeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 139
    iput-object p1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mCallback:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;

    .line 142
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNdefMessageFilter:Landroid/content/IntentFilter;

    .line 144
    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    .local v2, "mimeType":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNdefMessageFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    .line 150
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_0
    new-array v3, v8, [Landroid/content/IntentFilter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNdefMessageFilter:Landroid/content/IntentFilter;

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPendingIntentFilters:[Landroid/content/IntentFilter;

    .line 155
    iget-object v4, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPendingIntentFilters:[Landroid/content/IntentFilter;

    const/4 v3, 0x0

    check-cast v3, [[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNdefMsgReceiver:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefMessageReceiver;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNdefMessageFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    iput-boolean v8, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mIsReceiverRegistered:Z

    .line 164
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reEnableForegroundDispatch()V
    .locals 5

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPendingIntentFilters:[Landroid/content/IntentFilter;

    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mContext:Landroid/content/Context;

    .line 104
    iput-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mActivity:Landroid/app/Activity;

    .line 107
    iput-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 108
    iput-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 109
    iput-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPendingIntentFilters:[Landroid/content/IntentFilter;

    .line 110
    iput-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mNdefMessageFilter:Landroid/content/IntentFilter;

    .line 111
    iput-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPushMessage:Landroid/nfc/NdefMessage;

    .line 113
    iput-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mCallback:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;

    .line 114
    return-void
.end method
