.class Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$4;
.super Landroid/telephony/PhoneStateListener;
.source "SecKeyguardEmergencyDummyCircle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    const-string v2, "SecKeyguardEmergencyDummyCircle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceStateChanged() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$900(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$1000(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    # setter for: Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I
    invoke-static {v2, v3}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$502(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;I)I

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v2, v1, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$100(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-void
.end method
