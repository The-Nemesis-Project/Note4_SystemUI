.class public Lcom/android/systemui/wifi/WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusReceiver.java"


# static fields
.field static final CSC_EAP_METHOD:Ljava/lang/String;

.field static final CSC_WIFI_ERRORCODE:Z

.field static final DEBUG:Z

.field static final ENABLE_WIFI_CONNECTION_TYPE:Z

.field static final EXTRA_INFO_TYPE:Ljava/lang/String; = "info_type"

.field static final EXTRA_SHOW_ONCE:Ljava/lang/String; = "show_dialog_once"

.field static final INFO_TYPE_DISABLE_HOTSPOT:I = 0x1

.field static final INFO_TYPE_DPM_HOTSPOT:I = 0x3

.field static final INFO_TYPE_DPM_WIFI:I = 0x2

.field static final INFO_TYPE_EAP_MESSAGE:I = 0x14

.field static final INFO_TYPE_EDM_HOTSPOT:I = 0xa

.field static final INFO_TYPE_UNABLE_TO_TURNON_IBSS:I = 0x6

.field static final INFO_TYPE_UNABLE_TO_TURNON_WIFI:I = 0x5

.field static final INFO_TYPE_UNABLE_TO_TURNON_WIFI_AT_AIRPLANE_MODE:I = 0x7

.field static final TAG:Ljava/lang/String; = "WifiStatusReceiver"

