.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 6705
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 6707
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6708
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6709
    .local v0, "settingIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6710
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.NotificationPanelSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6715
    :goto_0
    const-string v1, "direct_quickpanel"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6716
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleStartSettingsActivity(Landroid/content/Intent;Z)V
    invoke-static {v1, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;Z)V

    .line 6718
    .end local v0    # "settingIntent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 6712
    .restart local v0    # "settingIntent":Landroid/content/Intent;
    :cond_1
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$NotificationPanelMenuActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
