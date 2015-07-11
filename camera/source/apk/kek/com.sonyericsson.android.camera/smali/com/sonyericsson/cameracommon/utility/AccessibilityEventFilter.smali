.class public Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityEventFilter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AccessibilityEventFilter"


# instance fields
.field private mAllowedClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "allowedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "isFocusEvent":Z
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    .line 56
    .local v2, "type":I
    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/high16 v3, 0x10000

    if-eq v2, v3, :cond_0

    const v3, 0x8000

    if-ne v2, v3, :cond_1

    .line 59
    :cond_0
    const/4 v1, 0x1

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 64
    .local v0, "hasMessage":Z
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v3

    if-gtz v3, :cond_2

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 67
    :cond_2
    const/4 v0, 0x1

    .line 71
    :cond_3
    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    .line 72
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 78
    const/4 v3, 0x0

    .line 82
    :goto_0
    return v3

    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    goto :goto_0
.end method
