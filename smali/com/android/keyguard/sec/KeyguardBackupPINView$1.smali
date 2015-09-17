.class Lcom/android/keyguard/sec/KeyguardBackupPINView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBackupPINView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardBackupPINView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardBackupPINView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCMASChanged()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "KeyguardBackupPINView"

    const-string v1, "onCMASChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->updateCMASText()V

    .line 85
    return-void
.end method
