.class Lcom/android/keyguard/sec/KeyguardEffectViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff(I)V

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingScreenOffTime:J
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$702(J)J

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewController;->mRegisterReceiver:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$800(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$900(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewController;->mRegisterReceiver:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$802(Lcom/android/keyguard/sec/KeyguardEffectViewController;Z)Z

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->screenTurnedOff()V

    .line 320
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewController;->chenckSlidingWallpaperByScreenon()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$600(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->screenTurnedOn()V

    .line 308
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 298
    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** onUserSwitching - userId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUserSwitching:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$402(Lcom/android/keyguard/sec/KeyguardEffectViewController;Z)Z

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleWallpaperTypeChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewController;->setWallpaperFileObserver()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    .line 303
    return-void
.end method
