.class Lcom/sec/android/cover/custom/MontblancCoverController$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "MontblancCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/custom/MontblancCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/custom/MontblancCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/custom/MontblancCoverController;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sec/android/cover/custom/MontblancCoverController$1;->this$0:Lcom/sec/android/cover/custom/MontblancCoverController;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 28
    if-eqz p1, :cond_0

    const-string v0, "com.sec.android.app.montblanc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/sec/android/cover/custom/MontblancCoverController$1;->this$0:Lcom/sec/android/cover/custom/MontblancCoverController;

    # getter for: Lcom/sec/android/cover/custom/MontblancCoverController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/cover/custom/MontblancCoverController;->access$000(Lcom/sec/android/cover/custom/MontblancCoverController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sec.android.app.montblanc removed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/sec/android/cover/custom/MontblancCoverController$1;->this$0:Lcom/sec/android/cover/custom/MontblancCoverController;

    # getter for: Lcom/sec/android/cover/custom/MontblancCoverController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/custom/MontblancCoverController;->access$100(Lcom/sec/android/cover/custom/MontblancCoverController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v0

    const-string v1, "s_view_cover_montblanc_first_attached"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    .line 32
    iget-object v0, p0, Lcom/sec/android/cover/custom/MontblancCoverController$1;->this$0:Lcom/sec/android/cover/custom/MontblancCoverController;

    # getter for: Lcom/sec/android/cover/custom/MontblancCoverController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/custom/MontblancCoverController;->access$100(Lcom/sec/android/cover/custom/MontblancCoverController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v0

    const-string v1, "lockscreen_montblanc_wallpaper"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    .line 35
    :cond_0
    return-void
.end method
