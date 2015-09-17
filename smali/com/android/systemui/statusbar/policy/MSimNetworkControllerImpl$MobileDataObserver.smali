.class Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;
.super Landroid/database/ContentObserver;
.source "MSimNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 1

    .prologue
    .line 2934
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .line 2935
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2936
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 2939
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isMobileDataEnabled()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataEnabled:Z

    .line 2940
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 2941
    .local v1, "numPhones":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2942
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 2943
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 2941
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2945
    :cond_0
    return-void
.end method
