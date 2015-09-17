.class Lcom/android/systemui/statusbar/BaseStatusBar$4;
.super Landroid/content/BroadcastReceiver;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 888
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 890
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 891
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$400(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 893
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v6, v6, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is in the house"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateLockscreenNotificationSetting()V

    .line 896
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->userSwitched(I)V

    .line 898
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 899
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->FlipFontSwitched()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$500(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 904
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 905
    .local v2, "id":I
    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 906
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->registerPersonaObserver(I)V
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$600(Lcom/android/systemui/statusbar/BaseStatusBar;I)V

    .line 907
    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 908
    const-string v4, "KnoxNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add a peronaObserver for newly added user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$400(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    goto :goto_0

    .line 913
    .end local v2    # "id":I
    :cond_3
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 915
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$200(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 916
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateLockscreenNotificationSetting()V

    .line 917
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0

    .line 918
    :cond_4
    const-string v4, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.android.systemui.statusbar.banner_action_setup"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 919
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 921
    .local v3, "noMan":Landroid/app/NotificationManager;
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 923
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_note_about_notification_hiding"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 925
    const-string v4, "com.android.systemui.statusbar.banner_action_setup"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 926
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v5, 0x1

    invoke-virtual {v4, v7, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 928
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.settings.ACTION_APP_NOTIFICATION_REDACTION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 931
    :catch_0
    move-exception v1

    .line 932
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "StatusBar"

    const-string v5, "unable to start activity - ACTION_APP_NOTIFICATION_REDACTION "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 936
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "noMan":Landroid/app/NotificationManager;
    :cond_6
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 937
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnLongPressHome:Z

    if-nez v4, :cond_0

    .line 938
    const-string v4, "StatusBar"

    const-string v5, "onReceive : Intent.ACTION_SCREEN_OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v4}, Lcom/android/systemui/RecentsComponent;->dismissHelpPopup()V

    goto/16 :goto_0

    .line 943
    :cond_7
    const-string v4, "com.sec.knox.container.action.launchinfo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 944
    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$000()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 945
    const-string v4, "KnoxNotification"

    const-string v5, "onReceive() : Received INTENT_ACTION_LAUNCH_INFO"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const-string v5, "userId"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 947
    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$700()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 948
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto/16 :goto_0
.end method
