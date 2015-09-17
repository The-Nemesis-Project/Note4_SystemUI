.class final Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickRemoveAllButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/recents/RecentsActivity;
    .param p2, "x1"    # Lcom/android/systemui/recents/RecentsActivity$1;

    .prologue
    .line 1073
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1078
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    if-nez v1, :cond_0

    .line 1079
    const-string v1, "StatusBar_Recents"

    const-string v2, "OnClickRemoveAllButton: return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :goto_0
    return-void

    .line 1082
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1084
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, -0x1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 1113
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)Z

    goto :goto_0
.end method
