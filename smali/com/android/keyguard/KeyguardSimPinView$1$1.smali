.class Lcom/android/keyguard/KeyguardSimPinView$1$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView$1;->onSimCheckResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$1;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$attemptsRemaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$result:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSIMToastEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x109010a

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const v6, 0x1020379

    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$string;->keyguard_pin_accepted:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Landroid/widget/Toast;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPinView;->access$100(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v5, 0x0

    # setter for: Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardSimPinView;->access$302(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-void

    :cond_2
    iget v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$result:I

    if-ne v4, v7, :cond_4

    iget v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$attemptsRemaining:I

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->maxPinRetry:I
    invoke-static {}, Lcom/android/keyguard/KeyguardSimPinView;->access$200()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v5, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$attemptsRemaining:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardSimPinView;->getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    :goto_1
    const-string v4, "KeyguardSimPinView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$result:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " attemptsRemaining="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$attemptsRemaining:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v4, v7}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(Z)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$attemptsRemaining:I

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic:I

    invoke-interface {v4, v5, v6, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;IZ)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_password_pin_failed:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic:I

    invoke-interface {v4, v5, v6, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;IZ)V

    goto :goto_1
.end method
