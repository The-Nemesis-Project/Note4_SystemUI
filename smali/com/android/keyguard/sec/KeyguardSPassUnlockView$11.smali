.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSPassUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 3
    .param p1, "phoneState"    # I

    .prologue
    .line 1310
    const-string v0, "KeyguardSPassView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsTProject:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    invoke-static {}, Lcom/android/keyguard/sec/SecPopupManager;->dismissHelpOverlayDialog()V

    .line 1354
    invoke-static {}, Lcom/android/keyguard/sec/SecPopupManager;->dismissPopupDialog()V

    .line 1356
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 1329
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsTProject:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateOrientation()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    .line 1332
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentOrientation:I
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->help_image_05:I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_spass_help_overlay_guide_text:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0xb4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardSPassHelpOverlayGuide"

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mPopupDismissCallback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecPopupManager;->showOverlayHelp(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$layout;->sec_spass_guide_popup:I

    const-string v2, "KeyguardSPassPopupGuideInt"

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mPopupDismissCallback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SecPopupManager;->showPopupDialog(Landroid/content/Context;ILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1324
    const-string v0, "KeyguardSPassView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitchComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1316
    const-string v0, "KeyguardSPassView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitched("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stop()Z

    .line 1320
    return-void
.end method
