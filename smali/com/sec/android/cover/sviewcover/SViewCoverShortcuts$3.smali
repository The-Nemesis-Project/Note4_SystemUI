.class Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;
.super Ljava/lang/Object;
.source "SViewCoverShortcuts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    const v10, 0x10008000

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;

    iget v7, v3, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mType:I

    packed-switch v7, :pswitch_data_0

    :goto_0
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$1500(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    return-void

    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.samsung.contacts.action.SCOVER_FAVORITES"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    new-instance v9, Lcom/sec/android/cover/widget/PopupFrameView;

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$700(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sec/android/cover/widget/PopupFrameView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;
    invoke-static {v7, v9}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$602(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;Lcom/sec/android/cover/widget/PopupFrameView;)Lcom/sec/android/cover/widget/PopupFrameView;

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$600(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Lcom/sec/android/cover/widget/PopupFrameView;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$600(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Lcom/sec/android/cover/widget/PopupFrameView;

    move-result-object v7

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$800(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_popup_favorite:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v9, v8}, Lcom/sec/android/cover/widget/PopupFrameView;->show(Landroid/view/ViewGroup;Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$600(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Lcom/sec/android/cover/widget/PopupFrameView;

    move-result-object v7

    new-instance v8, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3$1;

    invoke-direct {v8, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/cover/widget/PopupFrameView;->setOnCloseListener(Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;)V

    :cond_0
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mSviewCover:Lcom/sec/android/cover/sviewcover/SViewCoverView;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$900(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Lcom/sec/android/cover/sviewcover/SViewCoverView;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setPendingIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    const-string v7, "SViewCoverShortcuts"

    const-string v8, "onClick : Launching favorite"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v7, "SViewCoverShortcuts"

    const-string v8, "onClick : Launching setting"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.sec.android.cover.sviewcover.SViewCoverSettingActivity.LAUNCH"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v7, "SViewCoverShortcuts"

    const-string v10, "onClick : Launching light"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchEnabled:Z
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v8

    :goto_1
    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchEnabled:Z
    invoke-static {v10, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$102(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;Z)Z

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;

    move-result-object v7

    const-string v11, "CustomFrequencyManagerService"

    invoke-virtual {v7, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/CustomFrequencyManager;

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->cfmsService:Landroid/os/CustomFrequencyManager;
    invoke-static {v10, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$1002(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;Landroid/os/CustomFrequencyManager;)Landroid/os/CustomFrequencyManager;

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$1200(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v10

    const-string v11, "torch_light"

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchEnabled:Z
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_2
    invoke-virtual {v10, v11, v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchEnabled:Z
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_FLASH_LIGHT_DEFAULT_BRIGHTNESS_LEVEL"

    invoke-virtual {v7, v10}, Lcom/samsung/android/feature/FloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result v4

    const-string v7, "SViewCoverShortcuts"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "torch level : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v4, :cond_4

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->cfmsService:Landroid/os/CustomFrequencyManager;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$1000(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/os/CustomFrequencyManager;

    move-result-object v7

    const-string v10, "CLOCK_SET_TORCH_LIGHT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v7, "android.intent.action.ACTION_ASSISTIVE_WIDGET_STATE_CHANGE"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "from"

    const-string v10, "quicktool"

    invoke-virtual {v5, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "value"

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchEnabled:Z
    invoke-static {v10}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Z

    move-result v10

    if-eqz v10, :cond_6

    :goto_4
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->updateTorchIcon()V
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchEnabled:Z
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "android.intent.action.ASSISTIVELIGHT_ON"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "SViewCoverShortcuts"

    const-string v8, "intent : ASSISTIVELIGHT_ON"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$1400(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->updateTorchIcon()V
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V

    goto/16 :goto_0

    :cond_2
    move v7, v9

    goto/16 :goto_1

    :cond_3
    move v7, v9

    goto/16 :goto_2

    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->cfmsService:Landroid/os/CustomFrequencyManager;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$1000(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/os/CustomFrequencyManager;

    move-result-object v7

    const-string v10, "CLOCK_SET_TORCH_LIGHT"

    const-string v11, "1"

    invoke-virtual {v7, v10, v11}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v7

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->cfmsService:Landroid/os/CustomFrequencyManager;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$1000(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/os/CustomFrequencyManager;

    move-result-object v7

    const-string v10, "CLOCK_SET_TORCH_LIGHT"

    const-string v11, "0"

    invoke-virtual {v7, v10, v11}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_6
    move v8, v9

    goto :goto_4

    :cond_7
    const-string v7, "android.intent.action.ASSISTIVELIGHT_OFF"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "SViewCoverShortcuts"

    const-string v8, "intent : ASSISTIVELIGHT_OFF"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_3
    const-string v7, "SViewCoverShortcuts"

    const-string v8, "onClick : Launching heart"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.sec.android.app.shealth"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v7, "com.sec.android.app.shealth"

    const-string v8, "com.sec.android.app.shealth.heartrate.scover.HeartRateScoverActivity"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v7, 0x10008000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_4
    const-string v7, "SViewCoverShortcuts"

    const-string v8, "onClick : Launching camera"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.sec.android.app.camera"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/high16 v7, 0x14000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v7, "com.sec.android.app.camera"

    const-string v8, "com.sec.android.app.camera.Camera"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "covermode"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_5
    const-string v7, "SViewCoverShortcuts"

    const-string v8, "onClick : Launching memo"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.samsung.android.covermemo"

    const-string v9, "com.samsung.android.covermemo.CoverMemo_Activity"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
