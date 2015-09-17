.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;
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
    .line 209
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEMAPress:Z

    .line 213
    return-void
.end method
