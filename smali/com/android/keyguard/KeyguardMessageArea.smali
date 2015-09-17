.class public Lcom/android/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;,
        Lcom/android/keyguard/KeyguardMessageArea$Helper;
    }
.end annotation


# static fields
.field private static final ANNOUNCEMENT_DELAY:J = 0xfaL

.field private static final ANNOUNCE_TOKEN:Ljava/lang/Object;

.field protected static final FADE_DURATION:I = 0x2ee

.field static final SECURITY_MESSAGE_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "KeyguardMessageArea"


# instance fields
.field private final BATTERY_LOW_ICON:I

.field private final CHARGING_ICON:I

.field protected mBatteryCharged:Z

.field protected mBatteryIsLow:Z

.field protected mBatteryIsWirelessCharging:Z

.field private mBatteryLevel:I

.field private mCharging:Z

.field mClearMessageRunnable:Ljava/lang/Runnable;

.field mClearShortcutReleasedLayoutRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mIcon:I

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMessage:Ljava/lang/CharSequence;

.field private mSeparator:Ljava/lang/CharSequence;

.field mShorcutMessage:Ljava/lang/CharSequence;

.field private mShowingBatteryInfo:Z

.field mShowingBouncer:Z

.field mShowingMessage:Z

.field mTimeout:J

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->CHARGING_ICON:I

    .line 61
    iput v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->BATTERY_LOW_ICON:I

    .line 63
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    .line 67
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    .line 69
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    .line 70
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsWirelessCharging:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 82
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 88
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    .line 96
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 109
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$2;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearShortcutReleasedLayoutRunnable:Ljava/lang/Runnable;

    .line 235
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$3;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 260
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setLayerType(ILandroid/graphics/Paint;)V

    .line 262
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 265
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 267
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 269
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_text_message_separator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    .line 271
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardMessageArea;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->hideMessage(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->resetShortcutReleasedLayout()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->setShortcutReleasedLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardMessageArea;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->showMessage(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardMessageArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/keyguard/KeyguardMessageArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/keyguard/KeyguardMessageArea;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    return p1
.end method

.method private varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "args"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v0, "b":Ljava/lang/StringBuilder;
    aget-object v3, p1, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    aget-object v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 329
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 330
    aget-object v2, p1, v1

    .line 331
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 333
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 335
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 329
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getChargeInfo(Landroid/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "icon"    # Landroid/util/MutableInt;

    .prologue
    const/4 v5, 0x0

    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, "string":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 347
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    if-eqz v1, :cond_3

    .line 349
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/keyguard/R$string;->keyguard_charged:I

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 354
    iput v5, p1, Landroid/util/MutableInt;->value:I

    .line 361
    :cond_0
    :goto_1
    return-object v0

    .line 349
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsWirelessCharging:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/android/keyguard/R$string;->keyguard_charging_in_wireless:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/keyguard/R$string;->keyguard_plugged_in:I

    goto :goto_0

    .line 355
    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_low_battery:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    iput v5, p1, Landroid/util/MutableInt;->value:I

    goto :goto_1
.end method

.method private hideMessage(IZ)V
    .locals 5
    .param p1, "duration"    # I
    .param p2, "thenUpdate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 400
    if-lez p1, :cond_2

    .line 401
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 402
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 403
    if-eqz p2, :cond_0

    .line 404
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$4;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 411
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 418
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    :goto_0
    return-void

    .line 413
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 414
    if-eqz p2, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 3

    .prologue
    .line 431
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 432
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    .line 433
    .local v1, "userHasTrust":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resetShortcutReleasedLayout()V
    .locals 5

    .prologue
    .line 380
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setSingleLine(Z)V

    .line 381
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_message_area_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 382
    .local v2, "meesageBottomMargin":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->securityview_overlay_message_area_min_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 383
    .local v1, "mMessageAreaMinWidth":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 385
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->isSecure()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    :cond_0
    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMinimumWidth(I)V

    .line 388
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 393
    :cond_1
    :goto_0
    const/4 v3, 0x3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 394
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 395
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setGravity(I)V

    .line 396
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    return-void

    .line 391
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_helptext_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private setShortcutReleasedLayout()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 365
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setSingleLine(Z)V

    .line 366
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setGravity(I)V

    .line 367
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    .local v0, "margin":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 369
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_shortcut_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 370
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearShortcutReleasedLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 372
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearShortcutReleasedLayoutRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 377
    return-void
.end method

.method private showMessage(I)V
    .locals 5
    .param p1, "duration"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 421
    if-lez p1, :cond_0

    .line 422
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 423
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 424
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 428
    .end local v0    # "anim":Landroid/animation/Animator;
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method getCurrentMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 276
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    .line 277
    .local v1, "screenOn":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    .line 278
    .local v0, "isEasyUxOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 280
    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(F)V

    .line 282
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 283
    return-void
.end method

.method public securityMessageChanged()V
    .locals 8

    .prologue
    .line 286
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    .line 288
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 289
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 290
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 296
    return-void
.end method

.method update()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 306
    new-instance v0, Landroid/util/MutableInt;

    invoke-direct {v0, v5}, Landroid/util/MutableInt;-><init>(I)V

    .line 307
    .local v0, "icon":Landroid/util/MutableInt;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->getChargeInfo(Landroid/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 308
    .local v1, "status":Ljava/lang/CharSequence;
    iget v2, v0, Landroid/util/MutableInt;->value:I

    if-eqz v2, :cond_0

    .line 309
    iget v2, v0, Landroid/util/MutableInt;->value:I

    invoke-virtual {p0, v2, v5, v5, v5}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 314
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->invalidate()V

    .line 316
    return-void

    .line 312
    :cond_0
    iget v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    invoke-virtual {p0, v2, v5, v5, v5}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method
