.class public Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardBottomAreaView.java"


# static fields
.field static final MODE_CAMERA_SHORTCUT:I = 0x1

.field static final TAG:Ljava/lang/String; = "SecKeyguardBottomAreaView"

.field private static final USE_CIRCLE_EM_CALL:Z = true

.field private static final USE_DUMMY_CIRCLE_EM_CALL:Z


# instance fields
.field private final MSG_SHORTCUT_MESSAGE_RESET:I

.field private mBouncerFrame:Landroid/view/View;

.field private mCMASTextViewNotNormal:Landroid/widget/TextView;

.field private mCMASTextViewSecure:Landroid/widget/TextView;

.field private mCMASTextViewSwipe:Landroid/widget/TextView;

.field private mCameraImageView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mKidsModeEnabled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMessageAreaMinWidth:I

.field private mPhoneImageView:Landroid/view/View;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mShortcutMode:I

.field private mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUseBackUp:Z

.field private mUseCenteredMessageArea:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    .line 63
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseBackUp:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseCenteredMessageArea:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKidsModeEnabled:Z

    .line 77
    const/16 v3, 0x8a3

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->MSG_SHORTCUT_MESSAGE_RESET:I

    .line 79
    new-instance v3, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v3, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 120
    sget-object v3, Lcom/android/keyguard/R$styleable;->SecKeyguardBottomAreaView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v3, Lcom/android/keyguard/R$styleable;->SecKeyguardBottomAreaView_useBackUp:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseBackUp:Z

    .line 123
    sget v3, Lcom/android/keyguard/R$styleable;->SecKeyguardBottomAreaView_useCenteredMessageArea:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseCenteredMessageArea:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    const-string v3, "SecKeyguardBottomAreaView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUseBackUp= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseBackUp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mUseCenteredMessageArea= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseCenteredMessageArea:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v3, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v3, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 131
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "set_shortcuts_mode"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutMode:I

    .line 134
    const-string v3, "SecKeyguardBottomAreaView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shortcut value[0-off / 1-camera] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kids_home_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKidsModeEnabled:Z

    .line 137
    const-string v1, "SecKeyguardBottomAreaView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mKidsModeEnabled= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKidsModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 125
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    :cond_0
    move v1, v2

    .line 136
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method private initCMASText()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 373
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSecure:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 377
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    const-string v0, "SecKeyguardBottomAreaView"

    const-string v1, "[SPR] Presidential Alert!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSecure:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_spr:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_spr:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewNotNormal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_spr:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSecure:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_lockscreen_cmas:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_lockscreen_cmas:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 390
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewNotNormal:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_lockscreen_cmas:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 391
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->updateCMASText()V

    goto :goto_0

    .line 383
    :cond_2
    const-string v0, "SecKeyguardBottomAreaView"

    const-string v1, "[No SPR] Emergency Alert!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSecure:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_vzw:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_vzw:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewNotNormal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_vzw:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 393
    :cond_3
    const-string v0, "SecKeyguardBottomAreaView"

    const-string v1, "[No USA model] disable CMAS Text!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSecure:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewNotNormal:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private isCenteredMessageArea()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseCenteredMessageArea:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 3

    .prologue
    .line 362
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 363
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    .line 364
    .local v1, "userHasTrust":Z
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

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


# virtual methods
.method public getCameraView()Landroid/view/View;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCameraImageView:Landroid/view/View;

    return-object v0
.end method

