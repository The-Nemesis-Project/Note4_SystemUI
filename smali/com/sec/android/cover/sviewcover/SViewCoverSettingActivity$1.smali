.class Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity$1;
.super Ljava/lang/Object;
.source "SViewCoverSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->initValues()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 96
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.cover.sviewcover.SViewCoverStylizedClockSettingsActivity.LAUNCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "mintent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v3, "SViewCoverSettingActivity"

    const-string v4, "ActivityNotFoundException !!"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v2    # "mintent":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.cover.sviewcover.SViewCoverWallpaperSettingActivity.LAUNCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    .restart local v0    # "exception":Landroid/content/ActivityNotFoundException;
    const-string v3, "SViewCoverSettingActivity"

    const-string v4, "ActivityNotFoundException !!"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 116
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.SelectItemDisplay"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 122
    :catch_2
    move-exception v0

    .line 123
    .restart local v0    # "exception":Landroid/content/ActivityNotFoundException;
    const-string v3, "SViewCoverSettingActivity"

    const-string v4, "ActivityNotFoundException !!"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
