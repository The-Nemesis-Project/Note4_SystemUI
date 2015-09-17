.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;
.super Landroid/os/CountDownTimer;
.source "KeyguardSPassUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1549
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mState:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1562
    :goto_0
    return-void

    .line 1551
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v1

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1802(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)I

    .line 1553
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1554
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1555
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1902(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 1556
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsPermLocked:Z
    invoke-static {v0, v3}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2102(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Z)Z

    .line 1560
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    const/4 v1, 0x1

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startAnimation(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)V

    .line 1561
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->reset()V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v4, 0x1

    .line 1535
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 1536
    .local v0, "secondsRemaining":I
    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1500()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1537
    if-ne v0, v4, :cond_1

    .line 1538
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempt_countdown:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->remainText:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1602(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Ljava/lang/String;)Ljava/lang/String;

    .line 1543
    :goto_0
    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1500()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->remainText:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1600(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1545
    :cond_0
    return-void

    .line 1540
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->remainText:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1602(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
