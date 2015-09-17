.class Lcom/android/keyguard/sec/SecKeyguardClockView$5;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 409
    if-eqz p1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$600(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    .line 412
    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$600(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    .line 417
    return-void
.end method
