.class public Lcom/android/keyguard/sec/KeyguardUnlockView;
.super Landroid/widget/FrameLayout;
.source "KeyguardUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# static fields
.field private static final AFFORDANCE_TOP_MARGIN_FOR_T_MODEL:I = 0x190

.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I = 0x66ffffff

.field private static final DEBUG:Z

.field private static final MAX_AWAKE_TIME:I = 0x7530

.field private static final MSG_CHANGE_TOUCH_EXPLORATION:I = 0x12f0

.field private static final TAG:Ljava/lang/String; = "KeyguardUnlockView"


# instance fields
.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private mAttributionView:Landroid/view/View;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mBouncerFrameView:Landroid/view/View;

.field private mBouncerHelpText:Landroid/widget/TextView;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mEcaView:Landroid/view/View;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mIsBouncing:Z

.field private mIsHelpTextEnabled:Z

.field private mIsKeyguardDismissing:Z

.field private mIsMultiTouch:Z

.field private mIsTouchExplorationEnabled:Z

.field private mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

.field private mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResumedTimeMillis:J

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSecurityMessageDisplayHelpText:Ljava/lang/String;

.field private mTextChageHandler:Landroid/os/Handler;

.field private mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    .line 87
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 88
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 89
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 94
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mTextChageHandler:Landroid/os/Handler;

    .line 96
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .line 99
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsKeyguardDismissing:Z

    .line 112
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsMultiTouch:Z

    .line 114
    new-instance v2, Lcom/android/keyguard/sec/KeyguardUnlockView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$1;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->setFocusable(Z)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->setFocusableInTouchMode(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->requestFocus()Z

    .line 144
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 145
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 147
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 148
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 150
    new-instance v2, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/KeyguardEffectViewBase;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .line 153
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    .line 155
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touch_exploration_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 160
    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/KeyguardUnlockView$2;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/sec/KeyguardUnlockView$2;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "touch_exploration_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 176
    return-void

    :cond_1
    move v0, v1

    .line 156
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->handleChangeTouchExploration()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dismissKeyguard()V
    .locals 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsKeyguardDismissing:Z

    if-nez v0, :cond_0

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsKeyguardDismissing:Z

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 283
    :cond_0
    return-void
.end method

.method private handleChangeTouchExploration()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 408
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touch_exploration_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 411
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-eqz v0, :cond_3

    .line 412
    const-string v0, "KeyguardUnlockView"

    const-string v2, "[handleChangeTouchExploration]explore by touch mode on"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->checkWakeUpCommandCondition()Z

    .line 420
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->refreshDefaultHelpText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    .line 423
    :cond_1
    const-string v0, "KeyguardUnlockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleChangeTouchExploration] mKeyguardVoiceWrapper.refreshDefaultHelpText() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-nez v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 427
    :cond_2
    return-void

    .line 414
    :cond_3
    const-string v0, "KeyguardUnlockView"

    const-string v2, "[handleChangeTouchExploration]explore by touch mode off"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pokeWakelockWithTimeCheck()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x4e20

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 345
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    sub-long v0, v2, v4

    .line 347
    .local v0, "diff":J
    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    .line 348
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    const-wide/16 v4, 0x7530

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 350
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto :goto_0
.end method


# virtual methods
.method varargs doTransition(F[Landroid/view/View;)V
    .locals 5
    .param p1, "to"    # F
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 363
    if-nez p2, :cond_1

    .line 372
    :cond_0
    return-void

    .line 367
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 368
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 369
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 367
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "KeyguardUnlockView"

    const-string v1, "hideBouncer mBouncerHelpText != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 403
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    .line 405
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 231
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->onDetachedFromWindow()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->cleanUp()V

    .line 248
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "disableSIM":Z
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "unlock_text"

    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_show_info"

    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_5

    move v1, v5

    .line 184
    .local v1, "getSettingOptionHelpTextEnabled":Z
    :goto_0
    if-eqz v1, :cond_6

    if-nez v0, :cond_6

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    .line 185
    const-string v4, "KeyguardUnlockView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsHelpTextEnabled= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 189
    sget v4, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    .line 190
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 191
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    const v7, 0x66ffffff

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 192
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 194
    :cond_0
    sget v4, Lcom/android/keyguard/R$id;->keyguard_unlock_bouncer_help_text:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    .line 195
    sget v4, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mEcaView:Landroid/view/View;

    .line 196
    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    if-eqz v4, :cond_1

    .line 197
    new-instance v4, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 200
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 201
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "easy_mode_switch"

    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_7

    move v2, v6

    .line 205
    .local v2, "isEasyUxOn":Z
    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "wake_up_lock_screen"

    invoke-static {v4, v7, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_8

    move v3, v5

    .line 206
    .local v3, "isWakeUpOn":Z
    :goto_3
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 207
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    if-nez v4, :cond_3

    .line 208
    new-instance v4, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-direct {v4, v6, v7, v8}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;-><init>(Landroid/content/Context;Landroid/widget/TextView;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    .line 212
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    if-eqz v4, :cond_9

    .line 213
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->onFinishInflate()V

    .line 214
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->checkWakeUpCommandCondition()Z

    .line 215
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->refreshDefaultHelpText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    .line 223
    :goto_4
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v4

    if-nez v4, :cond_4

    .line 224
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    invoke-interface {v4, v6, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 226
    :cond_4
    return-void

    .end local v1    # "getSettingOptionHelpTextEnabled":Z
    .end local v2    # "isEasyUxOn":Z
    .end local v3    # "isWakeUpOn":Z
    :cond_5
    move v1, v6

    .line 182
    goto/16 :goto_0

    .restart local v1    # "getSettingOptionHelpTextEnabled":Z
    :cond_6
    move v4, v6

    .line 184
    goto/16 :goto_1

    :cond_7
    move v2, v5

    .line 204
    goto :goto_2

    .restart local v2    # "isEasyUxOn":Z
    :cond_8
    move v3, v6

    .line 205
    goto :goto_3

    .line 217
    .restart local v3    # "isWakeUpOn":Z
    :cond_9
    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v4, :cond_a

    .line 218
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/keyguard/R$string;->lockscreen_unlock_guide_text:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    goto :goto_4

    .line 220
    :cond_a
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/keyguard/R$string;->lockscreen_unlock_guide_text_touch_exploration:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    goto :goto_4
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public onResume(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x1

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->onResume()V

    .line 318
    :cond_0
    if-ne p1, v2, :cond_1

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    .line 320
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->showUnlockAffordance()V

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 326
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUnlockExecuted()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 494
    :cond_0
    return-void
.end method

.method public onUnlockViewPressed()V
    .locals 4

    .prologue
    .line 498
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAttributionView:Landroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->doTransition(F[Landroid/view/View;)V

    .line 500
    return-void
.end method

.method public onUnlockViewReleased()V
    .locals 4

    .prologue
    .line 504
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAttributionView:Landroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->doTransition(F[Landroid/view/View;)V

    .line 506
    return-void
.end method

.method public onUnlockViewSwiped(Z)V
    .locals 0
    .param p1, "swiped"    # Z

    .prologue
    .line 512
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 331
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 332
    const-string v1, "KeyguardUnlockView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string v0, "focused"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->onWindowFocusChanged(Z)V

    .line 337
    :cond_1
    if-nez p1, :cond_2

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->reset()V

    .line 340
    :cond_2
    return-void

    .line 332
    :cond_3
    const-string v0, "unfocused"

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public setAttributionInfoView(Landroid/view/View;)V
    .locals 0
    .param p1, "attributionView"    # Landroid/view/View;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAttributionView:Landroid/view/View;

    .line 448
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .locals 2
    .param p1, "carrierArea"    # Landroid/view/View;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    .line 432
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$3;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$4;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 444
    :cond_0
    return-void
.end method

.method public setHelpText()V
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 519
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 276
    :cond_0
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 287
    return-void
.end method

.method public showBouncer(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 376
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mEcaView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 377
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    .line 379
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 380
    .local v0, "outRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 381
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 383
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 384
    const-string v1, "KeyguardUnlockView"

    const-string v2, "showBouncer mBouncerHelpText != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_unlock_guide_text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 391
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 394
    :cond_0
    return-void

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_unlock_guide_text_touch_exploration:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 389
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showUnlockAffordance()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 456
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 457
    .local v1, "outRect":Landroid/graphics/Rect;
    const/4 v0, 0x1

    .line 458
    .local v0, "isValidRect":Z
    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 460
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/lit16 v2, v2, 0x190

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 463
    :cond_0
    const-string v2, "KeyguardUnlockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v2, "KeyguardUnlockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    if-eqz v0, :cond_1

    .line 467
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const-wide/16 v4, 0x1f4

    invoke-interface {v2, v4, v5, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 469
    :cond_1
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->pokeWakelockWithTimeCheck()V

    .line 487
    :cond_0
    return-void
.end method
