.class Lcom/android/keyguard/sec/SecKeyguardClockDualView$3;
.super Landroid/database/ContentObserver;
.source "SecKeyguardClockDualView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardClockDualView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    const/16 v3, 0x66

    const/16 v2, 0x65

    const/16 v1, 0x64

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "lock_screen_date_and_year"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const-string v0, "lock_screen_show_clock"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    const-string v0, "lock_screen_clock_size"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "time_12_24"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
