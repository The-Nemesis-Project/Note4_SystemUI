.class Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "CoverUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v9, "CoverUpdateMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "received broadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "android.intent.action.TIME_TICK"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.TIME_SET"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12d

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12e

    new-instance v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    iget-object v12, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {v11, v12, p2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/content/Intent;)V

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x130

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x131

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    const-string v9, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x132

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    const-string v9, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x133

    const-string v11, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x134

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_9
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x135

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_a
    const-string v9, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x136

    new-instance v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    iget-object v12, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {v11, v12, p2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/content/Intent;)V

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_b
    const-string v9, "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "title"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x137

    invoke-virtual {v9, v10, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_c
    const-string v9, "android.settings.POWERSAVINGMODE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "android.settings.POWERSAVING_MODE_SWITCH_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_d
    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x138

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_e
    const-string v9, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "penInsert"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x139

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_f
    const-string v9, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "com.sec.android.sviewcover.CHANGE_MINI_COVER_BACKGROUND"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_10
    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x13a

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_11
    const-string v9, "com.bst.floatingmsg.quicktalkshow"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x13b

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_12
    const-string v9, "com.bst.floatingmsg.quicktalkhide"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x13c

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_13
    const-string v9, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x13d

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_14
    const-string v9, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const-string v9, "android.intent.extra.user_handle"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v9, "old_user_id"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x13e

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v4, v3, Landroid/os/Message;->arg1:I

    iput v5, v3, Landroid/os/Message;->arg2:I

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_15
    const-string v9, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x140

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_16
    const-string v9, "clock.date_format_changed"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x142

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_17
    const-string v9, "com.bst.action.PICKUP_FESTIVAL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    const-string v9, "festivalString"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x143

    invoke-virtual {v9, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_18
    const-string v9, "com.bst.action.PICKUP_COMMON"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x144

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_19
    const-string v9, "dualclock.homecity_timezone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12f

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_1a
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x145

    invoke-virtual {v9, v10, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1b
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x146

    invoke-virtual {v9, v10, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1c
    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x147

    invoke-virtual {v9, v10, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1d
    const-string v9, "FONT_THEME_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "clock"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x148

    invoke-virtual {v9, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
