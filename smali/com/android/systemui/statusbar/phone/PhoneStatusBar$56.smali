.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->quickConnectButtonOnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0

    .prologue
    .line 6775
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;->val$keyguardShowing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6778
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 6796
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v0

    if-nez v0, :cond_0

    .line 6798
    const-string v0, "PhoneStatusBar"

    const-string v1, "quickConnectButtonOnClick -> collapsePanels"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6799
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 6803
    :goto_0
    return v2

    .line 6801
    :cond_0
    const-string v0, "PhoneStatusBar"

    const-string v1, "cancels the panel collapse on mQConnectButtonListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
