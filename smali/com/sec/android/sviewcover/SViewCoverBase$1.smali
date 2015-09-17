.class Lcom/sec/android/sviewcover/SViewCoverBase$1;
.super Landroid/os/Handler;
.source "SViewCoverBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field state:Lcom/samsung/android/cover/CoverState;

.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverBase;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverBase;)V
    .locals 1

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : Cover message arrived : msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 134
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage : Unknown message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$000(Lcom/sec/android/sviewcover/SViewCoverBase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    .line 69
    invoke-static {}, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->getInstance()Lcom/sec/android/cover/manager/CoverEventHistoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->add(Lcom/samsung/android/cover/CoverState;)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$000(Lcom/sec/android/sviewcover/SViewCoverBase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->notifyCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/BaseCoverController;->onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$102(Lcom/sec/android/sviewcover/SViewCoverBase;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 124
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : Unknown cover type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$000(Lcom/sec/android/sviewcover/SViewCoverBase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 129
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/BaseCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_0

    .line 83
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getModel()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 84
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage : Current cover model is not supported by CoverService. This cover event will be ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$000(Lcom/sec/android/sviewcover/SViewCoverBase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto :goto_1

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverController;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$000(Lcom/sec/android/sviewcover/SViewCoverBase;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mRootView:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$200(Lcom/sec/android/sviewcover/SViewCoverBase;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverController;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    # setter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$102(Lcom/sec/android/sviewcover/SViewCoverBase;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    .line 92
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_1

    .line 97
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    if-nez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    new-instance v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverController;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$000(Lcom/sec/android/sviewcover/SViewCoverBase;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mRootView:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$200(Lcom/sec/android/sviewcover/SViewCoverBase;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverController;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    # setter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$102(Lcom/sec/android/sviewcover/SViewCoverBase;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    .line 99
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_1

    .line 104
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    new-instance v1, Lcom/sec/android/cover/ledcover/LedCoverController;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$000(Lcom/sec/android/sviewcover/SViewCoverBase;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mRootView:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$200(Lcom/sec/android/sviewcover/SViewCoverBase;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/cover/ledcover/LedCoverController;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    # setter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$102(Lcom/sec/android/sviewcover/SViewCoverBase;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    .line 106
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_1

    .line 111
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    new-instance v1, Lcom/sec/android/cover/custom/MontblancCoverController;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$000(Lcom/sec/android/sviewcover/SViewCoverBase;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/cover/custom/MontblancCoverController;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$102(Lcom/sec/android/sviewcover/SViewCoverBase;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    .line 113
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_1

    .line 119
    :sswitch_4
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : Cover type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$000(Lcom/sec/android/sviewcover/SViewCoverBase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto/16 :goto_1

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method
