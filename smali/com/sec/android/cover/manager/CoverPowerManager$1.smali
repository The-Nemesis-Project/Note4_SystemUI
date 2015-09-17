.class Lcom/sec/android/cover/manager/CoverPowerManager$1;
.super Landroid/os/Handler;
.source "CoverPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverPowerManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/CoverPowerManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager$1;->this$0:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager$1;->this$0:Lcom/sec/android/cover/manager/CoverPowerManager;

    # getter for: Lcom/sec/android/cover/manager/CoverPowerManager;->mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;
    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->access$000(Lcom/sec/android/cover/manager/CoverPowerManager;)Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager$1;->this$0:Lcom/sec/android/cover/manager/CoverPowerManager;

    # getter for: Lcom/sec/android/cover/manager/CoverPowerManager;->mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;
    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->access$000(Lcom/sec/android/cover/manager/CoverPowerManager;)Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;->onScreenOffTimerExpired()V

    goto :goto_0

    :cond_0
    const-string v0, "CoverPowerManager"

    const-string v1, "handleMessage : Timer handler not registered!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
