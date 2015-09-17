.class Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeCoverBackground()V
    .locals 2

    .prologue
    .line 43
    # getter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive : Wallpaper changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCurrentWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$102(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 45
    return-void
.end method

.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 1
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # setter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v0, p1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$202(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;

    .line 49
    return-void
.end method
