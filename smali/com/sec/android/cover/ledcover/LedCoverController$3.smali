.class Lcom/sec/android/cover/ledcover/LedCoverController$3;
.super Landroid/content/BroadcastReceiver;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/ledcover/LedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/ledcover/LedCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/ledcover/LedCoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BroadcastReceiver onReceive() : action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$600(Lcom/sec/android/cover/ledcover/LedCoverController;)Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    move-result-object v1

    sget-object v4, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-eq v1, v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmStartTime:J
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$700(Lcom/sec/android/cover/ledcover/LedCoverController;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmStartTime:J
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$700(Lcom/sec/android/cover/ledcover/LedCoverController;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    sget-object v4, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    # setter for: Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;
    invoke-static {v1, v4}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$602(Lcom/sec/android/cover/ledcover/LedCoverController;Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;)Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Reset alarm type to NONE"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    const/4 v4, 0x1

    # setter for: Lcom/sec/android/cover/ledcover/LedCoverController;->isScreenOn:Z
    invoke-static {v1, v4}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$802(Lcom/sec/android/cover/ledcover/LedCoverController;Z)Z

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-virtual {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->isCoverOpen()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/LedCoverController;->sendCommandByPriority()V
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$900(Lcom/sec/android/cover/ledcover/LedCoverController;)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    :cond_2
    :goto_0
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->isScreenOn:Z
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$800(Lcom/sec/android/cover/ledcover/LedCoverController;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-virtual {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendClockInformation()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/cover/ledcover/LedCoverController;->isScreenOn:Z
    invoke-static {v1, v4}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$802(Lcom/sec/android/cover/ledcover/LedCoverController;Z)Z

    goto :goto_0

    :cond_6
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-virtual {v1, p2}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLowBatteryInformation(Landroid/content/Intent;)V

    goto :goto_1

    :cond_7
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-virtual {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->isCoverOpen()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    sget-object v4, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->ALARM:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/ledcover/LedCoverController;->setAlarmType(Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-virtual {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendAlarmInformation()V

    goto :goto_1

    :cond_9
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$600(Lcom/sec/android/cover/ledcover/LedCoverController;)Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    move-result-object v1

    sget-object v4, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->ALARM:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-virtual {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->resetAlarmType()V

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$1000(Lcom/sec/android/cover/ledcover/LedCoverController;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    const/16 v4, 0xf

    const/4 v5, 0x0

    # invokes: Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V
    invoke-static {v1, v4, v5}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$000(Lcom/sec/android/cover/ledcover/LedCoverController;I[B)V

    goto :goto_1

    :cond_a
    const-string v1, "com.sec.android.app.clockpackage.timer.REMOTE_TIMER_FINISH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-virtual {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->isCoverOpen()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    sget-object v4, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->TIMER:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/ledcover/LedCoverController;->setAlarmType(Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-virtual {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendAlarmInformation()V

    goto/16 :goto_1

    :cond_b
    const-string v1, "com.android.calendar.SEND_ALERTINFO_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-virtual {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->isCoverOpen()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    sget-object v4, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->SPLANNER:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/ledcover/LedCoverController;->setAlarmType(Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-virtual {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendAlarmInformation()V

    goto/16 :goto_1

    :cond_c
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/LedCoverController;->processCallEvent(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$1100(Lcom/sec/android/cover/ledcover/LedCoverController;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_d
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$1200(Lcom/sec/android/cover/ledcover/LedCoverController;)I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_e

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$1300(Lcom/sec/android/cover/ledcover/LedCoverController;)Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    move-result-object v1

    sget-object v4, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    if-ne v1, v4, :cond_4

    :cond_e
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$600(Lcom/sec/android/cover/ledcover/LedCoverController;)Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    move-result-object v1

    sget-object v4, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$1000(Lcom/sec/android/cover/ledcover/LedCoverController;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-virtual {v1, p2}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendVolumeInformation(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_f
    const-string v1, "com.sec.android.phone.action.ACTION_CALL_ENDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$600(Lcom/sec/android/cover/ledcover/LedCoverController;)Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    move-result-object v1

    sget-object v4, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/LedCoverController;->sendEndCallInformation(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$1400(Lcom/sec/android/cover/ledcover/LedCoverController;Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
