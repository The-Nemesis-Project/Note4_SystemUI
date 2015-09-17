.class Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardClockDualView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClockDualView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockThemeTypeface:Landroid/graphics/Typeface;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$402(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockStyle()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockThemeTypeface:Landroid/graphics/Typeface;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$402(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mBatteryLevel:I
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$302(Lcom/android/keyguard/sec/SecKeyguardClockDualView;I)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockContentDesciption()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V

    return-void
.end method
