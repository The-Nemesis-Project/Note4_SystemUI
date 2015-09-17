.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I = 0x66ffffff

.field protected static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3


# instance fields
.field protected mBouncerEMA:Landroid/view/View;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field protected mBouncerKMA:Landroid/view/View;

.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field protected mEMAPress:Z

.field protected mEcaView:Landroid/view/View;

.field protected mEnableHaptics:Z

.field mImmAbs:Landroid/view/inputmethod/InputMethodManager;

.field private mKeyguardBouncerFrameView:Landroid/view/View;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEMAPress:Z

    .line 90
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 106
    const-string v0, "enterprise_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 111
    return-void
.end method


# virtual methods
.method public disableDevicePermanently()V
    .locals 3

    .prologue
    .line 417
    const-string v0, "PasswordUnlockScreen"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->device_disabled:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 420
    return-void
.end method

.method public doHapticKeyClick()V
    .locals 2

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->performHapticFeedback(II)Z

    .line 338
    :cond_0
    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public getFailedAttemptMessage(II)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "resid"    # I
    .param p2, "attempts"    # I

    .prologue
    const/4 v5, 0x1

    .line 425
    sget-boolean v2, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v2, :cond_2

    .line 426
    rsub-int/lit8 v1, p2, 0xa

    .line 427
    .local v1, "remaining":I
    if-ne v1, v5, :cond_0

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    .end local v1    # "remaining":I
    .local v0, "message":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 430
    .end local v0    # "message":Ljava/lang/CharSequence;
    .restart local v1    # "remaining":I
    :cond_0
    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    if-le v1, v5, :cond_1

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/CharSequence;
    goto :goto_0

    .line 435
    .end local v0    # "message":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/CharSequence;
    goto :goto_0

    .line 438
    .end local v0    # "message":Ljava/lang/CharSequence;
    .end local v1    # "remaining":I
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method protected abstract getPasswordText()Ljava/lang/String;
.end method

.method protected abstract getPasswordTextViewId()I
.end method

