.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$dismissShade:Z

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ZZLandroid/content/Intent;Z)V
    .locals 0

    .prologue
    .line 4514
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->val$intent:Landroid/content/Intent;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->val$dismissShade:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4517
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 4539
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->val$dismissShade:Z

    if-eqz v0, :cond_0

    .line 4541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v0

    if-nez v0, :cond_1

    .line 4543
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 4548
    :cond_0
    :goto_0
    return v2

    .line 4545
    :cond_1
    const-string v0, "PhoneStatusBar"

    const-string v1, "cancels the panel collapse on startActivityDismissingKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
