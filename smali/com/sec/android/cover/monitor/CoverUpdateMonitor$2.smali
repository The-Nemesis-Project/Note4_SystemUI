.class Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;
.super Landroid/os/Handler;
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

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleTimeUpdate()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleBatteryUpdate(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleScreenTurnedOff()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 141
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleScreenTurnedOn()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 145
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleBatteryLow()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 149
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePowerConnectionUpdate(Z)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V

    goto :goto_0

    .line 153
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleLocaleChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 157
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleConfigurationChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 161
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$900(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    goto :goto_0

    .line 165
    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleDisasterViewUpdate(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePowerSavingModeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 173
    :pswitch_b
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleInsertSPen(Z)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V

    goto :goto_0

    .line 177
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleChangeCoverBackground()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 181
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleFloatingMsgShowed()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 185
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleFloatingMsgHided()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 189
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleVolumeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 193
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleUserSwitched(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;II)V

    goto/16 :goto_0

    .line 197
    :pswitch_11
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_0

    .line 201
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleEmergencyStateChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1900(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    .line 205
    :pswitch_13
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleContentChanged(Landroid/net/Uri;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 209
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleDateFormatChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    .line 213
    :pswitch_15
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePickupFestivalDay(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :pswitch_16
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePickupCommonDay()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    .line 221
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleHomeCityChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    .line 225
    :pswitch_18
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageAdded(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :pswitch_19
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageChanged(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    :pswitch_1a
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageRemoved(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :pswitch_1b
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleThemeFontUpdate(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_1
        :pswitch_17
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_1a
        :pswitch_18
        :pswitch_19
        :pswitch_1b
    .end packed-switch
.end method
