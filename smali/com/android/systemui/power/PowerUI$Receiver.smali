.class final Lcom/android/systemui/power/PowerUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p2, "x1"    # Lcom/android/systemui/power/PowerUI$1;

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    return-void
.end method

.method private updateSaverMode()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/systemui/power/PowerUI;->access$200(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    # invokes: Lcom/android/systemui/power/PowerUI;->setSaverMode(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;Z)V

    .line 374
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 349
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v1, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v1, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v1, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v1, "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v1, "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v1, "android.intent.action.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v1, "LOW_BATTERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v1, "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_WAKE_UP_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v1, v1, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$100(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI$Receiver;->updateSaverMode()V

    .line 370
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v18

    .line 381
    .local v18, "oldBatteryLevel":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "level"

    const/16 v6, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$402(Lcom/android/systemui/power/PowerUI;I)I

    .line 382
    sget v21, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 383
    .local v21, "oldBatteryStatus":I
    const-string v3, "status"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v25

    .line 386
    .local v25, "oldPlugType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "plugged"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$502(Lcom/android/systemui/power/PowerUI;I)I

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v24

    .line 388
    .local v24, "oldInvalidCharger":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "invalid_charger"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$602(Lcom/android/systemui/power/PowerUI;I)I

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v16, v0

    .line 392
    .local v16, "oldBatteryHealth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v19, v0

    .line 393
    .local v19, "oldBatteryOnline":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v15, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 394
    .local v15, "oldBatteryChargetype":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    move/from16 v17, v0

    .line 396
    .local v17, "oldBatteryHighVoltageCharger":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "health"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "online"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "charge_type"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "current_avg"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "temperature"

    const/16 v6, 0x14

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryTemperature:I

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "hv_charger"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v31, 0x1

    .line 406
    .local v31, "plugged":Z
    :goto_0
    if-eqz v25, :cond_3

    const/16 v26, 0x1

    .line 408
    .local v26, "oldPlugged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v18

    # invokes: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v3, v0}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;I)I

    move-result v22

    .line 409
    .local v22, "oldBucket":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    # invokes: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;I)I

    move-result v5

    .line 411
    .local v5, "bucket":I
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 412
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buckets   ....."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$800(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " .. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " .. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "level          "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status         "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "health         "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugType       "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalidCharger "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bucket         "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugged        "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "online  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chargeType  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$1000(Lcom/android/systemui/power/PowerUI;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v8, v8, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v9, v9, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    invoke-interface/range {v3 .. v11}, Lcom/android/systemui/power/PowerUI$WarningsUI;->update(IIJIIII)V

    .line 428
    if-nez v24, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 429
    const-string v3, "PowerUI"

    const-string v4, "showing invalid charger warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showInvalidChargerWarning()V

    .line 922
    .end local v5    # "bucket":I
    .end local v15    # "oldBatteryChargetype":I
    .end local v16    # "oldBatteryHealth":I
    .end local v17    # "oldBatteryHighVoltageCharger":Z
    .end local v18    # "oldBatteryLevel":I
    .end local v19    # "oldBatteryOnline":I
    .end local v21    # "oldBatteryStatus":I
    .end local v22    # "oldBucket":I
    .end local v24    # "oldInvalidCharger":I
    .end local v25    # "oldPlugType":I
    .end local v26    # "oldPlugged":Z
    .end local v31    # "plugged":Z
    :cond_1
    :goto_2
    return-void

    .line 405
    .restart local v15    # "oldBatteryChargetype":I
    .restart local v16    # "oldBatteryHealth":I
    .restart local v17    # "oldBatteryHighVoltageCharger":Z
    .restart local v18    # "oldBatteryLevel":I
    .restart local v19    # "oldBatteryOnline":I
    .restart local v21    # "oldBatteryStatus":I
    .restart local v24    # "oldInvalidCharger":I
    .restart local v25    # "oldPlugType":I
    :cond_2
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 406
    .restart local v31    # "plugged":Z
    :cond_3
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 432
    .restart local v5    # "bucket":I
    .restart local v22    # "oldBucket":I
    .restart local v26    # "oldPlugged":Z
    :cond_4
    if-eqz v24, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-nez v3, :cond_24

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissInvalidChargerWarning()V

    .line 439
    :cond_5
    if-nez v31, :cond_26

    move/from16 v0, v22

    if-lt v5, v0, :cond_6

    if-eqz v26, :cond_26

    :cond_6
    sget v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_26

    if-gez v5, :cond_26

    .line 444
    move/from16 v0, v22

    if-ne v5, v0, :cond_7

    if-eqz v26, :cond_25

    :cond_7
    const/16 v30, 0x1

    .line 445
    .local v30, "playSound":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    move/from16 v0, v30

    invoke-interface {v3, v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    .line 456
    .end local v30    # "playSound":Z
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v0, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    move/from16 v23, v0

    .line 457
    .local v23, "oldCable":Z
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v3, v4, :cond_2b

    .line 458
    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_2a

    .line 459
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-eq v3, v4, :cond_9

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-ne v3, v4, :cond_29

    .line 460
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    .line 461
    const-string v3, "PowerUI"

    const-string v4, "cable connects while wireless charging"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    move/from16 v0, v23

    if-ne v0, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 481
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    if-eqz v3, :cond_2e

    .line 482
    new-instance v12, Landroid/content/Intent;

    const-string v3, "com.android.systemui.power.action.ACTION_CABLE_CONNECTED"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v12, "cableIntent":Landroid/content/Intent;
    const-string v3, "power_sharing"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 485
    const-string v3, "power_sharing"

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 491
    :cond_b
    :goto_6
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v3, :cond_c

    .line 492
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cable  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v6, v6, Lcom/android/systemui/power/PowerUI;->mCable:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending cableIntent : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1202(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 503
    .end local v12    # "cableIntent":Landroid/content/Intent;
    :cond_d
    :goto_7
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-nez v3, :cond_e

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "INTENT_DEBUG"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 507
    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v4, v4, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "LOW_BATTERY_DUMP"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_12

    .line 508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    sub-int v3, v18, v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    sub-int v3, v3, v18

    const/16 v4, 0xa

    if-lt v3, v4, :cond_10

    :cond_f
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_11

    :cond_10
    move/from16 v0, v22

    if-ge v5, v0, :cond_12

    const/4 v3, -0x2

    if-ne v3, v5, :cond_12

    .line 513
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 514
    const-string v3, "PowerUI"

    const-string v4, "Low battery dump"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.systemui.power.action.LOW_BATTERY_DUMP"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 520
    :cond_12
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->ATT:Z

    if-eqz v3, :cond_17

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isLowLevel"

    const/4 v6, 0x2

    const/4 v7, -0x2

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 522
    .local v14, "isBatteryLowLevel":I
    const/16 v3, 0x14

    move/from16 v0, v18

    if-gt v0, v3, :cond_13

    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_16

    :cond_14
    const/4 v3, 0x1

    if-eq v14, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoEnableBroadcast:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1400(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 526
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isLowLevel"

    const/4 v6, 0x1

    const/4 v7, -0x2

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 527
    new-instance v33, Landroid/content/Intent;

    const-string v3, "android.settings.POWERSAVING_AUTO_ENABLE"

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v33, "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 530
    const-string v3, "PowerUI"

    const-string v4, "the battery level goes below the threshold of Power saving mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoEnableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1402(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 552
    .end local v14    # "isBatteryLowLevel":I
    .end local v33    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_17
    :goto_8
    sget v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v0, v21

    if-eq v0, v3, :cond_18

    .line 553
    const/4 v3, 0x5

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_37

    .line 554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    .line 562
    :cond_18
    :goto_9
    const/4 v3, 0x4

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_3b

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_19

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_19

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_3b

    .line 566
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_3a

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/PowerManager;

    .line 568
    .local v32, "powerManager":Landroid/os/PowerManager;
    if-nez v32, :cond_38

    .line 569
    const-string v3, "PowerUI"

    const-string v4, "onReceive : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .end local v32    # "powerManager":Landroid/os/PowerManager;
    :cond_1a
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1600(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x2

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_1b

    .line 636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingInterruptionWarning()V

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1602(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 640
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_1d

    .line 641
    const/4 v3, 0x5

    move/from16 v0, v16

    if-eq v3, v0, :cond_1c

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_1c

    const/16 v3, 0x9

    move/from16 v0, v16

    if-eq v3, v0, :cond_1c

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_1d

    .line 645
    :cond_1c
    const-string v3, "PowerUI"

    const-string v4, "Overvoltage/Undervoltage (recovered) so turn on the screen."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->turnOnScreen()V

    .line 650
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move/from16 v0, v25

    if-eq v0, v3, :cond_20

    .line 651
    if-eqz v25, :cond_1e

    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v3, v0, :cond_20

    .line 652
    :cond_1e
    if-nez v25, :cond_20

    .line 653
    const/4 v3, 0x4

    move/from16 v0, v21

    if-eq v3, v0, :cond_43

    const/4 v3, 0x4

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_43

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_1f

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_1f

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_1f

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_43

    .line 659
    :cond_1f
    const-string v3, "PowerUI"

    const-string v4, "charging interruption so don\'t play charger connection sound"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_20
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v0, v19

    if-eq v0, v3, :cond_22

    .line 670
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_44

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_44

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessChargingNotice()V

    .line 691
    :cond_21
    :goto_c
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_22

    .line 692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v3, :cond_4a

    .line 693
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v3, v4, :cond_49

    .line 694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03e7

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 698
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerWarning()V

    .line 758
    :cond_22
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    move/from16 v0, v17

    if-eq v0, v3, :cond_23

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    if-eqz v3, :cond_4b

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showHighVoltageChargerNotice()V

    .line 769
    :cond_23
    :goto_f
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_1

    .line 770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    if-eq v15, v3, :cond_1

    .line 771
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    if-ne v3, v4, :cond_4d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eqz v3, :cond_4d

    .line 773
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v3, v4, :cond_4c

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03ee

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 778
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showSlowChargerWarning()V

    goto/16 :goto_2

    .line 434
    .end local v23    # "oldCable":Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isInvalidChargerWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_2

    .line 444
    :cond_25
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 446
    :cond_26
    if-nez v31, :cond_27

    move/from16 v0, v22

    if-le v5, v0, :cond_28

    if-lez v5, :cond_28

    .line 447
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mForceTest:Z

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto/16 :goto_4

    .line 449
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isCocktailLowBatteryShowing()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move/from16 v0, v18

    if-eq v0, v3, :cond_8

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateCocktailLowBatteryWarning(Z)V

    goto/16 :goto_4

    .line 463
    .restart local v23    # "oldCable":Z
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_5

    .line 466
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_5

    .line 470
    :cond_2b
    const-string v3, "power_sharing"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_5

    .line 472
    :cond_2c
    const-string v3, "pogo_plugged"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_5

    .line 475
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_5

    .line 489
    :cond_2e
    new-instance v12, Landroid/content/Intent;

    const-string v3, "com.android.systemui.power.action.ACTION_CABLE_DISCONNECTED"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v12    # "cableIntent":Landroid/content/Intent;
    goto/16 :goto_6

    .line 499
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1202(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_7

    .line 533
    .end local v12    # "cableIntent":Landroid/content/Intent;
    .restart local v14    # "isBatteryLowLevel":I
    .restart local v33    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoEnableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1402(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_8

    .line 535
    .end local v33    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_31
    const/16 v3, 0x14

    move/from16 v0, v18

    if-le v0, v3, :cond_32

    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_33

    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_35

    :cond_33
    if-eqz v14, :cond_34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_35

    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoDisableBroadcast:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 539
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isLowLevel"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 540
    new-instance v33, Landroid/content/Intent;

    const-string v3, "android.settings.POWERSAVING_AUTO_ENABLE"

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .restart local v33    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 543
    const-string v3, "PowerUI"

    const-string v4, "the battery level goes over the threshold of Power saving mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoDisableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1502(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_8

    .line 546
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoDisableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1502(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_8

    .line 555
    .end local v14    # "isBatteryLowLevel":I
    .end local v33    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_37
    const/4 v3, 0x5

    move/from16 v0, v21

    if-ne v3, v0, :cond_18

    .line 556
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    goto/16 :goto_9

    .line 571
    .restart local v32    # "powerManager":Landroid/os/PowerManager;
    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const v4, 0x10000006

    const-string v6, "PowerUI"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v3, :cond_39

    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 578
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 580
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_1a

    .line 581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_a

    .line 576
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_11

    .line 584
    .end local v32    # "powerManager":Landroid/os/PowerManager;
    :cond_3a
    const/16 v3, 0x8

    move/from16 v0, v16

    if-ne v3, v0, :cond_1a

    .line 585
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_1a

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_a

    .line 589
    :cond_3b
    const/4 v3, 0x4

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_40

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_40

    .line 591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_3e

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/PowerManager;

    .line 593
    .restart local v32    # "powerManager":Landroid/os/PowerManager;
    if-nez v32, :cond_3c

    .line 594
    const-string v3, "PowerUI"

    const-string v4, "onReceive : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 596
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const v4, 0x10000006

    const-string v6, "PowerUI"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v3, :cond_3d

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 603
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 605
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_1a

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_a

    .line 601
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_12

    .line 609
    .end local v32    # "powerManager":Landroid/os/PowerManager;
    :cond_3e
    const/4 v3, 0x3

    move/from16 v0, v16

    if-ne v3, v0, :cond_1a

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v3, :cond_3f

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 614
    :cond_3f
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_1a

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_a

    .line 618
    :cond_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_1a

    .line 619
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-ne v3, v4, :cond_42

    const/4 v3, 0x3

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_42

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_42

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1602(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 627
    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-eqz v3, :cond_41

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 630
    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_a

    .line 623
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingInterruptionWarning()V

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1602(Lcom/android/systemui/power/PowerUI;Z)Z

    goto :goto_13

    .line 661
    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->playSound(I)V

    goto/16 :goto_b

    .line 673
    :cond_44
    const/16 v3, 0xa

    move/from16 v0, v19

    if-ne v3, v0, :cond_46

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v3, v4, :cond_45

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_46

    .line 675
    :cond_45
    const-string v3, "PowerUI"

    const-string v4, "switch from wireless to cable"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWirelessChargingNotice()V

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03e2

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->turnOnScreen()V

    goto/16 :goto_c

    .line 679
    :cond_46
    const/4 v3, 0x3

    move/from16 v0, v19

    if-eq v3, v0, :cond_47

    const/4 v3, 0x4

    move/from16 v0, v19

    if-ne v3, v0, :cond_48

    :cond_47
    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_48

    .line 681
    const-string v3, "PowerUI"

    const-string v4, "switch from cable to wireless"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03e3

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->turnOnScreen()V

    goto/16 :goto_c

    .line 684
    :cond_48
    const/4 v3, 0x1

    move/from16 v0, v19

    if-eq v3, v0, :cond_21

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_21

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWirelessChargingNotice()V

    goto/16 :goto_c

    .line 696
    :cond_49
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03e6

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_d

    .line 699
    :cond_4a
    if-nez v19, :cond_22

    .line 700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerWarning()V

    goto/16 :goto_e

    .line 762
    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissHighVoltageChargerNotice()V

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->cancelHighVoltageChargerNotification()V

    goto/16 :goto_f

    .line 776
    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03ed

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    .line 779
    :cond_4d
    const/4 v3, 0x2

    if-ne v3, v15, :cond_1

    .line 780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissSlowChargerWarning()V

    goto/16 :goto_2

    .line 787
    .end local v5    # "bucket":I
    .end local v15    # "oldBatteryChargetype":I
    .end local v16    # "oldBatteryHealth":I
    .end local v17    # "oldBatteryHighVoltageCharger":Z
    .end local v18    # "oldBatteryLevel":I
    .end local v19    # "oldBatteryOnline":I
    .end local v21    # "oldBatteryStatus":I
    .end local v22    # "oldBucket":I
    .end local v23    # "oldCable":Z
    .end local v24    # "oldInvalidCharger":I
    .end local v25    # "oldPlugType":I
    .end local v26    # "oldPlugged":Z
    .end local v31    # "plugged":Z
    :cond_4e
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    # setter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static {v3, v6, v7}, Lcom/android/systemui/power/PowerUI;->access$1002(Lcom/android/systemui/power/PowerUI;J)J

    goto/16 :goto_2

    .line 789
    :cond_4f
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 790
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v6, -0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static {v3, v6, v7}, Lcom/android/systemui/power/PowerUI;->access$1002(Lcom/android/systemui/power/PowerUI;J)J

    goto/16 :goto_2

    .line 791
    :cond_50
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 792
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/power/PowerUI$Receiver;->updateSaverMode()V

    goto/16 :goto_2

    .line 793
    :cond_51
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 794
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "mode"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # invokes: Lcom/android/systemui/power/PowerUI;->setSaverMode(Z)V
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;Z)V

    goto/16 :goto_2

    .line 797
    :cond_52
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 799
    const/4 v3, 0x5

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_53

    .line 800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    .line 801
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify FullBatteryNotification again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    .line 806
    :cond_53
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    # invokes: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;I)I

    move-result v5

    .line 807
    .restart local v5    # "bucket":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-nez v3, :cond_54

    sget v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_54

    if-gez v5, :cond_54

    .line 810
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    .line 811
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify LowBatteryNotification again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_54
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_1

    .line 816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v3, :cond_55

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerWarning()V

    .line 818
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify incompatible charger again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerWarning()V

    goto/16 :goto_2

    .line 823
    :cond_55
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    if-ne v3, v4, :cond_1

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissSlowChargerWarning()V

    .line 825
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify slow charging again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showSlowChargerWarning()V

    goto/16 :goto_2

    .line 832
    .end local v5    # "bucket":I
    :cond_56
    const-string v3, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 833
    const-string v3, "PowerUI"

    const-string v4, "Face detection is failed before dimming"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->notifyFaceDetectionFailureNotification()V

    goto/16 :goto_2

    .line 837
    :cond_57
    const-string v3, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 838
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 839
    const-string v3, "PowerUI"

    const-string v4, "FTA mode ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 840
    :cond_58
    const-string v3, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 841
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 842
    const-string v3, "PowerUI"

    const-string v4, "FTA mode OFF"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 843
    :cond_59
    const-string v3, "com.samsung.pen.INSERT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 844
    const-string v3, "penInsert"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    .line 845
    .local v29, "penInsert":Z
    if-nez v29, :cond_1

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_1

    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    if-eqz v3, :cond_1

    .line 846
    const-string v3, "PowerUI"

    const-string v4, "S Pen is detached and wireless charging"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03e4

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 849
    .end local v29    # "penInsert":Z
    :cond_5a
    const-string v3, "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 850
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    .line 851
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    .line 852
    const-string v3, "PowerUI"

    const-string v4, "cover camera start"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 853
    :cond_5b
    const-string v3, "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 854
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    .line 855
    const-string v3, "PowerUI"

    const-string v4, "cover camera stop"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 859
    :cond_5c
    const-string v3, "android.intent.action.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 860
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_5f

    .line 861
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    move/from16 v27, v0

    .line 862
    .local v27, "oldSIOPLevel":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "check_cooldown_level"

    const/4 v6, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    .line 863
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIOP Level = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    move/from16 v0, v27

    if-eq v0, v3, :cond_1

    .line 866
    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-ne v3, v4, :cond_5d

    .line 867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const v4, 0xea60

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->runOverheatShutdownWarningTask(I)V

    goto/16 :goto_2

    .line 868
    :cond_5d
    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-ne v3, v4, :cond_5e

    .line 869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->runOverheatShutdownTask(I)V

    .line 870
    const-string v3, "PowerUI"

    const-string v4, "SIOP level is critical so shutdown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 871
    :cond_5e
    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-le v3, v4, :cond_1

    const/16 v3, 0x8

    move/from16 v0, v27

    if-gt v3, v0, :cond_1

    .line 872
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissOverheatShutdownWarning()V

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->cancelOverheatShutdownWarningTask()V

    .line 874
    const-string v3, "PowerUI"

    const-string v4, "SIOP level recovered from shutdown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 878
    .end local v27    # "oldSIOPLevel":I
    :cond_5f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    move/from16 v20, v0

    .line 879
    .local v20, "oldBatteryOverheatLevel":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "battery_overheat_level"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 880
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Battery overheat Level = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    move/from16 v0, v20

    if-eq v0, v3, :cond_1

    .line 883
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-ne v3, v4, :cond_60

    .line 884
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const v4, 0xea60

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->runOverheatShutdownWarningTask(I)V

    goto/16 :goto_2

    .line 885
    :cond_60
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-le v3, v4, :cond_1

    const/4 v3, 0x2

    move/from16 v0, v20

    if-gt v3, v0, :cond_1

    .line 886
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissOverheatShutdownWarning()V

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->cancelOverheatShutdownWarningTask()V

    .line 888
    const-string v3, "PowerUI"

    const-string v4, "Battery overheat level recovered from shutdown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 892
    .end local v20    # "oldBatteryOverheatLevel":I
    :cond_61
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "com.android.systemui.power_overheat_shutdown"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    .line 894
    .local v28, "overheatShutdownSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v28, :cond_62

    .line 895
    const-string v3, "OverheatShutdown"

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 896
    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 897
    .local v13, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "OverheatShutdown"

    const/4 v4, 0x0

    invoke-interface {v13, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 898
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.systemui.power.action.ACTION_CLEAR_SHUTDOWN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatShutdownNotice()V

    .line 904
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1302(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_2

    .line 907
    .end local v28    # "overheatShutdownSharedPrefs":Landroid/content/SharedPreferences;
    :cond_63
    const-string v3, "LOW_BATTERY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    goto/16 :goto_2

    .line 911
    :cond_64
    const-string v3, "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_WAKE_UP_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "cocktailbarWakeupState"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCocktailWakeUpState:Z

    .line 913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isCocktailLowBatteryShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mCocktailWakeUpState:Z

    if-nez v3, :cond_1

    .line 914
    const-string v3, "PowerUI"

    const-string v4, "CocktailWakeUpState has been changed. Remove low battery warning on cocktailbar!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateCocktailLowBatteryWarning(Z)V

    goto/16 :goto_2

    .line 920
    :cond_65
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown intent: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
