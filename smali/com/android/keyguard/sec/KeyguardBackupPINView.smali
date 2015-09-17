.class public Lcom/android/keyguard/sec/KeyguardBackupPINView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardBackupPINView.java"


# static fields
.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockGeneric"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final MAX_LENGTH_ENTRY:I = 0x10

.field private static final TAG:Ljava/lang/String; = "KeyguardBackupPINView"


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

.field private mCMASText:Landroid/widget/TextView;

.field private mDivider:Landroid/view/View;

.field private mIsUnlockSuccess:Z

.field private mKeyguardBouncerFrame:Landroid/view/ViewGroup;

.field private mRow0:Landroid/view/ViewGroup;

.field private mRow1:Landroid/view/ViewGroup;

.field private mRow2:Landroid/view/ViewGroup;

.field private mRow3:Landroid/view/ViewGroup;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v0, Lcom/android/keyguard/sec/KeyguardBackupPINView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView$1;-><init>(Lcom/android/keyguard/sec/KeyguardBackupPINView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 94
    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils;

    invoke-direct {v0, p1}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    .line 95
    const/16 v0, 0x10

    invoke-super {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setMaxLength(I)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardBackupPINView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardBackupPINView;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->enableClipping(Z)V

    return-void
.end method

.method private checkBackupPin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkSignatureBackupPin(Ljava/lang/String;)Z

    move-result v0

    .line 287
    .local v0, "isCheckSuccess":Z
    :goto_0
    return v0

    .line 285
    .end local v0    # "isCheckSuccess":Z
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkBackupPin(Ljava/lang/String;)Z

    move-result v0

    .restart local v0    # "isCheckSuccess":Z
    goto :goto_0
.end method

.method private enableClipping(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow1:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow2:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow3:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setClipChildren(Z)V

    .line 202
    return-void
.end method

.method private initCMASText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 295
    const-string v0, "sgh"

    const-string v1, "mCMASText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCMASText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    const-string v0, "KeyguardBackupPINView"

    const-string v1, "[SPR] Presidential Alert!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCMASText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_spr:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCMASText:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_lockscreen_cmas:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 308
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->updateCMASText()V

    goto :goto_0

    .line 304
    :cond_1
    const-string v0, "KeyguardBackupPINView"

    const-string v1, "[No SPR] Emergency Alert!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCMASText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_vzw:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 310
    :cond_2
    const-string v0, "KeyguardBackupPINView"

    const-string v1, "[No USA model] disable CMAS Text!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCMASText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private isCenteredMessageArea()Z
    .locals 1

    .prologue
    .line 291
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 116
    sget v0, Lcom/android/keyguard/R$id;->pinEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 1
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->handleAttemptLockout(J)V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setEnableKeyPad(Z)V

    .line 112
    return-void
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 265
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v0, :cond_0

    .line 271
    const-string v0, "KeyguardBackupPINView"

    const-string v1, "mCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mIsUnlockSuccess:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 277
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 123
    sget v2, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    .line 124
    sget v2, Lcom/android/keyguard/R$id;->row0:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow0:Landroid/view/ViewGroup;

    .line 125
    sget v2, Lcom/android/keyguard/R$id;->row1:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow1:Landroid/view/ViewGroup;

    .line 126
    sget v2, Lcom/android/keyguard/R$id;->row2:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow2:Landroid/view/ViewGroup;

    .line 127
    sget v2, Lcom/android/keyguard/R$id;->row3:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow3:Landroid/view/ViewGroup;

    .line 128
    sget v2, Lcom/android/keyguard/R$id;->divider:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mDivider:Landroid/view/View;

    .line 129
    sget v2, Lcom/android/keyguard/R$id;->sec_keyguard_cmas_text_view:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCMASText:Landroid/widget/TextView;

    .line 132
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mIsUnlockSuccess:Z

    .line 135
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isCenteredMessageArea()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    sget v2, Lcom/android/keyguard/R$id;->keyguard_message_area_backup_pin_usa:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, "messageAreaUSA":Landroid/view/View;
    sget v2, Lcom/android/keyguard/R$id;->keyguard_message_area_backup:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "messageAreaECA":Landroid/view/View;
    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v2, v1}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 139
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .end local v0    # "messageAreaECA":Landroid/view/View;
    .end local v1    # "messageAreaUSA":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->initCMASText()V

    .line 144
    return-void
.end method

.method protected resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 99
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 100
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->faceunlock_multiple_failures:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setEnableKeyPad(Z)V

    .line 106
    return-void

    .line 102
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_spass_backup_pin_introductions:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public startAppearAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 157
    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->enableClipping(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/keyguard/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setTranslationY(F)V

    .line 159
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    const/4 v1, 0x6

    new-array v1, v1, [[Landroid/view/View;

    new-array v2, v8, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow0:Landroid/view/ViewGroup;

    aput-object v3, v2, v5

    aput-object v9, v2, v6

    aput-object v9, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key1:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key2:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/android/keyguard/R$id;->key3:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key4:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key5:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/android/keyguard/R$id;->key6:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    new-array v2, v8, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key7:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key8:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/android/keyguard/R$id;->key9:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v8

    const/4 v2, 0x4

    new-array v3, v8, [Landroid/view/View;

    aput-object v9, v3, v5

    sget v4, Lcom/android/keyguard/R$id;->key0:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v6

    sget v4, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v8, [Landroid/view/View;

    aput-object v9, v3, v5

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mEcaView:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v9, v3, v7

    aput-object v3, v1, v2

    new-instance v2, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;-><init>(Lcom/android/keyguard/sec/KeyguardBackupPINView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/AppearAnimationUtils;->startAppearAnimation([[Landroid/view/View;Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public updateCMASText()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 316
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCMASText:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    const/4 v0, 0x0

    .line 320
    .local v0, "disableNoti":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_show_notifications"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 326
    :goto_1
    const-string v3, "KeyguardBackupPINView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableNoti = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 328
    const-string v3, "KeyguardBackupPINView"

    const-string v4, "updateCMASText( )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingCMAS()Z

    move-result v3

    if-nez v3, :cond_3

    .line 330
    const-string v2, "KeyguardBackupPINView"

    const-string v3, "updateCMASText( setVisibility = GONE )"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCMASText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 320
    goto :goto_1

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "KeyguardBackupPINView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCMASText() can not found setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x0

    goto :goto_1

    .line 333
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    const-string v3, "KeyguardBackupPINView"

    const-string v4, "updateCMASText( setVisibility = VISIBLE )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCMASText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 206
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getPasswordText()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "entry":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->checkBackupPin(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 208
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 209
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 210
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 211
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/LockPatternUtils;->setSmartUnlockEnabled(Z)V

    .line 213
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v7

    if-nez v7, :cond_0

    .line 214
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 221
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_0
    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mIsUnlockSuccess:Z

    .line 222
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v7, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 225
    new-instance v1, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 227
    .local v1, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v7

    if-nez v7, :cond_1

    .line 228
    invoke-virtual {v1, v4}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 258
    .end local v1    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_1
    :goto_0
    invoke-virtual {p0, v10}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->resetPasswordText(Z)V

    .line 259
    return-void

    .line 231
    :cond_2
    const/4 v0, 0x0

    .line 232
    .local v0, "attempts":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_6

    .line 235
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v7, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 236
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8, v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    .line 237
    rsub-int/lit8 v6, v0, 0xa

    .line 239
    .local v6, "remaining":I
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v7

    if-nez v7, :cond_5

    .line 240
    rem-int/lit8 v7, v0, 0x5

    if-nez v7, :cond_4

    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v7, :cond_3

    if-eqz v6, :cond_4

    .line 242
    :cond_3
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v2

    .line 243
    .local v2, "deadline":J
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->handleAttemptLockout(J)V

    .line 245
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.PATTERN_LOCK_FAIL"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    .end local v2    # "deadline":J
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "remaining":I
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getWrongPasswordStringId()I

    move-result v8

    invoke-virtual {p0, v8, v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v7, v8, v10}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 249
    .restart local v6    # "remaining":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->disableDevicePermanently()V

    goto :goto_1

    .line 253
    .end local v6    # "remaining":I
    :cond_6
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8, v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    goto :goto_1
.end method