.field private static mShowOnceFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_WIFI_ERRORCODE:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_EAP_METHOD:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_EnableMenuConnectionType"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->ENABLE_WIFI_CONNECTION_TYPE:Z

    sput-boolean v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static enableToShowWifiPickerDialog(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStatusReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Want to show AP LIST:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-boolean p0, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    return-void
.end method

.method private static isFactoryMode()Z
    .locals 6

    const-string v1, "/efs/FactoryApp/factorymode"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/FactoryApp/factorymode"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :catch_0
    move-exception v0

    const-string v2, "OFF"

    const-string v3, "WifiStatusReceiver"

    const-string v4, "cannot open file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private isTablet(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private readSdcard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v3, 0x0

    const-string v6, "WifiStatusReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Download filename :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v4

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_4
    throw v6

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private startWifiPickerActivity(Landroid/content/Context;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x14800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WifiStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t start picker activity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-boolean v2, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStatusReceiver"

    const-string v3, "Call AP LIST dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "force_show_dialog"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "force_show_dialog"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "force_show_dialog"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 39

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    sget-boolean v33, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v33, :cond_0

    const-string v33, "WifiStatusReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "action: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v33, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3

    sget-boolean v33, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v33, :cond_1

    const-string v33, "WifiStatusReceiver"

    const-string v34, "ACTION CAME : android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v33, "force_show_dialog"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    const-string v33, "force_show_dialog"

    const/16 v34, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v33

    if-eqz v33, :cond_2

    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v33, "android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6

    const-string v33, "info_type"

    const/16 v34, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v33, 0x7f0d02c0

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_1
    const v33, 0x7f0d02c1

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_2
    const v33, 0x7f0d02c2

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_3
    const v33, 0x7f0d02c3

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_4
    const v33, 0x7f0d02c4

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_5
    const v33, 0x7f0d02c5

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_6
    const v33, 0x7f0d02c6

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_7
    sget-boolean v33, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_WIFI_ERRORCODE:Z

    if-eqz v33, :cond_5

    const-string v33, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v33, "WifiStatusReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "SHOW EAP SIM MESSAGE ACTION: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v18, :cond_2

    const-string v33, "General failure"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0d02c8

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    :cond_4
    const/16 v33, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    sget-object v33, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_EAP_METHOD:Ljava/lang/String;

    const-string v34, "AKA"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    const-string v33, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v33, "WifiStatusReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "onReceive, message of received: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v18, :cond_2

    goto/16 :goto_0

    :cond_6
    const-string v33, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_10

    const-string v33, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Landroid/net/NetworkInfo;

    const/4 v14, 0x0

    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v33

    if-eqz v33, :cond_2

    const/16 v33, 0x0

    sput-boolean v33, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    const-string v33, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/net/wifi/WifiManager;

    const-string v33, "wifiInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v30

    check-cast v30, Landroid/net/wifi/WifiInfo;

    if-eqz v30, :cond_c

    const-string v17, "<unknown ssid>"

    invoke-virtual/range {v31 .. v31}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_a

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_a

    const/4 v14, 0x1

    :cond_7
    :goto_1
    sget-boolean v33, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v33, :cond_8

    const-string v33, "WifiStatusReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getConnectionInfo.SSID : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v31 .. v31}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v33, "WifiStatusReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "wifiInfo : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    const/16 v33, 0xdc

    move/from16 v0, v33

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->what:I

    invoke-virtual/range {v31 .. v31}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v33

    if-eqz v33, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v33

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v34

    invoke-static/range {v34 .. v34}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_2

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v33

    if-nez v33, :cond_2

    const-string v33, "ro.build.scafe.cream"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v34, "white"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_9

    new-instance v8, Landroid/view/ContextThemeWrapper;

    const v33, 0x103012b

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-direct {v8, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 p1, v8

    :cond_9
    const-string v15, ""

    const/16 v33, 0x1

    move/from16 v0, v33

    if-eq v14, v0, :cond_f

    const/16 v33, 0x3

    move/from16 v0, v33

    if-ne v14, v0, :cond_d

    invoke-virtual/range {v31 .. v31}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/systemui/wifi/WifiStatusReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0a0044

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    const-string v34, "#ff"

    const-string v35, "#"

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v33, "#DEAD00"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0d02cb

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v15, v35, v36

    invoke-virtual/range {v33 .. v35}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v33, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {v31 .. v31}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b

    const/4 v14, 0x2

    goto/16 :goto_1

    :cond_b
    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_7

    const/4 v14, 0x3

    goto/16 :goto_1

    :cond_c
    const-string v33, "WifiStatusReceiver"

    const-string v34, "wifiinfo is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/systemui/wifi/WifiStatusReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_e
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0d02cb

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "<font color="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ">"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {v15}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "</font>"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-virtual/range {v33 .. v35}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v33

    const/16 v34, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v33

    const v34, 0x102000b

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    const/16 v33, 0x11

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    const-string v33, "WifiStatusReceiver"

    invoke-virtual {v10}, Ljava/util/UnknownFormatConversionException;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    const-string v33, "WifiStatusReceiver"

    const-string v34, "Ignore wifi connected toast. Because wifi is not enabled"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    const-string v33, "android.intent.action.BCS_REQUEST"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-nez v9, :cond_11

    const-string v33, "WifiStatusReceiver"

    const-string v34, "there is no extras"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    const-string v33, "command"

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    const-string v33, " "

    const-string v34, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :cond_12
    const-string v33, "AT+WIFIVALUE"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    const-string v33, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v31 .. v31}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v32

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_13

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    :cond_13
    new-instance v33, Landroid/content/Intent;

    const-string v34, "android.intent.action.BCS_RESPONSE"

    invoke-direct/range {v33 .. v34}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v34, "response"

    const-string v35, "ON"

    invoke-virtual/range {v33 .. v35}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_14
    new-instance v33, Landroid/content/Intent;

    const-string v34, "android.intent.action.BCS_RESPONSE"

    invoke-direct/range {v33 .. v34}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v34, "response"

    const-string v35, "OFF"

    invoke-virtual/range {v33 .. v35}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_15
    const-string v33, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_20

    sget-boolean v33, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    if-eqz v33, :cond_2

    const/16 v33, 0x0

    sput-boolean v33, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    const-string v33, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/net/wifi/WifiManager;

    const/4 v7, 0x0

    invoke-virtual/range {v31 .. v31}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v24

    invoke-virtual/range {v31 .. v31}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v33

    if-eqz v33, :cond_16

    invoke-virtual/range {v31 .. v31}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    :cond_16
    const/16 v26, 0x0

    if-nez v7, :cond_19

    const-string v33, "WifiStatusReceiver"

    const-string v34, "constructAccessPoints config is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_3
    const-string v33, "WifiStatusReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "SCAN_RESULTS_AVAILABLE_ACTION RECEIVED : mShowOnceFlag - true, ssid_count - "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v31 .. v31}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v33

    if-eqz v33, :cond_2

    if-nez v26, :cond_2

    sget-boolean v33, Lcom/android/systemui/wifi/WifiStatusReceiver;->ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v33, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "wifi_cmcc_manual"

    const/16 v35, 0x1

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_1f

    const/16 v29, 0x1

    :goto_4
    if-nez v29, :cond_2

    :cond_18
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_19
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1a
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_17

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    if-nez v6, :cond_1b

    const-string v33, "WifiStatusReceiver"

    const-string v34, "constructAccessPoints config is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_1b
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v33, v0

    if-nez v33, :cond_1e

    const-string v25, ""

    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1c

    add-int/lit8 v26, v26, 0x1

    :cond_1d
    if-eqz v26, :cond_1a

    goto/16 :goto_3

    :cond_1e
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/systemui/wifi/WifiStatusReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    goto :goto_6

    :cond_1f
    const/16 v29, 0x0

    goto :goto_4

    :cond_20
    const-string v33, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2

    const-string v33, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v31 .. v31}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v33

    if-eqz v33, :cond_2

    invoke-static {}, Lcom/android/systemui/wifi/WifiStatusReceiver;->isFactoryMode()Z

    move-result v33

    if-eqz v33, :cond_2

    const-string v33, "WifiStatusReceiver"

    const-string v34, "Factory Mode is ON. Turn off Wi-Fi"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0d02cc

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v33

    const/16 v34, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0xa -> :sswitch_6
        0x14 -> :sswitch_7
    .end sparse-switch
.end method