.method public getPhoneView()Landroid/view/View;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mPhoneImageView:Landroid/view/View;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 287
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 290
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getRootView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    .line 291
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 294
    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_camera_circle:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .line 295
    .local v0, "camera":Lcom/android/keyguard/sec/SecKeyguardCircleView;
    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_emergency_circle:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .line 296
    .local v1, "emcall":Lcom/android/keyguard/sec/SecKeyguardCircleView;
    sget v3, Lcom/android/keyguard/R$id;->sec_gms_smart_lock_circle:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .line 297
    .local v2, "trusted":Lcom/android/keyguard/sec/SecKeyguardCircleView;
    if-eqz v0, :cond_0

    .line 300
    new-array v4, v9, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    aput-object v3, v4, v5

    aput-object v1, v4, v6

    if-eqz v2, :cond_3

    move-object v3, v2

    :goto_0
    aput-object v3, v4, v7

    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_unlock_view_help_text:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setAnimatingViews([Landroid/view/View;)V

    .line 303
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setMessageHelper(Lcom/android/keyguard/KeyguardMessageArea$Helper;)V

    .line 304
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCenteredMessageArea()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 305
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortcutReleaseMessage(Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 307
    :cond_0
    if-eqz v1, :cond_1

    .line 308
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 309
    new-array v4, v9, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    aput-object v3, v4, v5

    aput-object v0, v4, v6

    if-eqz v2, :cond_4

    move-object v3, v2

    :goto_1
    aput-object v3, v4, v7

    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_unlock_view_help_text:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-virtual {v1, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setAnimatingViews([Landroid/view/View;)V

    .line 316
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setMessageHelper(Lcom/android/keyguard/KeyguardMessageArea$Helper;)V

    .line 317
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCenteredMessageArea()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 318
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortcutReleaseMessage(Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 320
    :cond_1
    if-eqz v2, :cond_2

    .line 321
    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setAnimatingViews([Landroid/view/View;)V

    .line 322
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setMessageHelper(Lcom/android/keyguard/KeyguardMessageArea$Helper;)V

    .line 323
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCenteredMessageArea()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 324
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortcutReleaseMessage(Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 327
    :cond_2
    return-void

    .line 300
    :cond_3
    sget v3, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_0

    .line 309
    :cond_4
    sget v3, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 314
    :cond_5
    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    aput-object v2, v3, v7

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setAnimatingViews([Landroid/view/View;)V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 345
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 346
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 347
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 144
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isSecure()Z

    move-result v1

    .line 145
    .local v1, "isSecure":Z
    sget v7, Lcom/android/keyguard/R$id;->sec_keyguard_cmas_text_view_secure:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSecure:Landroid/widget/TextView;

    .line 146
    sget v7, Lcom/android/keyguard/R$id;->sec_keyguard_cmas_text_view_swipe:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    .line 147
    sget v7, Lcom/android/keyguard/R$id;->sec_keyguard_cmas_text_view_not_normal:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewNotNormal:Landroid/widget/TextView;

    .line 149
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCenteredMessageArea()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 150
    sget v7, Lcom/android/keyguard/R$id;->textview_keyguard_release_message:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    .line 151
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 152
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :cond_0
    const/4 v5, 0x0

    .line 158
    .local v5, "vStub":Landroid/view/ViewStub;
    if-nez v1, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 160
    :cond_1
    sget v7, Lcom/android/keyguard/R$id;->stub_emergency_circle:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "vStub":Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .line 161
    .restart local v5    # "vStub":Landroid/view/ViewStub;
    if-eqz v5, :cond_2

    .line 162
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 164
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCenteredMessageArea()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 165
    sget v7, Lcom/android/keyguard/R$id;->stub_secure_message_area_usa:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "vStub":Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .line 169
    .restart local v5    # "vStub":Landroid/view/ViewStub;
    :goto_0
    if-eqz v5, :cond_3

    .line 170
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 180
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 181
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 182
    sget v7, Lcom/android/keyguard/R$id;->stub_gms_smart_lock_circle:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "vStub":Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .line 183
    .restart local v5    # "vStub":Landroid/view/ViewStub;
    if-eqz v5, :cond_4

    .line 184
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 186
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 187
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_trusted_shortcut_margin_phone_shortcut:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 189
    .local v4, "startPhoneShortcut":I
    invoke-virtual {v5}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 191
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 192
    invoke-virtual {v5, v2}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "startPhoneShortcut":I
    :cond_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 200
    sget v7, Lcom/android/keyguard/R$id;->stub_msim_carrier_text:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "vStub":Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .line 204
    .restart local v5    # "vStub":Landroid/view/ViewStub;
    :goto_2
    if-eqz v5, :cond_5

    .line 214
    :cond_5
    iget v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutMode:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    iget-boolean v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKidsModeEnabled:Z

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v7

    if-nez v7, :cond_d

    .line 216
    sget v7, Lcom/android/keyguard/R$id;->stub_camera_circle:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "vStub":Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .line 217
    .restart local v5    # "vStub":Landroid/view/ViewStub;
    if-eqz v5, :cond_6

    .line 218
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 220
    :cond_6
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v7, :cond_7

    .line 221
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_enable_camera_margin_bottom:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 223
    .local v3, "mMessageAreaPaddingBottom":I
    if-eqz v3, :cond_7

    .line 224
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 225
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 226
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "mMessageAreaPaddingBottom":I
    :cond_7
    :goto_3
    iget-boolean v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseBackUp:Z

    if-eqz v7, :cond_8

    .line 265
    sget v7, Lcom/android/keyguard/R$id;->stub_keyguard_emergency_carrier_area:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "vStub":Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .line 266
    .restart local v5    # "vStub":Landroid/view/ViewStub;
    if-eqz v5, :cond_8

    .line 267
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 271
    :cond_8
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 272
    sget v7, Lcom/android/keyguard/R$id;->stub_skt_carrier_text:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "vStub":Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .line 273
    .restart local v5    # "vStub":Landroid/view/ViewStub;
    if-eqz v5, :cond_9

    .line 274
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 278
    :cond_9
    sget v7, Lcom/android/keyguard/R$id;->camera_button:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCameraImageView:Landroid/view/View;

    .line 279
    sget v7, Lcom/android/keyguard/R$id;->emergency_button:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mPhoneImageView:Landroid/view/View;

    .line 280
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->initCMASText()V

    .line 282
    new-instance v7, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    .line 283
    return-void

    .line 167
    :cond_a
    sget v7, Lcom/android/keyguard/R$id;->stub_secure_message_area:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "vStub":Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .restart local v5    # "vStub":Landroid/view/ViewStub;
    goto/16 :goto_0

    .line 174
    :cond_b
    sget v7, Lcom/android/keyguard/R$id;->stub_message_area:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "vStub":Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .line 175
    .restart local v5    # "vStub":Landroid/view/ViewStub;
    if-eqz v5, :cond_3

    .line 176
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto/16 :goto_1

    .line 202
    :cond_c
    sget v7, Lcom/android/keyguard/R$id;->stub_carrier_text:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "vStub":Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .restart local v5    # "vStub":Landroid/view/ViewStub;
    goto/16 :goto_2

    .line 230
    :cond_d
    if-nez v1, :cond_e

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 231
    :cond_e
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$dimen;->securityview_overlay_message_area_min_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    .line 233
    iget v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    if-eqz v7, :cond_10

    .line 234
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCenteredMessageArea()Z

    move-result v7

    if-nez v7, :cond_f

    .line 235
    sget v7, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 236
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_f

    .line 237
    iget v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 238
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    .line 239
    .local v0, "density":F
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 240
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const v7, 0x800003

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 241
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    .end local v0    # "density":F
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_f
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    if-eqz v7, :cond_10

    .line 245
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    iget v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 246
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 247
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, 0x3

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 248
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_10
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v7, :cond_7

    .line 252
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_disable_camera_margin_bottom:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 254
    .restart local v3    # "mMessageAreaPaddingBottom":I
    if-eqz v3, :cond_7

    .line 255
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 256
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 257
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 351
    sget v2, Lcom/android/keyguard/R$id;->sec_keyguard_camera_circle:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .line 352
    .local v0, "camera":Lcom/android/keyguard/sec/SecKeyguardCircleView;
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 355
    :cond_0
    sget v2, Lcom/android/keyguard/R$id;->sec_keyguard_emergency_circle:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .line 356
    .local v1, "emCall":Lcom/android/keyguard/sec/SecKeyguardCircleView;
    if-eqz v1, :cond_1

    .line 357
    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 359
    :cond_1
    return-void
.end method

.method public updateCMASText()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 401
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSecure:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    const/4 v1, 0x0

    .line 405
    .local v1, "disableNoti":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_show_notifications"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    .line 411
    :goto_1
    const-string v4, "SecKeyguardBottomAreaView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableNoti = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 413
    const-string v4, "SecKeyguardBottomAreaView"

    const-string v5, "updateCMASText( )"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingCMAS()Z

    move-result v4

    if-nez v4, :cond_3

    .line 415
    const-string v3, "SecKeyguardBottomAreaView"

    const-string v4, "updateCMASText( setVisibility = GONE )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSecure:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 405
    goto :goto_1

    .line 407
    :catch_0
    move-exception v2

    .line 408
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "SecKeyguardBottomAreaView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCMASText() can not found setting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v1, 0x0

    goto :goto_1

    .line 418
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 419
    const-string v4, "SecKeyguardBottomAreaView"

    const-string v5, "updateCMASText( setVisibility = VISIBLE )"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v5, :cond_5

    .line 422
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSecure:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 423
    .local v0, "cmasTextLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 424
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSecure:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    .end local v0    # "cmasTextLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSecure:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 429
    :cond_6
    const-string v4, "SecKeyguardBottomAreaView"

    const-string v5, "updateCMASText( setVisibility = VISIBLE )"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 431
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 432
    .restart local v0    # "cmasTextLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 433
    const/16 v4, 0x11

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 434
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    .end local v0    # "cmasTextLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSecure:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextViewSwipe:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
