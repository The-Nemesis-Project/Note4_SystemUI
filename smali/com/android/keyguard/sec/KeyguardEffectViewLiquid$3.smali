.class Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$3;
.super Ljava/lang/Object;
.source "KeyguardEffectViewLiquid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Liquid_KeyguardEffectView"

    const-string v1, "BrilliantRing sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->access$102(Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->releaseSoundRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->access$202(Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
