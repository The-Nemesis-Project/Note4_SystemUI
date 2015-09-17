.class Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->reloadLockSound(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

.field final synthetic val$idLock:I

.field final synthetic val$idUnlock:I


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$9;II)V
    .locals 0

    .prologue
    .line 2644
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->val$idLock:I

    iput p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->val$idUnlock:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2647
    const-string v1, "KeyguardViewMediator"

    const-string v2, "reloadLockSound_id() - run"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->val$idLock:I

    .line 2649
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 2650
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 2651
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5302(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 2653
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2654
    const-string v1, "KeyguardViewMediator"

    const-string v2, "failed to load lock sound id "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :cond_1
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->val$idUnlock:I

    .line 2658
    if-eqz v0, :cond_2

    .line 2659
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 2660
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5502(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 2662
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$2;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v1

    if-nez v1, :cond_3

    .line 2663
    const-string v1, "KeyguardViewMediator"

    const-string v2, "failed to load unlock sound id "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_3
    return-void
.end method