.method protected getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 183
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 274
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 278
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 295
    return-void
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showHideBouncerKeyguardMessageArea(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 350
    return-void
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 6

    .prologue
    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, "isDeviceDisableForMaxFailedAttempt":Z
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_0

    .line 401
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v2

    .line 402
    .local v2, "maxNumFailedAttemptForDisable":I
    const-string v3, "PasswordUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "max failed attempt for device disable :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-lez v2, :cond_0

    .line 405
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    .line 406
    .local v0, "curNumFailedAttempts":I
    const-string v3, "PasswordUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current failed attempt for device  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    .line 411
    .end local v0    # "curNumFailedAttempts":I
    .end local v2    # "maxNumFailedAttemptForDisable":I
    :cond_0
    :goto_0
    const-string v3, "PasswordUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return v1

    .line 407
    .restart local v0    # "curNumFailedAttempts":I
    .restart local v2    # "maxNumFailedAttemptForDisable":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 149
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 150
    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 151
    sget v2, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 152
    sget v2, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    .line 153
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    const v3, 0x66ffffff

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 155
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mImmAbs:Landroid/view/inputmethod/InputMethodManager;

    .line 159
    sget v2, Lcom/android/keyguard/R$id;->keyguard_message_area_bouncer:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    .line 160
    sget v2, Lcom/android/keyguard/R$id;->sec_emergency_button_area:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerEMA:Landroid/view/View;

    .line 162
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    sget v2, Lcom/android/keyguard/R$id;->sec_keyguard_emergency_circle:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .line 165
    .local v1, "secKeyguardCircleEmergencyView":Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->setPasswordEntryView(Landroid/view/View;)V

    .line 175
    .end local v1    # "secKeyguardCircleEmergencyView":Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
    :cond_1
    :goto_0
    return-void

    .line 170
    .restart local v1    # "secKeyguardCircleEmergencyView":Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
    :cond_2
    sget v2, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    .line 171
    .local v0, "emergencyButton":Lcom/android/keyguard/EmergencyButton;
    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/EmergencyButton;->setPasswordEntryView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 319
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 324
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 124
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    .line 127
    .local v2, "lDeviceDisableForMaxFailedAttempt":Z
    if-nez v2, :cond_1

    .line 128
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 129
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 137
    .end local v0    # "deadline":J
    :goto_0
    return-void

    .line 132
    .restart local v0    # "deadline":J
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    goto :goto_0

    .line 135
    .end local v0    # "deadline":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    goto :goto_0
.end method

.method protected abstract resetPasswordText(Z)V
.end method

.method protected abstract resetState()V
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 115
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    .line 120
    return-void
.end method

.method protected abstract setPasswordEntryEnabled(Z)V
.end method

.method protected shouldLockout(J)Z
    .locals 3
    .param p1, "deadline"    # J

    .prologue
    .line 141
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncerWithScaleAnimation(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showHideBouncerKeyguardMessageArea(Z)V

    .line 344
    return-void
.end method

.method public showHideBouncerKeyguardMessageArea(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 354
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    new-instance v3, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    :goto_1
    invoke-direct {v3, v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerEMA:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerEMA:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEMAPress:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEMAPress:Z

    .line 361
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 354
    goto :goto_0

    :cond_4
    move-object v0, p0

    .line 355
    goto :goto_1
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 18

    .prologue
    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "entry":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 190
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v15}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v15

    if-lez v15, :cond_0

    .line 192
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    .line 193
    .local v10, "mDPM":Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v13

    .line 194
    .local v13, "quality":I
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v12

    .line 195
    .local v12, "minLength":I
    invoke-virtual {v10, v13}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v11

    .line 197
    .local v11, "maxLength":I
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v8, "it":Landroid/content/Intent;
    const-string v15, "com.android.settings"

    const-string v16, "com.android.settings.ChooseLockPassword"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v15, "lockscreen.password_type"

    invoke-virtual {v8, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v15, "lockscreen.password_min"

    invoke-virtual {v8, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    const-string v15, "lockscreen.password_max"

    invoke-virtual {v8, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    const-string v15, "lockscreen.password_old"

    invoke-virtual {v8, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v15, "confirm_credentials"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    const/high16 v15, 0x10000000

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    const/high16 v15, 0x400000

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    const/high16 v15, 0x800000

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v15

    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-virtual {v15, v8, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 208
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 211
    .end local v8    # "it":Landroid/content/Intent;
    .end local v10    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v11    # "maxLength":I
    .end local v12    # "minLength":I
    .end local v13    # "quality":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v16, ""

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 212
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessageAreaVisiblity(Z)V

    .line 213
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mImmAbs:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 218
    new-instance v3, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v15}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 220
    .local v3, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v15

    if-nez v15, :cond_1

    .line 221
    invoke-virtual {v3, v6}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 226
    :cond_1
    new-instance v9, Landroid/lsm/LockedStatePasswordWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v15}, Landroid/lsm/LockedStatePasswordWrapper;-><init>(Landroid/content/Context;)V

    .line 228
    .local v9, "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    invoke-virtual {v9}, Landroid/lsm/LockedStatePasswordWrapper;->getCurrentUserID()I

    move-result v15

    if-nez v15, :cond_2

    .line 229
    invoke-virtual {v9, v6}, Landroid/lsm/LockedStatePasswordWrapper;->setPassword(Ljava/lang/String;)I

    .line 261
    .end local v3    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v9    # "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    :cond_2
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->clear()V

    .line 262
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 263
    return-void

    .line 234
    :cond_3
    const/4 v2, 0x0

    .line 235
    .local v2, "attempts":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 239
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v16

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v2

    .line 240
    rsub-int/lit8 v14, v2, 0xa

    .line 242
    .local v14, "remaining":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v15

    if-nez v15, :cond_6

    .line 243
    rem-int/lit8 v15, v2, 0x5

    if-nez v15, :cond_5

    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_4

    if-eqz v14, :cond_5

    .line 245
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v4

    .line 246
    .local v4, "deadline":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 248
    new-instance v7, Landroid/content/Intent;

    const-string v15, "android.intent.action.PATTERN_LOCK_FAIL"

    invoke-direct {v7, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 258
    .end local v4    # "deadline":J
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v14    # "remaining":I
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 252
    .restart local v14    # "remaining":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    goto :goto_1

    .line 256
    .end local v14    # "remaining":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v16

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v2

    goto :goto_1
.end method

.method protected verifyRecoveryPasswordAndUnlock()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 368
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "entry":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 370
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(Z)V

    .line 372
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 373
    .local v2, "mDPM":Landroid/app/admin/DevicePolicyManager;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    .line 374
    .local v5, "quality":I
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    .line 375
    .local v4, "minLength":I
    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    .line 376
    .local v3, "maxLength":I
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v1, "it":Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v6, "lockscreen.password_type"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string v6, "lockscreen.password_min"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const-string v6, "lockscreen.password_max"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    const-string v6, "lockscreen.password_old"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v6, "confirm_credentials"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    const/high16 v6, 0x400000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    const/high16 v6, 0x800000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 387
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 389
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 390
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 395
    .end local v1    # "it":Landroid/content/Intent;
    .end local v2    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "maxLength":I
    .end local v4    # "minLength":I
    .end local v5    # "quality":I
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->showWipeDialog(I)V

    goto :goto_0
.end method
