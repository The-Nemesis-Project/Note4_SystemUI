.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;
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
    .line 6684
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 6687
    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDiagnosticLogs:Z
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11400()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6688
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v4, "SETTINGSBUTTON"

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sendLogs(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)V

    .line 6692
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6693
    .local v2, "settingButtonIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeActivated:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-nez v3, :cond_1

    .line 6694
    const-string v1, "com.sec.android.easysettings"

    .line 6695
    .local v1, "easySettingsPackage":Ljava/lang/String;
    const-string v0, "com.sec.android.easysettings.EasySettingsHomeActivity"

    .line 6696
    .local v0, "easySettingsClass":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6697
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6701
    .end local v0    # "easySettingsClass":Ljava/lang/String;
    .end local v1    # "easySettingsPackage":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v4, 0x1

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleStartSettingsActivity(Landroid/content/Intent;Z)V
    invoke-static {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;Z)V

    .line 6702
    return-void

    .line 6699
    :cond_1
    const-string v3, "android.settings.SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method